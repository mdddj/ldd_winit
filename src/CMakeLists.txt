# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(ldd_winit_library VERSION 0.0.1 LANGUAGES C)

add_library(ldd_winit SHARED
  "ldd_winit.c"
)

set_target_properties(ldd_winit PROPERTIES
  PUBLIC_HEADER ldd_winit.h
  OUTPUT_NAME "ldd_winit"
)

target_compile_definitions(ldd_winit PUBLIC DART_SHARED_LIB)
