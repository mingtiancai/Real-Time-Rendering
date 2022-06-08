add_rules("mode.debug", "mode.release")

add_requires("boost")
add_requires("glfw3")
add_requires("opengl")
add_requires("X11")

target("testBoost")
    set_kind("binary")
    set_languages("c++17")
    add_files(
        "testBoost.cpp"
        ) 
    add_packages("boost")

    after_build(function (target)
        print("target name: %s", target:name())
        os.exec("echo %s", target:targetfile())
    end)

target("REAL-TIME-RENDERING")
    set_kind("binary")
    set_languages("c++17")
    add_files(
        "main.cpp",
        "glad.c"
        ) 
    add_packages("glfw3")
    add_packages("X11")
    add_packages("boost")

    after_build(function (target)
        print("target name: %s", target:name())
        os.exec("echo %s", target:targetfile())
    end)