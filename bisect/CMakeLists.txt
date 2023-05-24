cmake_minimum_required( VERSION 3.20 )
project( bisect VERSION 1.0 )

add_executable( bisect bisect.cxx )
target_compile_features( bisect PRIVATE cxx_std_17 )
install( TARGETS bisect DESTINATION . )

