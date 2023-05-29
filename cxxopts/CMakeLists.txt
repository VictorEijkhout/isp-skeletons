cmake_minimum_required( VERSION 3.20 )
project( cxxopts VERSION 1.0 )

add_executable( cxxopts cxxopts.cxx )
target_compile_features( cxxopts PRIVATE cxx_std_17 )
install( TARGETS cxxopts DESTINATION . )

