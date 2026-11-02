cmake_minimum_required(VERSION 4.3)
# 'Findata_tests_run' is the subproject name
project(Findata_tests_run)

# 'Findata_tests' is the target name
# 'test1.cpp test2.cpp' are source files with tests
add_executable(Findata_tests_run test1.cpp)
target_link_libraries(Findata_tests_run gtest gtest_main)
target_link_libraries(Findata_tests_run gmock gmock_main)
