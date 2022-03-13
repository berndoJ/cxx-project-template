# Cmake File for the app component of this project.

set(APP_SRC_DIR ${PROJECT_SOURCE_DIR}/app/src)
set(APP_INC_DIR ${PROJECT_SOURCE_DIR}/app/include)

# test-app binary
set(APP_SRCS
    ${APP_SRC_DIR}/main.c
)
add_executable(app ${APP_SRCS})

# Include project headers.
target_include_directories(app PUBLIC ${APP_INC_DIR})

# Include generated project headers.
target_include_directories(app PUBLIC ${PROJECT_BINARY_DIR}/include)

# Include Kconfig autoconf header.
target_include_directories(app PUBLIC ${PROJECT_BINARY_DIR}/kconfig/include)