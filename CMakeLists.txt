cmake_minimum_required(VERSION 3.10)

# Project name
project(Calculator)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Source files
set(SOURCES main.cpp)
set(LIB_SOURCES calculator.cpp)

# Add library (static in this case)
add_library(calculator STATIC ${LIB_SOURCES})

# Add executable
add_executable(calculator_exe ${SOURCES})

# Link the library to the executable
target_link_libraries(calculator_exe calculator)

# Include headers
include_directories(${PROJECT_SOURCE_DIR})
