# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appAirport_supp_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appAirport_supp_autogen.dir/ParseCache.txt"
  "appAirport_supp_autogen"
  )
endif()
