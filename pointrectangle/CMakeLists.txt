cmake_minimum_required( VERSION 3.20 )
project( pointrectangle VERSION 1.0 )

add_executable( pointrectangle pointrectangle.cxx )
target_compile_features( pointrectangle PRIVATE cxx_std_17 )
install( TARGETS pointrectangle DESTINATION . )

