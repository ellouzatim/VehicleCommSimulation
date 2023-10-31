# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.24.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(ds-populate NONE)


# Pass through things we've already detected in the main project to avoid
# paying the cost of redetecting them again in ExternalProject_Add()
set(GIT_EXECUTABLE [==[C:/Program Files/Git/cmd/git.exe]==])
set(GIT_VERSION_STRING [==[2.42.0.windows.2]==])
set_property(GLOBAL PROPERTY _CMAKE_FindGit_GIT_EXECUTABLE_VERSION
  [==[C:/Program Files/Git/cmd/git.exe;2.42.0.windows.2]==]
)


include(ExternalProject)
ExternalProject_Add(ds-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_TAG" "qds-4.1" "GIT_REPOSITORY" "https://code.qt.io/qt-labs/qtquickdesigner-components.git"
                    SOURCE_DIR          "C:/Users/Mohamed/Documents/Projet_/build-VehicleCommSimulation-Desktop_Qt_6_6_0_MinGW_64_bit-Debug/_deps/ds-src"
                    BINARY_DIR          "C:/Users/Mohamed/Documents/Projet_/build-VehicleCommSimulation-Desktop_Qt_6_6_0_MinGW_64_bit-Debug/_deps/ds-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


