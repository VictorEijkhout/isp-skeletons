cmake_minimum_required( VERSION 3.20 )
project( shortvector VERSION 1.0 )

add_executable( shortvector shortvector.cxx )
target_compile_features( shortvector PRIVATE cxx_std_17 )
install( TARGETS shortvector DESTINATION . )

