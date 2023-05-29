cmake_minimum_required( VERSION 3.20 )
project( pointclass VERSION 1.0 )

add_executable( pointclass pointclass.cxx )
target_compile_features( pointclass PRIVATE cxx_std_17 )
install( TARGETS pointclass DESTINATION . )

