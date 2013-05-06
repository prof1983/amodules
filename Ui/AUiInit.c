/*
Author Prof1983 <prof1983@ya.ru>
Created 06.05.2013
*/

#ifndef AUiInit_C
#define AUiInit_C

#include "ABase.h"
#include "AUiClientVars.c"

AError
afunc AUi_InitMainTrayIcon()
{
	if (_AUi_InitMainTrayIcon == 0) {
		return -100;
	}
	return _AUi_InitMainTrayIcon();
}

AError
afunc AUi_InitMenus()
{
	if (_AUi_InitMenus == 0) {
		return -100;
	}
	return _AUi_InitMenus();
}

#endif