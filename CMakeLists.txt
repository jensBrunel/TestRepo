cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
set(CMAKE_LEGACY_CYGWIN_WIN32 0)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/Modules)

IF (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} GREATER 3.0)
  cmake_policy(SET CMP0054 NEW)
ENDIF ()

project("To Do List")

enable_testing()
include(gmock)


if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR
    "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(warnings "-Wall -Wextra -Werror")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    set(warnings "/W4 /WX /EHsc")
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
target_link_libraries(toDo toDoCore)

add_test(toDoTest toDo)


set(CONFIGURED_ONCE TRUE CACHE INTERNAL
    "A flag showing that CMake has configured at least once.")
