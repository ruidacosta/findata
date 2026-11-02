//
// Created by rui on 01/11/2026.
//

#ifndef FINDATA_EXITMODAL_H
#define FINDATA_EXITMODAL_H


class ExitModal {
    public:
    ExitModal();
    ~ExitModal();
    ExitModal(const ExitModal &);
    ExitModal &operator=(const ExitModal &);
    void show(bool *closed, bool *exitApp);
};


#endif //FINDATA_EXITMODAL_H
