cmake_minimum_required( VERSION 3.20 )
project( queentest VERSION 1.0 )

add_executable( queentest queentest.cxx )
target_compile_features( queentest PRIVATE cxx_std_17 )
install( TARGETS queentest DESTINATION . )

