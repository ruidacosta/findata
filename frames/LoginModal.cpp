//
// Created by rui on 01/11/2026.
//

#include "LoginModal.h"

#include <iostream>
#include <ostream>

#include "imgui.h"
#include "../core/Controler.h"

LoginModal::LoginModal(): error_message("") {}

LoginModal::~LoginModal() = default;

LoginModal::LoginModal(const LoginModal &) = default;

LoginModal &LoginModal::operator=(const LoginModal &) = default;

void LoginModal::show(bool *closed) {
    std::cout << "Error: " << error_message << std::endl;
    ImGui::OpenPopup("Login");

    // Always center this window when appearing
    ImVec2 center = ImGui::GetMainViewport()->GetCenter();
    ImGui::SetNextWindowPos(center, ImGuiCond_Appearing, ImVec2(0.5f, 0.5f));

    if (ImGui::BeginPopupModal("Login", nullptr, ImGuiWindowFlags_AlwaysAutoResize))
    {
        char username[128] = "Username";
        char password[128] = "Password";

        ImGui::Text("%s", error_message.c_str());
        ImGui::InputText("Username", username, IM_ARRAYSIZE(username));
        ImGui::InputText("Password", password, IM_ARRAYSIZE(password));
        ImGui::Separator();

        if (ImGui::Button("Login", ImVec2(120, 0))) {
            if (Controler::getInstance().login(username, password)) {
                *closed = true;
            }
            else {
                error_message = "Login failed";
            }
        }
        ImGui::SetItemDefaultFocus();
        // ImGui::SameLine();
        // if (ImGui::Button("No", ImVec2(120, 0))) { *closed = false; }
        ImGui::EndPopup();
    }
}
