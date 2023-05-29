cmake_minimum_required( VERSION 3.20 )
project( matrix VERSION 1.0 )

add_executable( matrix matrix.cxx )
target_compile_features( matrix PRIVATE cxx_std_17 )
install( TARGETS matrix DESTINATION . )

