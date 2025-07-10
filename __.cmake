
message(STATUS "including operating_system/__.cmake")

message(STATUS "CMAKE_SYSTEM_NAME is ${CMAKE_SYSTEM_NAME}")

if(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")

set(WIN32 TRUE)

message(STATUS "WIN32 set to TRUE")

endif()


