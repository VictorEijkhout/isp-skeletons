cmake_minimum_required( VERSION 3.20 )
project( quadtest VERSION 1.0 )

find_package(Catch2 REQUIRED)

add_executable( quadtest quadtest.cxx )
target_compile_features( quadtest PRIVATE cxx_std_17 )
target_include_directories( quadtest PRIVATE ${CMAKE_SOURCE_DIR} )
target_link_libraries( quadtest Catch2::Catch2)

install( TARGETS quadtest DESTINATION . )

