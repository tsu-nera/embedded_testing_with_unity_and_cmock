#include "MenacingLED.h"

void MenacingLed_Init(void)
{
  PORT_A_DIR &= ~(MENACING_LED_MASK);
  PORT_A_OUT |= (MENACING_LED_MASK);
}
