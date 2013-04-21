#include "S5.h"

void S5_Exec(void)
{
  if( (Buttons_CheckS5Switch()) && (S5Ctrl_SetFrequency(20000) >= 20000 ) ) 
    S5Ctrl_Loud();
  else
    S5Ctrl_Silence();
}
