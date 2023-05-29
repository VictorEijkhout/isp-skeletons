cmake_minimum_required( VERSION 3.20 )
project( stream VERSION 1.0 )

add_executable( stream stream.cxx )
target_compile_features( stream PRIVATE cxx_std_17 )
install( TARGETS stream DESTINATION . )

