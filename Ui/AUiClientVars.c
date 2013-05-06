/*
Author Prof1983 <prof1983@ya.ru>
Created 06.05.2013
*/

#ifndef AUiClientVars_C
#define AUiClientVars_C

#include "ABase.h"

// --- Types ---

typedef AInt AFunction (*AUi_AddObject_Proc)(AInt Value);
typedef AError AFunction (*AUi_CreateMainForm_Proc)();
typedef AError AFunction (*AUi_Fin_Proc)();
typedef ABool AFunction (*AUi_GetIsShowApp_Proc)();
typedef AMenuItem AFunction (*AUi_GetMainMenuItem_Proc)();
typedef AControl AFunction (*AUi_GetMainToolBar_Proc)();
typedef ATrayIcon AFunction (*AUi_GetMainTrayIcon_Proc)();
typedef AWindow AFunction (*AUi_GetMainWindow_Proc)();
typedef AError AFunction (*AUi_Init_Proc)();
typedef AError AFunction (*AUi_ProcessMessages_Proc)();
typedef AError AFunction (*AUi_Run_Proc)();
typedef AError AFunction (*AUi_SetAboutMemoDefaultSize_Proc)(AInt Width, AInt Height);
typedef AError AFunction (*AUi_SetHideOnClose_Proc)(ABoolean Value);
typedef AError AFunction (*AUi_SetIsShowApp_Proc)(ABool Value);
typedef AError AFunction (*AUi_SetMainToolBar_Proc)(AControl ToolBar);
typedef AError AFunction (*AUi_SetOnAboutClick_Proc)(AProc Value);
typedef AError AFunction (*AUi_SetOnMainFormCreate_Proc)(AProc Value);
typedef AError AFunction (*AUi_SetProgramState_Proc)(AUiProgramState State);
typedef AInt AFunction (*AUi_ShellExecute_Proc)(AString Operation, AString FileName,
	AString Parameters, AString Directory);
typedef AInt AFunction (*AUi_ShellExecuteA_Proc)(AStr Operation, AStr FileName, AStr Parameters, AStr Directory);
typedef AError AFunction (*AUi_ShowHelp_Proc)();
typedef AError AFunction (*AUi_ShowHelp2_Proc)(AString FileName);
typedef AError AFunction (*AUi_Shutdown_Proc)();

typedef AError AFunction (*AUi_InitMainTrayIcon_Proc)();
typedef AError AFunction (*AUi_InitMenus_Proc)();

// --- Vars ---

AUi_AddObject_Proc _AUi_AddObject;
AUi_CreateMainForm_Proc _AUi_CreateMainForm;
AUi_Fin_Proc _AUi_Fin;
AUi_GetIsShowApp_Proc _AUi_GetIsShowApp;
AUi_GetMainMenuItem_Proc _AUi_GetMainMenuItem;
AUi_GetMainToolBar_Proc _AUi_GetMainToolBar;
AUi_GetMainTrayIcon_Proc _AUi_GetMainTrayIcon;
AUi_GetMainWindow_Proc _AUi_GetMainWindow;
AUi_Init_Proc _AUi_Init;
AUi_ProcessMessages_Proc _AUi_ProcessMessages;
AUi_Run_Proc _AUi_Run;
AUi_SetAboutMemoDefaultSize_Proc _AUi_SetAboutMemoDefaultSize;
AUi_SetHideOnClose_Proc _AUi_SetHideOnClose;
AUi_SetIsShowApp_Proc _AUi_SetIsShowApp;
AUi_SetMainToolBar_Proc _AUi_SetMainToolBar;
AUi_SetOnAboutClick_Proc _AUi_SetOnAboutClick;
AUi_SetOnMainFormCreate_Proc _AUi_SetOnMainFormCreate;
AUi_SetProgramState_Proc _AUi_SetProgramState;
AUi_ShellExecute_Proc _AUi_ShellExecute;
AUi_ShellExecuteA_Proc _AUi_ShellExecuteA;
AUi_ShowHelp_Proc _AUi_ShowHelp;
AUi_ShowHelp2_Proc _AUi_ShowHelp2;
AUi_Shutdown_Proc _AUi_Shutdown;

AUi_InitMainTrayIcon_Proc _AUi_InitMainTrayIcon;
AUi_InitMenus_Proc _AUi_InitMenus;

#endif