//
// Created by rui on 08/11/2026.
//

#ifndef FINDATA_UTILS_H
#define FINDATA_UTILS_H
#include <string>

#include <GL/glew.h>

#define __FINDATA_VERSION__ "0.0.1"

GLuint LoadTextureFromFile(const std::string &path);
GLint GetTextureWidth(GLuint textureID);
GLint GetTextureHeight(GLuint textureID);

#endif //FINDATA_UTILS_H
