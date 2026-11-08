//
// Created by rui on 31/10/2026.
//

#include "AboutWindow.h"

#include <iostream>
#include <ostream>

#include "imgui.h"

AboutWindow::AboutWindow() {
    m_image = LoadTextureFromFile("../misc/logo-negative.png");
    m_image_width = GetTextureWidth(m_image);
    m_image_height = GetTextureHeight(m_image);
}

AboutWindow::~AboutWindow() = default;

AboutWindow::AboutWindow(const AboutWindow &) = default;

AboutWindow &AboutWindow::operator=(const AboutWindow &) = default;

void AboutWindow::show(bool *closed) {
    if (!ImGui::Begin("About Findata", closed, ImGuiWindowFlags_AlwaysAutoResize))
    {
        ImGui::End();
        return;
    }
    //const GLuint backgroundTexture = LoadTextureFromFile("../misc/logo-negative.png");
    //const GLuint backgroundTexture = LoadTextureFromFile("misc/pexels-burst-545064.jpg");

    ImGui::Image(static_cast<ImTextureID>(static_cast<intptr_t>(m_image)), ImVec2(m_image_width, m_image_height)); //, ImVec2(1, 0));
    //ImGui::Image(static_cast<ImTextureID>(static_cast<intptr_t>(m_image)), ImVec2(304, 67));

    ImGui::Text("Your Personal Financial Intelligence Center.");
    ImGui::Text("Version %s", __FINDATA_VERSION__);
    ImGui::SameLine();
    ImGui::SmallButton("C++");
    ImGui::SameLine();
    ImGui::Text("/");
    ImGui::SameLine();
    ImGui::SmallButton("ImGui");

    ImGui::TextLinkOpenURL("Homepage", "https://github.com/ruidacosta/findata");
    ImGui::SameLine();
    ImGui::TextLinkOpenURL("Releases", "https://github.com/ruidacosta/findata/releases");
    ImGui::SameLine();
    ImGui::TextLinkOpenURL("Documentation", "https://github.com/ruidacosta/findata/wiki");
    ImGui::SameLine();
    ImGui::TextLinkOpenURL("License", "https://github.com/ruidacosta/findata?tab=MIT-1-ov-file");

    ImGui::Separator();
    ImGui::TextWrapped("Findata is a high-performance, privacy-focused desktop application designed to give you complete clarity over your wealth.");
    ImGui::TextWrapped("Track your liquidity, monitor multi-asset portfolios (stocks, ETFs, commodities), and stay informed with real-time macroeconomic indicators—all in one unified interface.");
    ImGui::Spacing();
    ImGui::TextWrapped("Key Capabilities:");
    ImGui::Bullet(); ImGui::TextWrapped("Portfolio & Asset Management: Real-time tracking of equities, exchange-traded funds, commodities, and diversified holdings.");
    ImGui::Bullet(); ImGui::TextWrapped("Liquid Accounts: Comprehensive overview of personal bank accounts, cash flow, and net worth evolution.");
    ImGui::Bullet(); ImGui::TextWrapped("Macroeconomic Telemetry: Integrated monitoring of key financial indicators including inflation rates, central bank interest rates, and market benchmarks.");
    ImGui::Bullet(); ImGui::TextWrapped("Local-First Privacy: Your financial data stays secure and private on your local machine.");
    ImGui::Spacing();
    ImGui::TextWrapped("Third-Party Libraries");
    ImGui::Bullet(); ImGui::TextLinkOpenURL("Dear ImGui", "https://github.com/ocornut/imgui"); ImGui::SameLine(); ImGui::TextWrapped("- Immediate Mode Graphical User Interface (MIT License)");
    ImGui::Bullet(); ImGui::TextLinkOpenURL("SQLite","https://www.sqlite.org/"); ImGui::SameLine(); ImGui::TextWrapped("- Serverless, self-contained SQL database engine (Public Domain)");
    ImGui::Bullet(); ImGui::TextLinkOpenURL("libcurl", "https://curl.se/libcurl/"); ImGui::SameLine(); ImGui::TextWrapped("- Multiprotocol file transfer library (curl License / MIT derivative)");
    ImGui::Spacing();
    ImGui::TextWrapped("Engineered with C++ & Dear ImGui");
    ImGui::Spacing();
    ImGui::TextWrapped("Copyright © 2026 Rui Costa. All rights reserved.");

    static bool show_config_info = false;
    ImGui::Checkbox("Config/Build Information", &show_config_info);
    if (show_config_info)
    {
        buildConfigInfo();
    }

    // Close when Esc key is pressed
    if (ImGui::IsKeyPressed(ImGuiKey_Escape)) {
        *closed = false;
    }
    ImGui::End();
}

void AboutWindow::buildConfigInfo() {
    const ImGuiIO& io = ImGui::GetIO();
        const ImGuiStyle& style = ImGui::GetStyle();

        const bool copy_to_clipboard = ImGui::Button("Copy to clipboard");
        const auto child_size = ImVec2(0, ImGui::GetTextLineHeightWithSpacing() * 18);
        ImGui::BeginChild(ImGui::GetID("cfg_infos"), child_size, ImGuiChildFlags_FrameStyle);
        if (copy_to_clipboard)
        {
            ImGui::LogToClipboard();
            ImGui::LogText("```\n"); // Back quotes will make text appears without formatting when pasting on GitHub
        }

        ImGui::Text("Dear ImGui %s (%d)", IMGUI_VERSION, IMGUI_VERSION_NUM);
        ImGui::Separator();
        ImGui::Text("sizeof(size_t): %d, sizeof(ImDrawIdx): %d, sizeof(ImDrawVert): %d",
                    static_cast<int>(sizeof(size_t)), static_cast<int>(sizeof(ImDrawIdx)),
                    static_cast<int>(sizeof(ImDrawVert)));
        ImGui::Text("define: __cplusplus=%d", static_cast<int>(__cplusplus));
#ifdef IMGUI_DISABLE_OBSOLETE_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_OBSOLETE_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_WIN32_DEFAULT_CLIPBOARD_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_WIN32_DEFAULT_CLIPBOARD_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_WIN32_DEFAULT_IME_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_WIN32_DEFAULT_IME_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_WIN32_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_WIN32_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_DEFAULT_FORMAT_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_DEFAULT_FORMAT_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_DEFAULT_MATH_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_DEFAULT_MATH_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_DEFAULT_FILE_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_DEFAULT_FILE_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_FILE_FUNCTIONS
        ImGui::Text("define: IMGUI_DISABLE_FILE_FUNCTIONS");
#endif
#ifdef IMGUI_DISABLE_DEFAULT_ALLOCATORS
        ImGui::Text("define: IMGUI_DISABLE_DEFAULT_ALLOCATORS");
#endif
#ifdef IMGUI_USE_BGRA_PACKED_COLOR
        ImGui::Text("define: IMGUI_USE_BGRA_PACKED_COLOR");
#endif
#ifdef _WIN32
        ImGui::Text("define: _WIN32");
#endif
#ifdef _WIN64
        ImGui::Text("define: _WIN64");
#endif
#ifdef __linux__
        ImGui::Text("define: __linux__");
#endif
#ifdef __APPLE__
        ImGui::Text("define: __APPLE__");
#endif
#ifdef _MSC_VER
        ImGui::Text("define: _MSC_VER=%d", _MSC_VER);
#endif
#ifdef _MSVC_LANG
        ImGui::Text("define: _MSVC_LANG=%d", (int)_MSVC_LANG);
#endif
#ifdef __MINGW32__
        ImGui::Text("define: __MINGW32__");
#endif
#ifdef __MINGW64__
        ImGui::Text("define: __MINGW64__");
#endif
#ifdef __GNUC__
        ImGui::Text("define: __GNUC__=%d", static_cast<int>(__GNUC__));
#endif
#ifdef __clang_version__
        ImGui::Text("define: __clang_version__=%s", __clang_version__);
#endif
#ifdef __EMSCRIPTEN__
        ImGui::Text("define: __EMSCRIPTEN__");
        ImGui::Text("Emscripten: %d.%d.%d", __EMSCRIPTEN_major__, __EMSCRIPTEN_minor__, __EMSCRIPTEN_tiny__);
#endif
        ImGui::Separator();
        ImGui::Text("io.BackendPlatformName: %s", io.BackendPlatformName ? io.BackendPlatformName : "NULL");
        ImGui::Text("io.BackendRendererName: %s", io.BackendRendererName ? io.BackendRendererName : "NULL");
        ImGui::Text("io.ConfigFlags: 0x%08X", io.ConfigFlags);
        if (io.ConfigFlags & ImGuiConfigFlags_NavEnableKeyboard)        ImGui::Text(" NavEnableKeyboard");
        if (io.ConfigFlags & ImGuiConfigFlags_NavEnableGamepad)         ImGui::Text(" NavEnableGamepad");
        if (io.ConfigFlags & ImGuiConfigFlags_NoMouse)                  ImGui::Text(" NoMouse");
        if (io.ConfigFlags & ImGuiConfigFlags_NoMouseCursorChange)      ImGui::Text(" NoMouseCursorChange");
        if (io.ConfigFlags & ImGuiConfigFlags_NoKeyboard)               ImGui::Text(" NoKeyboard");
        if (io.MouseDrawCursor)                                         ImGui::Text("io.MouseDrawCursor");
        if (io.ConfigMacOSXBehaviors)                                   ImGui::Text("io.ConfigMacOSXBehaviors");
        if (io.ConfigNavMoveSetMousePos)                                ImGui::Text("io.ConfigNavMoveSetMousePos");
        if (io.ConfigNavCaptureKeyboard)                                ImGui::Text("io.ConfigNavCaptureKeyboard");
        if (io.ConfigInputTextCursorBlink)                              ImGui::Text("io.ConfigInputTextCursorBlink");
        if (io.ConfigWindowsResizeFromEdges)                            ImGui::Text("io.ConfigWindowsResizeFromEdges");
        if (io.ConfigWindowsMoveFromTitleBarOnly)                       ImGui::Text("io.ConfigWindowsMoveFromTitleBarOnly");
        if (io.ConfigMemoryCompactTimer >= 0.0f)                        ImGui::Text("io.ConfigMemoryCompactTimer = %.1f", io.ConfigMemoryCompactTimer);
        ImGui::Text("io.BackendFlags: 0x%08X", io.BackendFlags);
        if (io.BackendFlags & ImGuiBackendFlags_HasGamepad)             ImGui::Text(" HasGamepad");
        if (io.BackendFlags & ImGuiBackendFlags_HasMouseCursors)        ImGui::Text(" HasMouseCursors");
        if (io.BackendFlags & ImGuiBackendFlags_HasSetMousePos)         ImGui::Text(" HasSetMousePos");
        if (io.BackendFlags & ImGuiBackendFlags_RendererHasVtxOffset)   ImGui::Text(" RendererHasVtxOffset");
        ImGui::Separator();
        ImGui::Text("io.Fonts: %d fonts, Flags: 0x%08X, TexSize: %d,%d", io.Fonts->Fonts.Size, io.Fonts->Flags, io.Fonts->TexMaxWidth, io.Fonts->TexMaxHeight);
        ImGui::Text("io.DisplaySize: %.2f,%.2f", io.DisplaySize.x, io.DisplaySize.y);
        ImGui::Text("io.DisplayFramebufferScale: %.2f,%.2f", io.DisplayFramebufferScale.x, io.DisplayFramebufferScale.y);
        ImGui::Separator();
        ImGui::Text("style.WindowPadding: %.2f,%.2f", style.WindowPadding.x, style.WindowPadding.y);
        ImGui::Text("style.WindowBorderSize: %.2f", style.WindowBorderSize);
        ImGui::Text("style.FramePadding: %.2f,%.2f", style.FramePadding.x, style.FramePadding.y);
        ImGui::Text("style.FrameRounding: %.2f", style.FrameRounding);
        ImGui::Text("style.FrameBorderSize: %.2f", style.FrameBorderSize);
        ImGui::Text("style.ItemSpacing: %.2f,%.2f", style.ItemSpacing.x, style.ItemSpacing.y);
        ImGui::Text("style.ItemInnerSpacing: %.2f,%.2f", style.ItemInnerSpacing.x, style.ItemInnerSpacing.y);

        if (copy_to_clipboard)
        {
            ImGui::LogText("\n```\n");
            ImGui::LogFinish();
        }
        ImGui::EndChild();
}