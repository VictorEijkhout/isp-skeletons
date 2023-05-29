cmake_minimum_required( VERSION 3.20 )
project( mult VERSION 1.0 )

add_executable( mult mult.cxx )
target_compile_features( mult PRIVATE cxx_std_17 )
install( TARGETS mult DESTINATION . )

