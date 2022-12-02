import argparse
import logging
import configparser
import sys
import os
from datetime import datetime

import sqlalchemy as db
import sqlalchemy.exc

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

__version__ = '0.1'

class Database(object):
    engine = None
    connection = None
    metadata = None
    rates_table = None

    def __new__(cls, db_name):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Database, cls).__new__(cls)
            cls.instance.init(db_name)
        return cls.instance

    def init(self, db_name: str):
        self.engine = db.create_engine(f'sqlite:///{db_name}.db')
        self.connection = self.engine.connect()
        self.metadata = db.MetaData()
        self.rates_table = db.Table('inflation_rates', self.metadata, 
                db.Column('inflation_country', db.String(50), primary_key=True),
                db.Column('inflation_type', db.String(25), primary_key=True),
                db.Column('inflation_mounth', db.String(50), primary_key=True),
                db.Column('inflation_value', db.Float, nullable=False))
        self.metadata.create_all(self.engine, checkfirst=True)

    def save(self, country: str, type:str, mounth: str, value: float):
        query = db.insert(self.rates_table)
        values = [{ 'inflation_country': country, 'inflation_type': type, 'inflation_mounth': mounth, 'inflation_value': value }]
        try:
            result = self.connection.execute(query, values)
            return result
        except sqlalchemy.exc.IntegrityError:
            logging.error('Already inserted')
            return None


def loadLog(log_file: str):
    file_name = os.path.dirname(os.path.abspath(__file__)) + os.sep + 'logs' + os.sep + log_file 
    logging.basicConfig(filename=file_name, encoding='utf-8', level=logging.INFO)


def parse_arguments() -> dict:
    parser = argparse.ArgumentParser(
        description=''
    )
    parser.add_argument('-v', '--version', action='version', version='%(prog)s' + __version__, help='Show version')
    parser.add_argument('config', type=str, help='Path to the configuration file')
    args = parser.parse_args()
    return vars(args)


def read_config(path: str) -> dict:
    # check if file exists
    config = configparser.ConfigParser()
    config.read(path)
    return config


def stdin_show(date: str, value: float) -> None:
    print(f"Date:\t\t{date}")
    print(f"Percentage:\t{value} %")


def sqlite_store(db_name: str, country: str, type: str, date: str, value: float) -> None:
    database = Database(db_name)
    database.save(country, type, date, value)


def control_storage(config: dict, date: str, value: float) -> None:
    try:
        type = config["Storage"]["type"]
        if type == "stdin":
            logging.info(f"Store to STDIN")
            stdin_show(date, value)
        elif type == "sqlite":
            db_name = config["Storage"]["database"]
            logging.info(f"Store to Sqlite: {db_name}")
            country = config["Source"]["inflation_country"]
            type = config["Source"]["inflation_type"]
            sqlite_store(db_name, country, type, str(date), value)
    except:
        logging.error("Key not found...")
        sys.exit(1)


def load_driver():
    options = Options()
    options.binary_location = '/bin/google-chrome'
    options.headless = True

    DRIVER_PATH = '/home/rui/selenium_drivers/chromedriver'

    service =  Service(executable_path=DRIVER_PATH)

    driver = webdriver.Chrome(options=options, service=service)

    return driver


def webscrap(url: str, xpath: str) -> tuple:
    driver = load_driver()

    logging.info(f"Getting URL: {url}")
    driver.get(url)

    line = driver.find_elements(By.XPATH, xpath + "/td")
    #cells = line.find_elements(By.XPATH, "/td")
    if len(line) == 2:
        data = (line[0].accessible_name.strip(), line[1].accessible_name.strip().strip()[:-2])
    return data[0], data[1]


def proccess_values(date: str, value: str):
    date_value = datetime.strptime(date, "%B %Y").strftime("%b %Y")
    percentage_value = float(value)
    logging.info(f"Date: {date} :: Value: {value}%")
    return date_value, percentage_value


def main() -> None:
    args = parse_arguments()
    configs = read_config(args['config'])
    loadLog(configs["Logging"]["log_file"])
    logging.info("Starting...")
    date, value = webscrap(configs['Source']['url'], configs['Source']['xpath'])
    date, value = proccess_values(date, value)
    control_storage(configs, date, value)


if __name__ == '__main__':
    main()
