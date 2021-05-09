cmake_minimum_required(VERSION 3.16)

project("opengl_tutorial")

set(CMAKE_CXX_STANDARD 17)

find_package(glfw3 3.3 REQUIRED)
find_package(OpenGL REQUIRED)

set(BUILD_SHARED_LIBS false)
include_directories(${CMAKE_SOURCE_DIR} glad/)
include_directories(${CMAKE_SOURCE_DIR} glad/include)
include_directories(${CMAKE_SOURCE_DIR} glad/source)
add_subdirectory(glad)
include_directories(imgui/)
include_directories(imgui/backends)
add_subdirectory(imgui)

add_executable(${CMAKE_PROJECT_NAME} main.cpp)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE OpenGL::GL glfw GLAD ${CMAKE_DL_LIBS} IMGUI)
