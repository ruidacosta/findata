//
// Created by rui on 01/11/2026.
//

#include "LoginModal.h"

#include <iostream>
#include <ostream>

#include "imgui.h"
#include "../core/Controler.h"

LoginModal::LoginModal() {
  m_username[0] = '\0';
  m_password[0] = '\0';
  m_isLoggedIn = false;
  m_loginFailed = false;
  m_isOpen = false;
}

LoginModal::~LoginModal() = default;

LoginModal::LoginModal(const LoginModal &) = default;

LoginModal &LoginModal::operator=(const LoginModal &) = default;

void LoginModal::Open() {
  m_isOpen = true;
  ImGui::OpenPopup("Login");
}

void LoginModal::Render(bool *closed) {
  // Center the modal on screen
  ImVec2 center = ImGui::GetMainViewport()->GetCenter();
  ImGui::SetNextWindowPos(center, ImGuiCond_Appearing, ImVec2(0.5f, 0.5f));
  ImGui::SetNextWindowSize(ImVec2(300,100), ImGuiCond_Appearing);

  // ImGui modal flags for a clean login box (no resize, no collapse)
  ImGuiWindowFlags flags = ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoCollapse;

  if (ImGui::BeginPopupModal("Login", &m_isOpen, flags)) {
    ImGui::Text("Please enter your credentials: ");
    ImGui::Separator();
    ImGui::Spacing();

    // Usernam input
    ImGui::InputText("Username", m_username, IM_ARRAYSIZE(m_username));
    ImGui::InputText("Password", m_password, IM_ARRAYSIZE(m_password)); // ImGuiInputTextFlags_Password);

    if (m_loginFailed) {
      ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1.0f, 0.3f, 0.3f, 1.0f));
      ImGui::Text("Invalid username and/or passwrod!");
      ImGui::PopStyleColor();
    }

    ImGui::Spacing();
    ImGui::Separator();

    // Center buttons or align them nicely
    if (ImGui::Button("Login", ImVec2(120,0))) {
      if (Controler::getInstance().login(m_username, m_password)) {
	m_isLoggedIn = true;
	m_loginFailed = false;
	ImGui::CloseCurrentPopup();
      } else {
	m_loginFailed = true;
      }

    }

    ImGui::EndPopup();
  }
}

void LoginModal::Reset() {
  m_username[0] = '\0';
  m_password[0] = '\0';
  m_loginFailed = false;
  m_isLoggedIn = false;
}


/*
LoginModal::LoginModal(): error_message(""), redraw(true) {}

LoginModal::~LoginModal() = default;

LoginModal::LoginModal(const LoginModal &) = default;

LoginModal &LoginModal::operator=(const LoginModal &) = default;

LoginModal& LoginModal::getInstance() {
  static LoginModal instance;
  return instance;
}

void LoginModal::show(bool *closed) {
  if (!redraw) return;
    
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
		redraw = true;
            }
        }
        ImGui::SetItemDefaultFocus();
        // ImGui::SameLine();
        // if (ImGui::Button("No", ImVec2(120, 0))) { *closed = false; }
        ImGui::EndPopup();
	redraw = false;
    }
}
*/
