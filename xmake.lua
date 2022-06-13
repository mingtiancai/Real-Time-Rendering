set_project("REAL-TIME-RENDERING")

-- set xmake minimum version
set_xmakever("2.5.1")

add_rules("mode.debug", "mode.release")

set_languages("c++17")
set_languages("c11")

add_requires("boost")
add_requires("glfw3")
add_requires("opengl")
add_requires("X11")

includes("src")