find_package(Arcus 1.1 REQUIRED)


if(BUILD_OS_WINDOWS)
    set(extra_cmake_args -DArcus_DIR=${CMAKE_PREFIX_PATH}/lib-mingw/cmake/Arcus)
elseif(BUILD_OS_OSX)
    set(extra_cmake_args
        -DCMAKE_OSX_DEPLOYMENT_TARGET=${CMAKE_OSX_DEPLOYMENT_TARGET}
        -DCMAKE_OSX_SYSROOT=${CMAKE_OSX_SYSROOT})
    if(CURAENGINE_OSX_USE_GCC)
        set(extra_cmake_args ${extra_cmake_args}
            -DCMAKE_C_COMPILER=${OSX_GCC_C}
            -DCMAKE_CXX_COMPILER=${OSX_GCC_CXX})
            -DCMAKE_CXX_FLAGS="")
    endif()
endif()

ExternalProject_Add(CuraEngine
    GIT_REPOSITORY https://github.com/ultimaker/CuraEngine
    GIT_TAG origin/${CURAENGINE_BRANCH_OR_TAG}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCURA_ENGINE_VERSION=${CURA_VERSION} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH} -DENABLE_MORE_COMPILER_OPTIMIZATION_FLAGS=${CURAENGINE_ENABLE_MORE_COMPILER_OPTIMIZATION_FLAGS} -G ${CMAKE_GENERATOR} ${extra_cmake_args}
)

SetProjectDependencies(TARGET CuraEngine)
