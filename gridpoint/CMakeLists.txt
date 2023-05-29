cmake_minimum_required( VERSION 3.20 )
project( gridpoint VERSION 1.0 )

add_executable( gridpoint gridpoint.cxx )
target_compile_features( gridpoint PRIVATE cxx_std_17 )
install( TARGETS gridpoint DESTINATION . )

