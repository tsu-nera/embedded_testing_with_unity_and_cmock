#include "unity.h"
#include "cmock.h"

#include "S5.h"
#include "MockButtons.h"
#include "MockS5Ctrl.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_S5_Exec_ShouldBeSilentWhen0(void)
{
  Buttons_CheckS5Switch_ExpectAndReturn(0);
  S5Ctrl_Silence_Expect();

  S5_Exec();
}

