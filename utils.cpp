//
// Created by rui on 08/11/2026.
//

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include "utils.h"

GLuint LoadTextureFromFile(const std::string &path) {
    int width, height, channels;

    unsigned char *data = stbi_load(path.c_str(), &width, &height, &channels, 4); // Force RGBA

    if (!data) {
        printf("Failed to load image: %s\n", path.c_str());
        return 0;
    }

    GLuint textureID;
    glGenTextures(1, &textureID);
    glBindTexture(GL_TEXTURE_2D, textureID);

    // Resizing filters configuration
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    // Envia os dados para a GPU
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);

    stbi_image_free(data);
    return textureID;
}

GLint GetTextureWidth(GLuint textureID) {
    glBindTexture(GL_TEXTURE_2D, textureID);
    GLint width;
    glGetTexLevelParameteriv(GL_TEXTURE_2D, 0, GL_TEXTURE_WIDTH, &width);
    return width;
}

GLint GetTextureHeight(GLuint textureID) {
    glBindTexture(GL_TEXTURE_2D, textureID);
    GLint height;
    glGetTexLevelParameteriv(GL_TEXTURE_2D, 0, GL_TEXTURE_HEIGHT, &height);
    return height;
}