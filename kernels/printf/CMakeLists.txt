cmake_minimum_required(VERSION 3.20)

include("${CMAKE_CURRENT_SOURCE_DIR}")

if(SAMPLE_SKIP_BUILD)
    return()
endif()

project()

include("${CMAKE_CURRENT_SOURCE_DIR}")

find_package(CUDAToolkit REQUIRED)

include_directories()

add_executable()

target_complie_options()

target_compile_features()

include()
setup_samples_install()
