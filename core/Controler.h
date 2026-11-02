//
// Created by rui on 01/11/2026.
//

#ifndef FINDATA_CONTROLER_H
#define FINDATA_CONTROLER_H
#include <string>


class Controler {
    private:
    Controler();

    public:
    Controler(const Controler&) = delete;
    Controler& operator=(const Controler&) = delete;
    ~Controler();

    static Controler& getInstance();
    bool login(std::string username, std::string password);
};


#endif //FINDATA_CONTROLER_H
