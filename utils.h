//
// Created by rui on 08/11/2026.
//

#ifndef FINDATA_UTILS_H
#define FINDATA_UTILS_H
#include <string>

#include <GL/glew.h>

GLuint LoadTextureFromFile(const std::string &path);
GLint GetTextureWidth(GLuint textureID);
GLint GetTextureHeight(GLuint textureID);

#endif //FINDATA_UTILS_H
