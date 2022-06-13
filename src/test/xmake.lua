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
        "main.cpp"
        ) 
    add_packages("glfw3")
    add_packages("X11")
    add_packages("boost")

    add_deps("glad")

    after_build(function (target)
        print("target name: %s", target:name())
        os.exec("echo %s", target:targetfile())
    end)