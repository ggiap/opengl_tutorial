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
include_directories(glm/glm)
add_subdirectory(glm)
include_directories(${CMAKE_SOURCE_DIR} stb/)

add_executable(${CMAKE_PROJECT_NAME} main.cpp glslprogram.h glslprogram.cpp)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE OpenGL::GL glfw GLAD ${CMAKE_DL_LIBS} IMGUI glm::glm)

add_custom_command(
        TARGET ${CMAKE_PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/assets/
        ${CMAKE_CURRENT_BINARY_DIR}/assets)
