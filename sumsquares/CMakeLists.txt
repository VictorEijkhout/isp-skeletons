cmake_minimum_required( VERSION 3.20 )
project( sumsquares VERSION 1.0 )

add_executable( sumsquares sumsquares.cxx )
target_compile_features( sumsquares PRIVATE cxx_std_17 )
install( TARGETS sumsquares DESTINATION . )

