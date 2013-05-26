#include "unity_fixture.h"

static void runAllTests()
{
  RUN_TEST_GROUP(hogehoge);
  /** ここにTEST_GROUPを追加していく **/
}

int main(int argc, char* argv[])
{
  return UnityMain(argc, argv, runAllTests);
}
