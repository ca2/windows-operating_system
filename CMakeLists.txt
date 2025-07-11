cmake_minimum_required(VERSION 3.17)
project(operating_system)


if(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
add_subdirectory(operating_system-windows_common/acme_windows_common)
add_subdirectory(operating_system-windows/acme_windows)
add_subdirectory(operating_system-windows_common/apex_windows_common)
add_subdirectory(operating_system-windows/apex_windows)
add_subdirectory(operating_system-windows_common/aura_windows_common)
add_subdirectory(operating_system-windows/aura_windows)
add_subdirectory(operating_system-windows/acme_windowing_win32)
add_subdirectory(operating_system-windows/innate_ui_win32)
add_subdirectory(operating_system-windows/nano_graphics_gdi)
add_subdirectory(operating_system-windows/node_windows)
add_subdirectory(operating_system-windows/operating_ambient_windows)
add_subdirectory(operating_system-windows/windowing_win32)
add_subdirectory(operating_system-windows/write_text_win32)
add_subdirectory(operating_system-windows/draw2d_gdiplus)
if(${INCLUDE_AUDIO})
add_subdirectory(operating_system-windows/audio_mmsystem)
endif()
add_subdirectory(operating_system-windows/input_win32)


add_subdirectory(operating_system-windows_common/imaging_wic)
endif()


if(${INCLUDE_OPENGL} OR ${INCLUDE_DIRECTX11} OR ${INCLUDE_DIRECT2D} OR ${INCLUDE_VULKAN})
    add_subdirectory(operating_system-windows/typeface_gdiplus)
endif()

if(${INCLUDE_DIRECTX11} OR ${INCLUDE_DIRECT2D})
    add_subdirectory(operating_system-windows_common/directx11)
    add_subdirectory(operating_system-windows_common/gpu_directx11)
endif()

if(${INCLUDE_DIRECT2D})
    add_subdirectory(operating_system-windows_common/direct2d)
    add_subdirectory(operating_system-windows_common/draw2d_direct2d)
    add_subdirectory(operating_system-windows_common/write_text_direct2d)
endif()

if(${INCLUDE_DIRECTX11})
    add_subdirectory(operating_system-windows_common/draw2d_directx11)
    add_subdirectory(operating_system-windows_common/write_text_directx11)
endif()

if(${INCLUDE_DIRECTX12})
    #add_subdirectory(operating_system-windows_common/draw2d_directx11)
endif()
