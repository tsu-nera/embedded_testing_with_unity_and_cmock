#include "unity.h"
#include "MenacingLED.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_MakeSureLedTurnsOnMenacingly(void)
{
  PORT_A_DIR = 0xFF;
  PORT_A_OUT = 0x00;

  MenacingLed_Init();

  TEST_ASSERT_EQUAL_HEX8(0xFD, PORT_A_DIR);
  TEST_ASSERT_EQUAL_HEX8(0x02, PORT_A_OUT);
}
