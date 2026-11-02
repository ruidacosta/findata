cmake_minimum_required(VERSION 4.3)
project(findata)

set(CMAKE_CXX_STANDARD 17)

set(link_src "${CMAKE_CURRENT_SOURCE_DIR}/misc")
if(UNIX AND NOT APPLE)
    set(link_dst "${CMAKE_CURRENT_BINARY_DIR}/misc")
else ()
    set(link_dst "${CMAKE_CURRENT_BINARY_DIR}/$<CONFIG>/misc")
endif()

find_package(OpenGL REQUIRED)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

include_directories(libs/imgui)
include_directories(libs/emscripten)

add_subdirectory(tests)

add_compile_options(-g -Wall -Wformat)
add_executable(
        findata main.cpp
        libs/imgui/imgui.cpp
        libs/imgui/imgui_demo.cpp
        libs/imgui/imgui_draw.cpp
        libs/imgui/imgui_tables.cpp
        libs/imgui/imgui_widgets.cpp
        libs/imgui/backends/imgui_impl_sdl2.cpp
        libs/imgui/backends/imgui_impl_opengl3.cpp
        frames/AboutWindow.cpp
        frames/AboutWindow.h
        frames/ExitModal.cpp
        frames/ExitModal.h
        frames/LoginModal.cpp
        frames/LoginModal.h
        core/Controler.cpp
        core/Controler.h
)

target_link_libraries(findata -lGL)
target_link_libraries(findata ${SDL2_LIBRARIES})
target_link_libraries(findata -lGLEW)

add_custom_command(
        TARGET findata
        POST_BUILD COMMAND cp -r
         ${link_src} ${link_dst}
        COMMENT "copy ${link_src} => ${link_dst}"
)