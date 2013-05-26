#include "unity_fixture.h"
#include "hogehoge.h"

TEST_GROUP(hogehoge);

TEST_SETUP(hogehoge)
{
}

TEST_TEAR_DOWN(hogehoge)
{
}

TEST(hogehoge,first)
{
  TEST_ASSERT_EQUAL( 1, hogehoge() );
}

TEST(hogehoge,second)
{
  TEST_ASSERT_EQUAL( 2, (hogehoge() + 1) );
}

TEST_GROUP_RUNNER(hogehoge)
{
  RUN_TEST_CASE(hogehoge, first);
  RUN_TEST_CASE(hogehoge, second);
}
