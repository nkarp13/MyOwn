if(CI)
###############################################################################

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

###############################################################################

add_executable(rayleighTaylor3D "./rayleighTaylor3D.cpp")
add_executable(multiPhaseMixer3D "./multiPhaseMixer3D.cpp")

# Link with the following libraries
target_link_libraries(rayleighTaylor3D palabos)
target_link_libraries(multiPhaseMixer3D palabos)
if(ENABLE_MPI)
    target_link_libraries(rayleighTaylor3D ${MPI_CXX_LIBRARIES})
    target_link_libraries(multiPhaseMixer3D ${MPI_CXX_LIBRARIES})
endif()

# set(EXECUTABLE_NAME "rayleighTaylor3D")
get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)

if(BUILD_TESTING)
    add_custom_target(${PROJECT_NAME}_test
        ALL
        DEPENDS ${EXECUTABLE_NAME}
        COMMAND "LSAN_OPTIONS=suppressions=${LSAN_SUPPRESSION_FILE}" ./${EXECUTABLE_NAME} > test/output.dat || (cat test/output.dat\; exit 1)
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        COMMENT "run generated test in ${CMAKE_CURRENT_SOURCE_DIR}"
        SOURCES ./${EXECUTABLE_NAME}.cpp
    )
endif()
if(BUILD_TESTING_MPI)
    add_custom_target(${PROJECT_NAME}_test_mpi
        ALL
        DEPENDS ${EXECUTABLE_NAME}
        COMMAND "LSAN_OPTIONS=use_tls=0:suppressions=${LSAN_SUPPRESSION_FILE}" mpirun --allow-run-as-root --oversubscribe -np 4 ./${EXECUTABLE_NAME} > test/output_mpi.dat || (cat test/output_mpi.dat\; exit 1)
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        COMMENT "run generated test in ${CMAKE_CURRENT_SOURCE_DIR}"
        SOURCES ./${EXECUTABLE_NAME}.cpp
    )
endif()


if (BUILD_TESTING)
    enable_testing()
    add_test(NAME ${CMAKE_CURRENT_SOURCE_DIR}_test
             WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/test
             COMMAND ${CMAKE_COMMAND} -E compare_files ref.dat output.dat)
    endif()
if (BUILD_TESTING_MPI)
    enable_testing()
    add_test(NAME ${CMAKE_CURRENT_SOURCE_DIR}_test_mpi
             WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/test
             COMMAND diff ref.dat output_mpi.dat)
endif()

###############################################################################

# This returns when you compile Palabos and all the examples (root CMakeLists.txt)
return()

###############################################################################
endif()

cmake_minimum_required(VERSION 2.8.12)

project(palabosExample)
enable_language(CXX)

set(EXECUTABLE_NAME "rayleighTaylor3D")
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY "../")
find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CCACHE_PROGRAM}")
    message("ccache used.")
endif() 

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release")
    #set(CMAKE_CONFIGURATION_TYPES "Debug;Release")
endif()
message("Generated with config types: ${CMAKE_CONFIGURATION_TYPES}")
message(${CMAKE_BUILD_TYPE})

# Compiler flags
# Append flags: set(CMAKE_XXX_FLAGS "${CMAKE_XXX_FLAGS} ...")
if(${CMAKE_CXX_COMPILER_ID} STREQUAL GNU)
    message("GCC.")
    set(CMAKE_CXX_FLAGS "-std=c++17 -Wall  -Wextra -Wnon-virtual-dtor")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG "-g -DPLB_DEBUG -O0")
    set(CMAKE_CXX_FLAGS_TEST "-g -DPLB_DEBUG -DPLB_REGRESSION -O0 -fno-omit-frame-pointer -fsanitize=address")
    set(CMAKE_CXX_LINKER_FLAGS_TEST "${CMAKE_CXX_LINKER_FLAGS_TEST} -fno-omit-frame-pointer -fsanitize=address")
elseif(${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
    message("Clang.")
    set(CMAKE_CXX_FLAGS "-std=c++17 -Wall  -Wextra -Wnon-virtual-dtor")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG "-g -DPLB_DEBUG -O0")
    set(CMAKE_CXX_FLAGS_TEST "-g -DPLB_DEBUG -DPLB_REGRESSION -O0 -fno-omit-frame-pointer -fsanitize=address")
    set(CMAKE_CXX_LINKER_FLAGS_TEST "${CMAKE_CXX_LINKER_FLAGS_TEST} -fno-omit-frame-pointer -fsanitize=address")
elseif(${CMAKE_CXX_COMPILER_ID} STREQUAL MSVC)
    message("MSVC.")
    set(CMAKE_CXX_FLAGS_RELEASE "/Ox /Ot /GS- /GL /DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG "/DPLB_DEBUG")
    set(CMAKE_CXX_FLAGS_TEST "/Ox /Ot /GS- /GL /DPLB_DEBUG /DPLB_REGRESSION")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "/LTCG /INCREMENTAL:NO /OPT:REF")
else()
    message( FATAL_ERROR "CXX compiler not recognized. CMake will quit." )
endif()

option(ENABLE_MPI "Enable MPI" ON)
if(ENABLE_MPI)
    message("Enabling MPI")
    find_package(MPI REQUIRED)
    if(MPI_CXX_FOUND)
        #set(CMAKE_CXX_COMPILER "${MPI_CXX_COMPILER}")
        include_directories(${MPI_CXX_INCLUDE_PATH})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${MPI_CXX_COMPILE_FLAGS}")
        add_definitions(-DPLB_MPI_PARALLEL)
    endif()
endif()

if(WIN32)
    option(ENABLE_POSIX "Enable POSIX" OFF)
else()
    option(ENABLE_POSIX "Enable POSIX" ON)
endif()

if(ENABLE_POSIX)
    message("Enabling POSIX")
    add_definitions(-DPLB_USE_POSIX)
endif()

if(APPLE)
    add_definitions(-DPLB_MAC_OS_X)
endif()

if(WIN32 OR CYGWIN)
    add_definitions(-DPLB_WINDOWS)
endif()

###############################################################################
# Palabos Library
###############################################################################

include_directories("../../../src")
include_directories("../../../externalLibraries")
include_directories("../../../externalLibraries/Eigen3")

file(GLOB_RECURSE PALABOS_SRC "../../../src/*.cpp")
file(GLOB_RECURSE EXT_SRC "../../../externalLibraries/tinyxml/*.cpp")

add_library(palabos STATIC ${PALABOS_SRC} ${EXT_SRC})

###############################################################################

# add_executable(${EXECUTABLE_NAME} "./${EXECUTABLE_NAME}.cpp")

# # Link with the following libraries
# target_link_libraries(${EXECUTABLE_NAME} palabos)
# if(ENABLE_MPI)
#     target_link_libraries(${EXECUTABLE_NAME} ${MPI_CXX_LIBRARIES})
# endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(rayleighTaylor3D "./rayleighTaylor3D.cpp")
add_executable(multiPhaseMixer3D "./multiPhaseMixer3D.cpp")

target_link_libraries(rayleighTaylor3D palabos)
target_link_libraries(multiPhaseMixer3D palabos)

if(ENABLE_MPI)
    target_link_libraries(rayleighTaylor3D ${MPI_CXX_LIBRARIES})
    target_link_libraries(multiPhaseMixer3D ${MPI_CXX_LIBRARIES})
endif()
