//
// Created by rui on 31/10/2026.
//

#ifndef FINDATA_ABOUTWINDOW_H
#define FINDATA_ABOUTWINDOW_H


class AboutWindow {
    public:
    AboutWindow();
    ~AboutWindow();
    AboutWindow(const AboutWindow&);
    AboutWindow &operator=(const AboutWindow&);
    void show(bool *closed);
};


#endif //FINDATA_ABOUTWINDOW_H
