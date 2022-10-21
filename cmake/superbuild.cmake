ExternalProject_Add(
  ${CMAKE_PROJECT_NAME}_superbuild
  DEPENDS SDL2 bgfx imgui.cmake
  SOURCE_DIR ${PROJECT_SOURCE_DIR}
  BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}
  INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}
  CMAKE_ARGS
    -DCMAKE_PREFIX_PATH=${CMAKE_CURRENT_SOURCE_DIR}/third-party/${THIRD_PARTY_BUILD_DIR_NAME}
    -DSUPERBUILD=OFF
    ${build_type_arg}
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
  BUILD_COMMAND cmake --build <BINARY_DIR> ${build_config_arg}
  INSTALL_COMMAND "")
