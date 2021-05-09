add_library(IMGUI STATIC
        imconfig.h
        imgui.cpp
        imgui.h
        imgui_demo.cpp
        imgui_draw.cpp
        imgui_impl_glfw.cpp
        imgui_impl_glfw.h
        imgui_impl_opengl3.cpp
        imgui_impl_opengl3.h
        imgui_tables.cpp
        imgui_widgets.cpp
        imgui_internal.h
        imstb_rectpack.h
        imstb_textedit.h
        imstb_truetype.h
        )

target_link_libraries(IMGUI ${IMGUI})