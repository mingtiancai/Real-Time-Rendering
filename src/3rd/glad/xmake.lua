target("glad")
    set_kind("shared")
    set_languages("c++17")
    add_files(
        "src/glad.c"
        ) 

    after_build(function (target)
        print("target name: %s", target:name())
        os.exec("echo %s", target:targetfile())
    end)
