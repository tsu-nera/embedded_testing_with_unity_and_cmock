#include "S5.h"

void S5_Exec(void)
{
  if( Buttons_CheckS5Switch() == 0 )
  {
    S5Ctrl_Silence();
  }
}
