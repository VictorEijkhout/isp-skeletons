cmake_minimum_required( VERSION 3.20 )
project( queentest VERSION 1.0 )

find_package(Catch2 REQUIRED)

add_executable( queentest queentest.cxx )
target_compile_features( queentest PRIVATE cxx_std_17 )
target_include_directories( queentest PRIVATE ${CMAKE_SOURCE_DIR} )
target_link_libraries( queentest Catch2::Catch2)

install( TARGETS queentest DESTINATION . )

