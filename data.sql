CREATE TABLE IF NOT EXISTS Euribor (
    day DATE,
    type    TEXT,
    value   DECIMAL(2,3) NOT NULL,
    PRIMARY KEY (day,type)
    );

--1week
INSERT INTO Euribor(day,type,value) VALUES ('20220921', '1 week', '0.671');
INSERT INTO Euribor(day,type,value) VALUES ('20220920', '1 week', '0.658');
INSERT INTO Euribor(day,type,value) VALUES ('20220919', '1 week', '0.655');
INSERT INTO Euribor(day,type,value) VALUES ('20220916', '1 week', '0.646');
INSERT INTO Euribor(day,type,value) VALUES ('20220915', '1 week', '0.650');
INSERT INTO Euribor(day,type,value) VALUES ('20220914', '1 week', '0.608');
INSERT INTO Euribor(day,type,value) VALUES ('20220913', '1 week', '0.542');
INSERT INTO Euribor(day,type,value) VALUES ('20220912', '1 week', '0.374');
INSERT INTO Euribor(day,type,value) VALUES ('20220909', '1 week', '0.173');
INSERT INTO Euribor(day,type,value) VALUES ('20220908', '1 week', '0.043');
INSERT INTO Euribor(day,type,value) VALUES ('20220907', '1 week', '0.005');
INSERT INTO Euribor(day,type,value) VALUES ('20220906', '1 week', '-0.060');

--1 month
INSERT INTO Euribor(day,type,value) VALUES ('20220921', '1 month', '0.708');
INSERT INTO Euribor(day,type,value) VALUES ('20220920', '1 month', '0.700');
INSERT INTO Euribor(day,type,value) VALUES ('20220919', '1 month', '0.692');
INSERT INTO Euribor(day,type,value) VALUES ('20220916', '1 month', '0.678');
INSERT INTO Euribor(day,type,value) VALUES ('20220915', '1 month', '0.680');
INSERT INTO Euribor(day,type,value) VALUES ('20220914', '1 month', '0.669');
INSERT INTO Euribor(day,type,value) VALUES ('20220913', '1 month', '0.619');
INSERT INTO Euribor(day,type,value) VALUES ('20220912', '1 month', '0.586');
INSERT INTO Euribor(day,type,value) VALUES ('20220909', '1 month', '0.480');
INSERT INTO Euribor(day,type,value) VALUES ('20220908', '1 month', '0.381');
INSERT INTO Euribor(day,type,value) VALUES ('20220907', '1 month', '0.394');
INSERT INTO Euribor(day,type,value) VALUES ('20220906', '1 month', '0.368');

--3 month
INSERT INTO Euribor(day,type,value) VALUES ('20220921', '3 month', '1.118');
INSERT INTO Euribor(day,type,value) VALUES ('20220920', '3 month', '1.100');
INSERT INTO Euribor(day,type,value) VALUES ('20220919', '3 month', '1.066');
INSERT INTO Euribor(day,type,value) VALUES ('20220916', '3 month', '1.063');
INSERT INTO Euribor(day,type,value) VALUES ('20220915', '3 month', '1.030');
INSERT INTO Euribor(day,type,value) VALUES ('20220914', '3 month', '1.013');
INSERT INTO Euribor(day,type,value) VALUES ('20220913', '3 month', '1.000');
INSERT INTO Euribor(day,type,value) VALUES ('20220912', '3 month', '0.988');
INSERT INTO Euribor(day,type,value) VALUES ('20220909', '3 month', '0.934');
INSERT INTO Euribor(day,type,value) VALUES ('20220908', '3 month', '0.836');
INSERT INTO Euribor(day,type,value) VALUES ('20220907', '3 month', '0.822');
INSERT INTO Euribor(day,type,value) VALUES ('20220906', '3 month', '0.816');

--6 month
INSERT INTO Euribor(day,type,value) VALUES ('20220921', '6 month', '1.766');
INSERT INTO Euribor(day,type,value) VALUES ('20220920', '6 month', '1.740');
INSERT INTO Euribor(day,type,value) VALUES ('20220919', '6 month', '1.737');
INSERT INTO Euribor(day,type,value) VALUES ('20220916', '6 month', '1.672');
INSERT INTO Euribor(day,type,value) VALUES ('20220915', '6 month', '1.608');
INSERT INTO Euribor(day,type,value) VALUES ('20220914', '6 month', '1.548');
INSERT INTO Euribor(day,type,value) VALUES ('20220913', '6 month', '1.538');
INSERT INTO Euribor(day,type,value) VALUES ('20220912', '6 month', '1.494');
INSERT INTO Euribor(day,type,value) VALUES ('20220909', '6 month', '1.442');
INSERT INTO Euribor(day,type,value) VALUES ('20220908', '6 month', '1.354');
INSERT INTO Euribor(day,type,value) VALUES ('20220907', '6 month', '1.363');
INSERT INTO Euribor(day,type,value) VALUES ('20220906', '6 month', '1.337');

--12 month
INSERT INTO Euribor(day,type,value) VALUES ('20220921', '12 month', '2.416');
INSERT INTO Euribor(day,type,value) VALUES ('20220920', '12 month', '2.338');
INSERT INTO Euribor(day,type,value) VALUES ('20220919', '12 month', '2.295');
INSERT INTO Euribor(day,type,value) VALUES ('20220916', '12 month', '2.263');
INSERT INTO Euribor(day,type,value) VALUES ('20220915', '12 month', '2.223');
INSERT INTO Euribor(day,type,value) VALUES ('20220914', '12 month', '2.156');
INSERT INTO Euribor(day,type,value) VALUES ('20220913', '12 month', '2.102');
INSERT INTO Euribor(day,type,value) VALUES ('20220912', '12 month', '2.075');
INSERT INTO Euribor(day,type,value) VALUES ('20220909', '12 month', '2.015');
INSERT INTO Euribor(day,type,value) VALUES ('20220908', '12 month', '1.903');
INSERT INTO Euribor(day,type,value) VALUES ('20220907', '12 month', '1.913');
INSERT INTO Euribor(day,type,value) VALUES ('20220906', '12 month', '1.921');

--ESTER (overnight rate)
CREATE TABLE IF NOT EXISTS ESTER (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3)    NOT NULL
    );

INSERT INTO Ester(day,value) VALUES ('20220921', '0.661');
INSERT INTO Ester(day,value) VALUES ('20220920', '0.659');
INSERT INTO Ester(day,value) VALUES ('20220919', '0.657');
INSERT INTO Ester(day,value) VALUES ('20220916', '0.660');
INSERT INTO Ester(day,value) VALUES ('20220915', '0.660');
INSERT INTO Ester(day,value) VALUES ('20220914', '0.662');
INSERT INTO Ester(day,value) VALUES ('20220913', '-0.083');
INSERT INTO Ester(day,value) VALUES ('20220912', '-0.086');
INSERT INTO Ester(day,value) VALUES ('20220909', '-0.085');
INSERT INTO Ester(day,value) VALUES ('20220908', '-0.086');
INSERT INTO Ester(day,value) VALUES ('20220907', '-0.076');
INSERT INTO Ester(day,value) VALUES ('20220906', '-0.085');

--USD LIBOR - 1Day
CREATE TABLE IF NOT EXISTS LIBOR (
    day DATE,
    type TEXT,
    currency    TEXT,
    value DECIMAL(2,5)  NOT NULL,
    PRIMARY KEY(day,type,currency)
    );

INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '1 day', 'USD', '2.31971');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '1 day', 'USD', '2.31543');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '1 day', 'USD', '2.31557');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '1 day', 'USD', '2.32100');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '1 day', 'USD', '2.32214');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '1 day', 'USD', '2.31143');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '1 day', 'USD', '2.31771');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '1 day', 'USD', '2.31457');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '1 day', 'USD', '2.31071');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '1 day', 'USD', '2.31243');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '1 day', 'USD', '2.31100');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220902', '1 day', 'USD', '2.31471');

--USD LIBOR - 1 Month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '1 month', 'USD', '3.05900');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '1 month', 'USD', '3.05186');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '1 month', 'USD', '3.01386');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '1 month', 'USD', '2.99343');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '1 month', 'USD', '2.93914');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '1 month', 'USD', '2.81771');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '1 month', 'USD', '2.78343');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '1 month', 'USD', '2.77314');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '1 month', 'USD', '2.75643');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '1 month', 'USD', '2.70457');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '1 month', 'USD', '2.68486');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '1 month', 'USD', '2.64286');

--USD LIBOR - 3 Month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '3 month', 'USD', '3.60386');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '3 month', 'USD', '3.60171');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '3 month', 'USD', '3.56529');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '3 month', 'USD', '3.52714');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '3 month', 'USD', '3.48343');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '3 month', 'USD', '3.29257');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '3 month', 'USD', '3.27014');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '3 month', 'USD', '3.24543');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '3 month', 'USD', '3.23571');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '3 month', 'USD', '3.19400');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '3 month', 'USD', '3.16786');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '3 month', 'USD', '3.14486');

--USD LIBOR - 6 Month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '6 month', 'USD', '4.12400');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '6 month', 'USD', '4.17514');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '6 month', 'USD', '4.12329');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '6 month', 'USD', '4.06300');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '6 month', 'USD', '4.01014');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '6 month', 'USD', '3.83686');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '6 month', 'USD', '3.80643');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '6 month', 'USD', '3.81114');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '6 month', 'USD', '3.77986');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '6 month', 'USD', '3.75214');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '6 month', 'USD', '3.71029');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '6 month', 'USD', '3.68986');

--USD LIBOR - 12 Month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '12 month', 'USD', '4.68243');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '12 month', 'USD', '4.69943');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '12 month', 'USD', '4.67214');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '12 month', 'USD', '4.62143');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '12 month', 'USD', '4.53214');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '12 month', 'USD', '4.23900');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '12 month', 'USD', '4.24557');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '12 month', 'USD', '4.18900');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '12 month', 'USD', '4.20300');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '12 month', 'USD', '4.18886');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '12 month', 'USD', '4.17057');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '12 month', 'USD', '4.14871');

--GBP LIBOR - 1 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '1 month', 'GBP', '2.35700');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '1 month', 'GBP', '2.34030');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '1 month', 'GBP', '2.24470');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '1 month', 'GBP', '2.24210');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '1 month', 'GBP', '2.21750');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '1 month', 'GBP', '2.19640');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '1 month', 'GBP', '2.15210');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '1 month', 'GBP', '2.23800');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '1 month', 'GBP', '2.22710');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '1 month', 'GBP', '2.21270');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '1 month', 'GBP', '2.19770');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '1 month', 'GBP', '2.18130');

--GBP LIBOR - 3 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '3 month', 'GBP', '2.88220');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '3 month', 'GBP', '2.86590');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '3 month', 'GBP', '2.75570');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '3 month', 'GBP', '2.74280');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '3 month', 'GBP', '2.74420');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '3 month', 'GBP', '2.72490');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '3 month', 'GBP', '2.68270');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '3 month', 'GBP', '2.67420');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '3 month', 'GBP', '2.67470');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '3 month', 'GBP', '2.68820');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '3 month', 'GBP', '2.67790');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '3 month', 'GBP', '2.67440');

--GBP LIBOR - 6 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '6 month', 'GBP', '3.65590');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '6 month', 'GBP', '3.64950');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '6 month', 'GBP', '3.51810');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '6 month', 'GBP', '3.50520');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '6 month', 'GBP', '3.50390');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '6 month', 'GBP', '3.45910');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '6 month', 'GBP', '3.41400');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '6 month', 'GBP', '3.36840');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '6 month', 'GBP', '3.36960');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '6 month', 'GBP', '3.39920');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '6 month', 'GBP', '3.37970');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '6 month', 'GBP', '3.40880');

--JPY LIBOR - 1 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '1 month', 'JPY','-0.04632');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '1 month', 'JPY','-0.04632');

--JPY LIBOR - 3 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '3 month', 'JPY', '-0.02001');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '3 month', 'JPY', '-0.01617');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '3 month', 'JPY', '-0.01617');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '3 month', 'JPY', '-0.01507');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '3 month', 'JPY', '-0.01490');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '3 month', 'JPY', '-0.01507');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '3 month', 'JPY', '-0.01384');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '3 month', 'JPY', '-0.01384');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '3 month', 'JPY', '-0.01384');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '3 month', 'JPY', '-0.01559');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '3 month', 'JPY', '-0.01877');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '3 month', 'JPY', '-0.01840');

--JPY LIBOR - 6 month
INSERT INTO Libor(day,type,currency,value) VALUES ('20220921', '6 month', 'JPY', '0.05254');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220920', '6 month', 'JPY', '0.05069');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220916', '6 month', 'JPY', '0.05069');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220915', '6 month', 'JPY', '0.05069');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220914', '6 month', 'JPY', '0.04699');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220913', '6 month', 'JPY', '0.04922');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220912', '6 month', 'JPY', '0.04330');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220909', '6 month', 'JPY', '0.04330');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220908', '6 month', 'JPY', '0.04330');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220907', '6 month', 'JPY', '0.04330');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220906', '6 month', 'JPY', '0.04330');
INSERT INTO Libor(day,type,currency,value) VALUES ('20220905', '6 month', 'JPY', '0.04330');

--SONIA
CREATE TABLE IF NOT EXISTS SONIA (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,4) NOT NULL
    );

INSERT INTO SONIA(day,value) VALUES ('20220920', '1.6910');
INSERT INTO SONIA(day,value) VALUES ('20220916', '1.6906');
INSERT INTO SONIA(day,value) VALUES ('20220915', '1.6910');
INSERT INTO SONIA(day,value) VALUES ('20220914', '1.6914');
INSERT INTO SONIA(day,value) VALUES ('20220913', '1.6911');
INSERT INTO SONIA(day,value) VALUES ('20220912', '1.6911');
INSERT INTO SONIA(day,value) VALUES ('20220909', '1.6919');
INSERT INTO SONIA(day,value) VALUES ('20220908', '1.6903');
INSERT INTO SONIA(day,value) VALUES ('20220907', '1.6907');
INSERT INTO SONIA(day,value) VALUES ('20220906', '1.6913');
INSERT INTO SONIA(day,value) VALUES ('20220905', '1.6907');
INSERT INTO SONIA(day,value) VALUES ('20220902', '1.6911');

--SARON
CREATE TABLE IF NOT EXISTS SARON (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,4) NOT NULL
    );

INSERT INTO SARON(day,value) VALUES ('20220920', '-0.215364');
INSERT INTO SARON(day,value) VALUES ('20220919', '-0.213773');
INSERT INTO SARON(day,value) VALUES ('20220916', '-0.213174');
INSERT INTO SARON(day,value) VALUES ('20220915', '-0.211355');
INSERT INTO SARON(day,value) VALUES ('20220914', '-0.212813');
INSERT INTO SARON(day,value) VALUES ('20220913', '-0.213529');
INSERT INTO SARON(day,value) VALUES ('20220912', '-0.213135');
INSERT INTO SARON(day,value) VALUES ('20220909', '-0.212704');
INSERT INTO SARON(day,value) VALUES ('20220908', '-0.212270');
INSERT INTO SARON(day,value) VALUES ('20220907', '-0.211577');
INSERT INTO SARON(day,value) VALUES ('20220906', '-0.210622');
INSERT INTO SARON(day,value) VALUES ('20220905', '-0.209949');

--SOFR
CREATE TABLE IF NOT EXISTS SOFR (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,2) NOT NULL
    );

INSERT INTO SOFR(day,value) VALUES ('20220920', '2.26');
INSERT INTO SOFR(day,value) VALUES ('20220919', '2.27');
INSERT INTO SOFR(day,value) VALUES ('20220916', '2.27');
INSERT INTO SOFR(day,value) VALUES ('20220915', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220914', '2.27');
INSERT INTO SOFR(day,value) VALUES ('20220913', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220912', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220909', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220908', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220907', '2.28');
INSERT INTO SOFR(day,value) VALUES ('20220906', '2.29');
INSERT INTO SOFR(day,value) VALUES ('20220902', '2.29');

--TONAR
CREATE TABLE IF NOT EXISTS TONAR (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,3)    NOT NULL
    );

INSERT INTO TONAR(day,value) VALUES ('20220920', '-0.052');
INSERT INTO TONAR(day,value) VALUES ('20220916', '-0.053');
INSERT INTO TONAR(day,value) VALUES ('20220915', '-0.032');
INSERT INTO TONAR(day,value) VALUES ('20220914', '-0.033');
INSERT INTO TONAR(day,value) VALUES ('20220913', '-0.033');
INSERT INTO TONAR(day,value) VALUES ('20220912', '-0.032');
INSERT INTO TONAR(day,value) VALUES ('20220909', '-0.030');
INSERT INTO TONAR(day,value) VALUES ('20220908', '-0.037');
INSERT INTO TONAR(day,value) VALUES ('20220907', '-0.041');
INSERT INTO TONAR(day,value) VALUES ('20220906', '-0.043');
INSERT INTO TONAR(day,value) VALUES ('20220905', '-0.047');
INSERT INTO TONAR(day,value) VALUES ('20220902', '-0.048');

--FED
CREATE TABLE IF NOT EXISTS FED (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO FED(day,value) VALUES ('20220921','3.250');
INSERT INTO FED(day,value) VALUES ('20220728','2.500');
INSERT INTO FED(day,value) VALUES ('20220615','1.750');
INSERT INTO FED(day,value) VALUES ('20220504','1.000');
INSERT INTO FED(day,value) VALUES ('20220316','0.500');
INSERT INTO FED(day,value) VALUES ('20200315','0.250');
INSERT INTO FED(day,value) VALUES ('20200303','1.250');
INSERT INTO FED(day,value) VALUES ('20191030','1.750');
INSERT INTO FED(day,value) VALUES ('20190918','2.000');
INSERT INTO FED(day,value) VALUES ('20190731','2.250');

--RBA
CREATE TABLE IF NOT EXISTS RBA (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO RBA(day,value) VALUES ('20220906','2.350');
INSERT INTO RBA(day,value) VALUES ('20220802','1.850');
INSERT INTO RBA(day,value) VALUES ('20220706','1.350');
INSERT INTO RBA(day,value) VALUES ('20220607','0.850');
INSERT INTO RBA(day,value) VALUES ('20220503','0.350');
INSERT INTO RBA(day,value) VALUES ('20201103','0.100');
INSERT INTO RBA(day,value) VALUES ('20200319','0.250');
INSERT INTO RBA(day,value) VALUES ('20200303','0.500');
INSERT INTO RBA(day,value) VALUES ('20191001','0.750');
INSERT INTO RBA(day,value) VALUES ('20190702','1.000');

--BACEN
CREATE TABLE IF NOT EXISTS BACEN (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO BACEN(day,value) VALUES ('20220804','13.750');
INSERT INTO BACEN(day,value) VALUES ('20220615','13.250');
INSERT INTO BACEN(day,value) VALUES ('20220504','12.750');
INSERT INTO BACEN(day,value) VALUES ('20220316','11.750');
INSERT INTO BACEN(day,value) VALUES ('20220202','10.750');
INSERT INTO BACEN(day,value) VALUES ('20211209','9.250');
INSERT INTO BACEN(day,value) VALUES ('20211027','7.750');
INSERT INTO BACEN(day,value) VALUES ('20210922','6.250');
INSERT INTO BACEN(day,value) VALUES ('20210804','5.250');
INSERT INTO BACEN(day,value) VALUES ('20210616','4.250');

--BOE
CREATE TABLE IF NOT EXISTS BOE (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO BOE(day,value) VALUES ('20220922','2.250');
INSERT INTO BOE(day,value) VALUES ('20220804','1.750');
INSERT INTO BOE(day,value) VALUES ('20220616','1.250');
INSERT INTO BOE(day,value) VALUES ('20220505','1.000');
INSERT INTO BOE(day,value) VALUES ('20220317','0.750');
INSERT INTO BOE(day,value) VALUES ('20220203','0.500');
INSERT INTO BOE(day,value) VALUES ('20211216','0.250');
INSERT INTO BOE(day,value) VALUES ('20200319','0.100');
INSERT INTO BOE(day,value) VALUES ('20200311','0.250');
INSERT INTO BOE(day,value) VALUES ('20180802','0.750');

--BOC
CREATE TABLE IF NOT EXISTS BOC (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO BOC(day,value) VALUES ('20220907','3.250');
INSERT INTO BOC(day,value) VALUES ('20220713','2.500');
INSERT INTO BOC(day,value) VALUES ('20220601','1.500');
INSERT INTO BOC(day,value) VALUES ('20220413','1.000');
INSERT INTO BOC(day,value) VALUES ('20220302','0.500');
INSERT INTO BOC(day,value) VALUES ('20200327','0.250');
INSERT INTO BOC(day,value) VALUES ('20200313','0.750');
INSERT INTO BOC(day,value) VALUES ('20200304','1.25');
INSERT INTO BOC(day,value) VALUES ('20181024','1.750');
INSERT INTO BOC(day,value) VALUES ('20180711','1.500');

--PBC
CREATE TABLE IF NOT EXISTS PBC (
    day DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO PBC(day,value) VALUES ('20220822','3.650');
INSERT INTO PBC(day,value) VALUES ('20220120','3.700');
INSERT INTO PBC(day,value) VALUES ('20211220','3.800');
INSERT INTO PBC(day,value) VALUES ('20200420','3.850');
INSERT INTO PBC(day,value) VALUES ('20200220','4.050');
INSERT INTO PBC(day,value) VALUES ('20191120','4.150');
INSERT INTO PBC(day,value) VALUES ('20190920','4.200');
INSERT INTO PBC(day,value) VALUES ('20190820','4.250');
INSERT INTO PBC(day,value) VALUES ('20151023','4.350');
INSERT INTO PBC(day,value) VALUES ('20150825','4.600');

--ECB
CREATE TABLE IF NOT EXISTS ECB (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO ECB(day,value) VALUES ('20220908','1.250');
INSERT INTO ECB(day,value) VALUES ('20220721','0.500');
INSERT INTO ECB(day,value) VALUES ('20160310','0.000');
INSERT INTO ECB(day,value) VALUES ('20140904','0.050');
INSERT INTO ECB(day,value) VALUES ('20140605','0.150');
INSERT INTO ECB(day,value) VALUES ('20131107','0.250');
INSERT INTO ECB(day,value) VALUES ('20130502','0.500');
INSERT INTO ECB(day,value) VALUES ('20120705','0.750');
INSERT INTO ECB(day,value) VALUES ('20111208','1.000');
INSERT INTO ECB(day,value) VALUES ('20111103','1.250');

--BOJ
CREATE TABLE IF NOT EXISTS BOJ (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO BOJ(day,value) VALUES ('20160201','-0.100');
INSERT INTO BOJ(day,value) VALUES ('20101005','0.000');
INSERT INTO BOJ(day,value) VALUES ('20081219','0.100');
INSERT INTO BOJ(day,value) VALUES ('20081031','0.300');
INSERT INTO BOJ(day,value) VALUES ('20070221','0.500');
INSERT INTO BOJ(day,value) VALUES ('20060714','0.250');
INSERT INTO BOJ(day,value) VALUES ('20010320','0.000');
INSERT INTO BOJ(day,value) VALUES ('20010301','0.150');
INSERT INTO BOJ(day,value) VALUES ('20000811','0.250');
INSERT INTO BOJ(day,value) VALUES ('19990212','0.000');

--CBR
CREATE TABLE IF NOT EXISTS CBR (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO CBR(day,value) VALUES ('20220916','7.500');
INSERT INTO CBR(day,value) VALUES ('20220722','8.000');
INSERT INTO CBR(day,value) VALUES ('20220610','9.500');
INSERT INTO CBR(day,value) VALUES ('20220526','11.000');
INSERT INTO CBR(day,value) VALUES ('20220429','14.000');
INSERT INTO CBR(day,value) VALUES ('20220408','17.000');
INSERT INTO CBR(day,value) VALUES ('20220228','20.000');
INSERT INTO CBR(day,value) VALUES ('20220211','9.500');
INSERT INTO CBR(day,value) VALUES ('20211220','8.500');
INSERT INTO CBR(day,value) VALUES ('20211022','7.500');

--SARB
CREATE TABLE IF NOT EXISTS SARB (
    day     DATE    PRIMARY KEY,
    value   DECIMAL(2,3) NOT NULL
    );

INSERT INTO SARB(day,value) VALUES ('20220922','6.250');
INSERT INTO SARB(day,value) VALUES ('20220721','5.500');
INSERT INTO SARB(day,value) VALUES ('20220519','4.750');
INSERT INTO SARB(day,value) VALUES ('20220324','4.250');
INSERT INTO SARB(day,value) VALUES ('20220127','4.000');
INSERT INTO SARB(day,value) VALUES ('20211119','3.750');
INSERT INTO SARB(day,value) VALUES ('20200723','3.500');
INSERT INTO SARB(day,value) VALUES ('20200521','3.750');
INSERT INTO SARB(day,value) VALUES ('20200414','4.250');
INSERT INTO SARB(day,value) VALUES ('20200319','5.250');


