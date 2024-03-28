cmake_minimum_required(VERSION 3.5)
project(ALPC VERSION 0.0.1)

# Specify the source, ALPC "library", and source test directory
set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(ALPC_DIR ${SOURCE_DIR}/ALPC)
set(SOURCE_TESTS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tests)

# Set the output directory for executables
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin)

# Define the executable target and its name
set(EXECUTABLE_NAME ALPC)
add_executable(${EXECUTABLE_NAME} ${SOURCE_DIR}/main.cpp ${ALPC_DIR}/Decoder.cpp ${ALPC_DIR}/Encoder.cpp ${ALPC_DIR}/Utility.cpp)

# Define the test executable target
add_executable(ALPC_tests ${SOURCE_TESTS_DIR}/tests.cpp ${ALPC_DIR}/Decoder.cpp ${ALPC_DIR}/Encoder.cpp ${ALPC_DIR}/Utility.cpp)

# Set C++ standard for targets
set_target_properties(${EXECUTABLE_NAME} PROPERTIES CXX_STANDARD 11)
set_target_properties(ALPC_tests PROPERTIES CXX_STANDARD 11)

# Include directories
target_include_directories(${EXECUTABLE_NAME} PRIVATE ${SOURCE_DIR})

# Generate Xcode project on macOS
if(APPLE)
    if(CMAKE_GENERATOR STREQUAL "Xcode")
        set(XCODE_PROJECT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/build/Xcode)              # Set the location for Xcode project files
        set(CMAKE_XCODE_PROJECT_FILE ${CMAKE_CURRENT_BINARY_DIR}/ALPC.xcodeproj)    # Set the project name
        set(CMAKE_XCODE_GENERATE_SCHEME ON)                                         # Generate schemes for targets
    endif()
endif()
