# Install script for directory: C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/SPlishSPlasH")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/zlib/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/partio/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/md5/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/tinyexpr/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/AntTweakBar/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/glew/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/freeglut/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/pybind/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/SPlisHSPlasH/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/Utilities/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/Tools/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/Simulator/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/Tests/cmake_install.cmake")
  include("C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/PySPlasH/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
