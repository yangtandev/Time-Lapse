# Install script for directory: /home/gini/NVR/ZLMediaKit/api

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/mk_common.h;/usr/local/include/mk_events.h;/usr/local/include/mk_events_objects.h;/usr/local/include/mk_frame.h;/usr/local/include/mk_h264_splitter.h;/usr/local/include/mk_httpclient.h;/usr/local/include/mk_media.h;/usr/local/include/mk_mediakit.h;/usr/local/include/mk_player.h;/usr/local/include/mk_proxyplayer.h;/usr/local/include/mk_pusher.h;/usr/local/include/mk_recorder.h;/usr/local/include/mk_rtp_server.h;/usr/local/include/mk_tcp.h;/usr/local/include/mk_thread.h;/usr/local/include/mk_track.h;/usr/local/include/mk_transcode.h;/usr/local/include/mk_util.h;/usr/local/include/mk_export.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include" TYPE FILE FILES
    "/home/gini/NVR/ZLMediaKit/api/include/mk_common.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_events.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_events_objects.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_frame.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_h264_splitter.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_httpclient.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_media.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_mediakit.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_player.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_proxyplayer.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_pusher.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_recorder.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_rtp_server.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_tcp.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_thread.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_track.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_transcode.h"
    "/home/gini/NVR/ZLMediaKit/api/include/mk_util.h"
    "/home/gini/NVR/ZLMediaKit/build/api/mk_export.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libmk_api.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libmk_api.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libmk_api.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libmk_api.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/gini/NVR/ZLMediaKit/release/linux/Debug/libmk_api.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libmk_api.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libmk_api.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libmk_api.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/gini/NVR/ZLMediaKit/build/api/tests/cmake_install.cmake")

endif()

