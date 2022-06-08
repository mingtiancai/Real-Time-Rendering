add_requires("boost")

target("REAL-TIME-RENDERING")
    set_kind("binary")
    add_files("src/*.cpp") 
    add_packages("boost")