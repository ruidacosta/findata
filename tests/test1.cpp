//
// Created by rui on 02/11/2026.
//

/***
* In C++ testing frameworks, TEST, TEST_F, and TEST_P are macros used to define test cases. Here's the difference
* between them:
* TEST: This macro is used to define a standalone test case. It is typically used when you have a single test case
* that does not need any setup or teardown code.
* TEST_F: This macro is used to define a test case that needs to set up some fixtures before running the test and tear
* them down afterward. A fixture is a set of data or objects that you want to use across multiple tests. TEST_F is
* short for "test fixture".
* TEST_P: This macro is used to define a test case that takes parameters. It is typically used when you want to run
* the same test with different inputs. The TEST_P macro is followed by a set of parameters that are passed to the test
* case.
* In summary, TEST is for standalone test cases, TEST_F is for test cases with fixtures, and TEST_P is for test cases
* with parameters. The choice of which macro to use depends on the specific testing needs and requirements of your
* project.
***/

#include <gtest/gtest.h>
TEST(ExampleTest, Success) {
    EXPECT_EQ(true, true);
}

TEST(ExampleTest, Fail) {
    EXPECT_EQ(false, false);
}

TEST(ExampleTest, Positive) {
    EXPECT_LT(-2,0);
}