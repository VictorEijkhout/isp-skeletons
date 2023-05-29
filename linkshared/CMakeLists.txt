cmake_minimum_required( VERSION 3.20 )
project( linkshared VERSION 1.0 )

add_executable( linkshared linkshared.cxx )
target_compile_features( linkshared PRIVATE cxx_std_17 )
install( TARGETS linkshared DESTINATION . )

