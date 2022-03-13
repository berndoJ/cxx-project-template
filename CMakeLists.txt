cmake_minimum_required(VERSION 3.13)

# Use -std=c11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(app-project
    VERSION     1.2
    DESCRIPTION "kconfig test project"
    LANGUAGES   C
)

include(cmake/top.cmake)

configure_file(cmake/version.h.in include/generated/version.h)

include(app/app.cmake)