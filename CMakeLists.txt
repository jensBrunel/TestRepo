cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
set(CMAKE_LEGACY_CYGWIN_WIN32 0)

project("To Do List")

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/Modules)

IF (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} GREATER 3.0)
  cmake_policy(SET CMP0054 NEW)
ENDIF ()


enable_testing()
include(gmock)


if (NOT DEFINED     BOOST_ROOT        AND
    NOT DEFINED ENV{BOOST_ROOT}       AND
    NOT DEFINED     BOOST_INCLUDEDIR  AND
    NOT DEFINED ENV{BOOST_INCLUDEDIR} AND
    NOT DEFINED     BOOST_LIBRARYDIR  AND
    NOT DEFINED ENV{BOOST_LIBRARYDIR})
    if (APPLE)
        set(BOOST_ROOT "../../../boost/boost_1_54_0/mac")
    elseif (WIN32)
	    set(BOOST_ROOT "C:/local/boost_1_59_0")
        set(BOOST_INCLUDEDIR "C:/local/boost_1_59_0/boost")
        set(BOOST_LIBRARYDIR "C:/local/boost_1_59_0/lib64-msvc-12.0")
    endif()
endif()
if (APPLE OR WIN32)
    set(Boost_USE_STATIC_LIBS TRUE)
endif()
find_package(Boost 1.59 REQUIRED COMPONENTS program_options)
include_directories(SYSTEM ${Boost_INCLUDE_DIRS})

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR
    "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(warnings "-Wall -Wextra -Werror")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    set(warnings "/W4 /wd4512 /WX /EHsc")
        # Disabled Warnings:
        #   4512 "assignment operator could not be generated"
        #        This warning provides no useful information and will occur in
        #        well formed programs.
        #        <http://msdn.microsoft.com/en-us/library/hsyx7kbz.aspx>
endif()
if (NOT CONFIGURED_ONCE)
    set(CMAKE_CXX_FLAGS "${warnings}"
        CACHE STRING "Flags used by the compiler during all build types." FORCE)
    set(CMAKE_C_FLAGS   "${warnings}"
        CACHE STRING "Flags used by the compiler during all build types." FORCE)
endif()


include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(ToDoCore)

add_executable(toDo main.cpp)
target_link_libraries(toDo toDoCore ${Boost_LIBRARIES})


set(CONFIGURED_ONCE TRUE CACHE INTERNAL
    "A flag showing that CMake has configured at least once.")
