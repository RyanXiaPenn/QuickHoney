# Install script for directory: C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/install/PositionBasedDynamics")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD/./Common" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD/./data" FILES_MATCHING REGEX "/[^/]*\\.glsl$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD/./Demos/Visualization" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-build/PositionBasedDynamics/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-build/Simulation/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-build/Utils/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
