//
// Created by rui on 01/11/2026.
//

#include "Controler.h"

#include <iostream>
#include <ostream>

Controler::Controler() = default;

Controler::~Controler() = default;

Controler& Controler::getInstance() {
    static Controler instance;
    return instance;
}

bool Controler::login(std::string username, std::string password) {
    if ((username == "admin") && (password == "admin")) {
        return true;
    }
    return false;
}
