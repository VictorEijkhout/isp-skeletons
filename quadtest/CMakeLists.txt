cmake_minimum_required( VERSION 3.20 )
project( quadtest VERSION 1.0 )

add_executable( quadtest quadtest.cxx )
target_compile_features( quadtest PRIVATE cxx_std_17 )
install( TARGETS quadtest DESTINATION . )

