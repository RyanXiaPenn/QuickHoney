
if(NOT "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt" IS_NEWER_THAN "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: 'C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"  clone --no-checkout "https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git" "Ext_PBD"
    WORKING_DIRECTORY "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe"  checkout 5376b9f88c4d2eef56f4b5271ddb36c5dfe1d1d0 --
  WORKING_DIRECTORY "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '5376b9f88c4d2eef56f4b5271ddb36c5dfe1d1d0'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"  submodule update --recursive --init 
    WORKING_DIRECTORY "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt"
    "C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'C:/Users/WeiXi/OneDrive/桌面/SPlisHSPlasH-master/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'")
endif()

