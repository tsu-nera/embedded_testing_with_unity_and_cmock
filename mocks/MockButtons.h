/* AUTOGENERATED FILE. DO NOT EDIT. */
#ifndef _MOCKBUTTONS_H
#define _MOCKBUTTONS_H

#include "Buttons.h"

void MockButtons_Init(void);
void MockButtons_Destroy(void);
void MockButtons_Verify(void);




#define Buttons_CheckS5Switch_ExpectAndReturn(cmock_retval) Buttons_CheckS5Switch_CMockExpectAndReturn(__LINE__, cmock_retval)
void Buttons_CheckS5Switch_CMockExpectAndReturn(UNITY_LINE_TYPE cmock_line, char cmock_to_return);

#endif