cmake_minimum_required( VERSION 3.20 )
project( tdd VERSION 1.0 )

add_executable( tdd tdd.cxx )
target_compile_features( tdd PRIVATE cxx_std_17 )
install( TARGETS tdd DESTINATION . )

