/*
AUiMain functions
Author Prof1983 <prof1983@ya.ru>
Created 29.08.2012
*/

#ifndef AUiMain_C
#define AUiMain_C

#include "AUiMain.h"

#include "AUiClientVars.c"

AInt
afunc AUi_AddObject(AInt Value)
{
	if (_AUi_AddObject == 0) {
		return -100;
	}
	return _AUi_AddObject(Value);
}

AError
afunc AUi_CreateMainForm()
{
	if (_AUi_CreateMainForm == 0) {
		return -100;
	}
	return _AUi_CreateMainForm();
}

AError
afunc AUi_Fin()
{
	if (_AUi_Fin == 0) {
		return -100;
	}
	return _AUi_Fin();
}

ABool
afunc AUi_GetIsShowApp()
{
	if (_AUi_GetIsShowApp == 0) {
		return -100;
	}
	return _AUi_GetIsShowApp();
}

AMenuItem
afunc AUi_GetMainMenuItem()
{
	if (_AUi_GetMainMenuItem == 0) {
		return 0;
	}
	return _AUi_GetMainMenuItem();
}

AControl
afunc AUi_GetMainToolBar()
{
	if (_AUi_GetMainToolBar == 0) {
		return 0;
	}
	return _AUi_GetMainToolBar();
}

ATrayIcon
afunc AUi_GetMainTrayIcon()
{
	if (_AUi_GetMainTrayIcon == 0) {
		return 0;
	}
	return _AUi_GetMainTrayIcon();
}

AWindow
afunc AUi_GetMainWindow()
{
	if (_AUi_GetMainWindow == 0) {
		return 0;
	}
	return _AUi_GetMainWindow();
}

AError
afunc AUi_Init()
{
	if (_AUi_Init == 0) {
		return -100;
	}
	return _AUi_Init();
}

AError
afunc AUi_ProcessMessages()
{
	if (_AUi_ProcessMessages == 0) {
		return -100;
	}
	return _AUi_ProcessMessages();
}

AError
afunc AUi_Run()
{
	if (_AUi_Run == 0) {
		return -100;
	}
	return _AUi_Run();
}

AError
afunc AUi_SetAboutMemoDefaultSize(AInt Width, AInt Height)
{
	if (_AUi_SetAboutMemoDefaultSize == 0) {
		return -100;
	}
	return _AUi_SetAboutMemoDefaultSize(Width, Height);
}

AError
afunc AUi_SetHideOnClose(ABoolean Value)
{
	if (_AUi_SetHideOnClose == 0) {
		return -100;
	}
	return _AUi_SetHideOnClose(Value);
}

AError
afunc AUi_SetIsShowApp(ABool Value)
{
	if (_AUi_SetIsShowApp == 0) {
		return -100;
	}
	return _AUi_SetIsShowApp(Value);
}

AError
afunc AUi_SetMainToolBar(AControl ToolBar)
{
	if (_AUi_SetMainToolBar == 0) {
		return -100;
	}
	return _AUi_SetMainToolBar(ToolBar);
}

AError
afunc AUi_SetOnAboutClick(AProc Value)
{
	if (_AUi_SetOnAboutClick == 0) {
		return -100;
	}
	return _AUi_SetOnAboutClick(Value);
}

AError
afunc AUi_SetOnMainFormCreate(AProc Value)
{
	if (_AUi_SetOnMainFormCreate == 0) {
		return -100;
	}
	return _AUi_SetOnMainFormCreate(Value);
}

AError
afunc AUi_SetProgramState(AUiProgramState State)
{
	if (_AUi_SetProgramState == 0) {
		return -100;
	}
	return _AUi_SetProgramState(State);
}

AInt
afunc AUi_ShellExecute(AString Operation, AString FileName, AString Parameters, AString Directory)
{
	if (_AUi_ShellExecute == 0) {
		return 0;
	}
	return _AUi_ShellExecute(Operation, FileName, Parameters, Directory);
}

AInt
afunc AUi_ShellExecuteA(AStr Operation, AStr FileName, AStr Parameters, AStr Directory)
{
	if (_AUi_ShellExecuteA == 0) {
		return 0;
	}
	return _AUi_ShellExecuteA(Operation, FileName, Parameters, Directory);
}

AError
afunc AUi_ShowHelp()
{
	if (_AUi_ShowHelp == 0) {
		return -100;
	}
	return _AUi_ShowHelp();
}

AError
afunc AUi_ShowHelp2(AString FileName)
{
	if (_AUi_ShowHelp2 == 0) {
		return -100;
	}
	return _AUi_ShowHelp2(FileName);
}

AError
afunc AUi_Shutdown()
{
	if (_AUi_Shutdown == 0) {
		return -100;
	}
	return _AUi_Shutdown();
}

#endif
