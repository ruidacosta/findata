//
// Created by rui on 01/11/2026.
//

#include "ExitModal.h"

#include "imgui.h"

ExitModal::ExitModal() = default;

ExitModal::~ExitModal() = default;

ExitModal::ExitModal(const ExitModal &) = default;

ExitModal &ExitModal::operator=(const ExitModal &) = default;

void ExitModal::show(bool *closed, bool *exitApp) {
    ImGui::OpenPopup("Confirm?");

    // Always center this window when appearing
    ImVec2 center = ImGui::GetMainViewport()->GetCenter();
    ImGui::SetNextWindowPos(center, ImGuiCond_Appearing, ImVec2(0.5f, 0.5f));

    if (ImGui::BeginPopupModal("Confirm?", nullptr, ImGuiWindowFlags_AlwaysAutoResize))
    {
        ImGui::Text("Are you sure you want to exit?");
        ImGui::Separator();

        if (ImGui::Button("Yes", ImVec2(120, 0))) { *exitApp = true; }
        ImGui::SetItemDefaultFocus();
        ImGui::SameLine();
        if (ImGui::Button("No", ImVec2(120, 0))) { *closed = false; }

        // cancel when Esc key is pressed
        if (ImGui::IsKeyPressed(ImGuiKey_Escape)) {
            *closed = false;
        }
        ImGui::EndPopup();
    }
}