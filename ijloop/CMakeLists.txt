cmake_minimum_required( VERSION 3.20 )
project( ijloop VERSION 1.0 )

add_executable( ijloop ijloop.cxx )
target_compile_features( ijloop PRIVATE cxx_std_17 )
install( TARGETS ijloop DESTINATION . )

