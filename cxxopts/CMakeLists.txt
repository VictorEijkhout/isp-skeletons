cmake_minimum_required( VERSION 3.20 )
project( cxxopts VERSION 1.0 )

find_package( PkgConfig REQUIRED )
pkg_check_modules( OPTS REQUIRED cxxopts )

add_executable( cxxopts cxxopts.cxx )
target_compile_features( cxxopts PRIVATE cxx_std_17 )
target_include_directories(
	cxxopts PUBLIC
	${OPTS_INCLUDE_DIRS})

install( TARGETS cxxopts DESTINATION . )

