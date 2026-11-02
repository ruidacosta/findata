//
// Created by rui on 01/11/2026.
//

#ifndef FINDATA_LOGINMODAL_H
#define FINDATA_LOGINMODAL_H
#include <string>


class LoginModal {
    public:
    LoginModal();
    ~LoginModal();
    LoginModal(const LoginModal &);
    LoginModal &operator=(const LoginModal &);
    void show(bool *closed);

    private:
    std::string error_message;
};


#endif //FINDATA_LOGINMODAL_H
