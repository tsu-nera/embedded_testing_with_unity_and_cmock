#include "unity.h"
#include "MenacingLED.h"

void InitializePortA(char ADir, char AOut)
{
  PORT_A_DIR = ADir;
  PORT_A_OUT = AOut;
}

void setUp(void)
{
}

void tearDown(void)
{
}

void test_MakeSureLedTurnsOnMenacingly(void)
{
  InitializePortA(0xFF,0x00);

  MenacingLed_Init();
  TEST_ASSERT_EQUAL_HEX8(0xFD, PORT_A_DIR);
  TEST_ASSERT_EQUAL_HEX8(0x02, PORT_A_OUT);
}

void test_MakeSureLedTurnsOnWithoutTouchingOtherPins(void)
{
  InitializePortA(0x00,0xFF);

  MenacingLed_Init();
  TEST_ASSERT_EQUAL_HEX8(0x00, PORT_A_DIR);
  TEST_ASSERT_EQUAL_HEX8(0xFF, PORT_A_OUT);
}

