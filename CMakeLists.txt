cmake_minimum_required(VERSION 3.7)

project(custom-qml-and-cpp-api-for-qml-test
    LANGUAGES CXX
    VERSION 1.0.0.0
)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(NOT DEFINED UNIFIED_DESIGN_EXAMPLE)
        set(UNIFIED_DESIGN_EXAMPLE OFF)
endif()

# Три варианта сборки - plugin, module (dynamic module) и static (static module)
set(BUILD_TYPE static CACHE STRING "System build type")
set_property(CACHE BUILD_TYPE PROPERTY STRINGS module plugin static)

option(USE_SYSTEM_QT5 "Use system Qt5 library" ${USE_SYSTEM_QT5_DEFAULT})

if (USE_SYSTEM_QT5)
    set(conan_qt5_version "system")
else()
    set(conan_qt5_version "5.11.3")
endif()


add_subdirectory(custom_style_components)
add_subdirectory(core)
add_subdirectory(integrity)
add_subdirectory(app)
add_subdirectory(test)
