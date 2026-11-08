//
// Created by rui on 31/10/2026.
//

#ifndef FINDATA_ABOUTWINDOW_H
#define FINDATA_ABOUTWINDOW_H

#include "../utils.h"

class AboutWindow {
    public:
    AboutWindow();
    ~AboutWindow();
    AboutWindow(const AboutWindow&);
    AboutWindow &operator=(const AboutWindow&);
    void show(bool *closed);
    private:
    static void buildConfigInfo();

    GLuint m_image;
    GLint m_image_width;
    GLint m_image_height;
};


#endif //FINDATA_ABOUTWINDOW_H
