if(NOT DEFINED CMAKE_CUDA_ARCHITECTURES)
    message(FATAL_ERROR
        "CMAKE_CUDA_ARCHITECTURES is not set.\n"
        "cmake -DCMAKE_CUDA_ARCHITECTURES=<arch> <path-to-sample>\n"
        "Example: cmake -DCMAKE_CUDA_ARCHITECTURES=90 ."
    )
endif()

include("${CMAKE_CURRENT_LIST_DIR}/CudaSampleArchs.cmake")

set(_master_archs ${CUDA_SAMPLES_MASTER_ARCHS})

set(_effective_archs ${_master_archs})
if(DEFINED SAMPLE_DISALLOW_ARCHS)
    foreach(_arch ${SAMPLE_DISALLOW_ARCHS})
        list(REMOVE_ITEM _effective_archs "${_arch}")
    endforeach()
endif()

get_filename_component(_sample_dir "${CMAKE_CURRENT_SOURCE_DIR}" NAME)
