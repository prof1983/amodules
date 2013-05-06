/*
Author Prof1983 <prof1983@ya.ru>
Created 06.05.2013
*/

#ifndef AUiClient_C
#define AUiClient_C

#include "ABase.h"
#include "AUiClientVars.c"

AError
afunc AUi_LoadProcs(AModuleGetProc GetProc)
{
	_AUi_AddObject = GetProc("AUi_AddObject");
	_AUi_CreateMainForm = GetProc("AUi_CreateMainForm");
	_AUi_Fin = GetProc("AUi_Fin");
	_AUi_GetIsShowApp = GetProc("AUi_GetIsShowApp");
	_AUi_GetMainMenuItem = GetProc("AUi_GetMainMenuItem");
	_AUi_GetMainToolBar = GetProc("AUi_GetMainToolBar");
	_AUi_GetMainTrayIcon = GetProc("AUi_GetMainTrayIcon");
	_AUi_GetMainWindow = GetProc("AUi_GetMainWindow");
	_AUi_Init = GetProc("AUi_Init");
	_AUi_ProcessMessages = GetProc("AUi_ProcessMessages");
	_AUi_Run = GetProc("AUi_Run");
	_AUi_SetAboutMemoDefaultSize = GetProc("AUi_SetAboutMemoDefaultSize");
	_AUi_SetHideOnClose = GetProc("AUi_SetHideOnClose");
	_AUi_SetIsShowApp = GetProc("AUi_SetIsShowApp");
	_AUi_SetMainToolBar = GetProc("AUi_SetMainToolBar");
	_AUi_SetOnAboutClick = GetProc("AUi_SetOnAboutClick");
	_AUi_SetOnMainFormCreate = GetProc("AUi_SetOnMainFormCreate");
	_AUi_SetProgramState = GetProc("AUi_SetProgramState");
	_AUi_ShellExecute = GetProc("AUi_ShellExecute");
	_AUi_ShellExecuteA = GetProc("AUi_ShellExecuteA");
	_AUi_ShowHelp = GetProc("AUi_ShowHelp");
	_AUi_ShowHelp2 = GetProc("AUi_ShowHelp2");
	_AUi_Shutdown = GetProc("AUi_Shutdown");

	_AUi_InitMainTrayIcon = GetProc("AUi_InitMainTrayIcon");
	_AUi_InitMenus = GetProc("AUi_InitMenus");

	if (_AUi_AddObject == 0) return -2;
	if (_AUi_CreateMainForm == 0) return -3;
	if (_AUi_Fin == 0) return -4;
	if (_AUi_GetIsShowApp == 0) return -5;
	if (_AUi_GetMainMenuItem == 0) return -6;
	if (_AUi_GetMainToolBar == 0) return -7;
	if (_AUi_GetMainTrayIcon == 0) return -8;
	if (_AUi_GetMainWindow == 0) return -9;
	if (_AUi_Init == 0) return -10;
	if (_AUi_ProcessMessages == 0) return -11;
	if (_AUi_Run == 0) return -12;
	if (_AUi_SetAboutMemoDefaultSize == 0) return -13;
	if (_AUi_SetHideOnClose == 0) return -14;
	if (_AUi_SetIsShowApp == 0) return -15;
	if (_AUi_SetMainToolBar == 0) return -16;
	if (_AUi_SetOnAboutClick == 0) return -17;
	if (_AUi_SetOnMainFormCreate == 0) return -18;
	if (_AUi_SetProgramState == 0) return -19;
	if (_AUi_ShellExecute == 0) return -20;
	if (_AUi_ShellExecuteA == 0) return -21;
	if (_AUi_ShowHelp == 0) return -22;
	if (_AUi_ShowHelp2 == 0) return -23;
	if (_AUi_Shutdown == 0) return -24;

	if (_AUi_InitMainTrayIcon == 0) return -25;
	if (_AUi_InitMenus == 0) return -26;

	return 0;
}

#endif
