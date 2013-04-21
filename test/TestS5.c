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

void test_S5_Exec_ShouldBePainfullyLoudWhenSwHigh(void)
{
  Buttons_CheckS5Switch_ExpectAndReturn(1);
  S5Ctrl_SetFrequency_ExpectAndReturn(20000, 20000);
  S5Ctrl_Loud_Expect();

  S5_Exec();
}

void test_S5_Exec_ShouldBeSilentIfNotLoudEnough(void)
{
  Buttons_CheckS5Switch_ExpectAndReturn(1);
  S5Ctrl_SetFrequency_ExpectAndReturn(20000, 14000);
  S5Ctrl_Silence_Expect();
  S5_Exec();
}
