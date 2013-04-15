/*
Author Prof1983 <prof1983@ya.ru>
Created 04.03.2013
LastMod 15.04.2013
*/

#include "ABase.h"
#include "ABase2.h"

// --- Proc types ----------------------------------------------------------------------------------

typedef AError AFunction (*ASystem_Fin_Proc)();
typedef AError AFunction (*ASystem_GetComments_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetCompanyName_Proc)(AString Value);
typedef AConfig AFunction (*ASystem_GetConfig_Proc)();
typedef AError AFunction (*ASystem_GetConfigDirectoryPath_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetCopyright_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetDataDirectoryPath_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetDescription_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetDirectoryPath_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetExeName_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetExePath_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetParamStr_Proc)(AInt Index, AString Value);
typedef AError AFunction (*ASystem_GetProductName_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetProductVersionStr_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetProgramName_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetProgramVersionStr_Proc)(AString Value);
// Value - out
typedef AError AFunction (*ASystem_GetResourceString_Proc)(AString Section, AString Name,
    AString Default, AString Value);
typedef AError AFunction (*ASystem_GetTitle_Proc)(AString Value);
typedef AError AFunction (*ASystem_GetUrl_Proc)(AString Value);
typedef AError AFunction (*ASystem_Init_Proc)();
typedef AInt AFunction (*ASystem_OnAfterRun_Connect_Proc)(ACallbackProc Callback, AInt Weight);
typedef AInt AFunction (*ASystem_OnAfterRun_Disconnect_Proc)(ACallbackProc Callback);
typedef AInt AFunction (*ASystem_OnBeforeRun_Connect_Proc)(ACallbackProc Callback, AInt Weight);
typedef AInt AFunction (*ASystem_OnBeforeRun_Disconnect_Proc)(ACallbackProc Callback);
typedef AError AFunction (*ASystem_Prepare_Proc)(AString Title, AString ProgramName,
    AVersion ProgramVersion, AString ProductName, AVersion ProductVersion, AString CompanyName,
    AString Copyright, AString Url, AString Description, AString DataPath, AString ConfigPath);
typedef AError AFunction (*ASystem_PrepareA_Proc)(AStr Title, AStr ProgramName,
    AVersion ProgramVersion, AStr ProductName, AVersion ProductVersion,
    AStr CompanyName, AStr Copyright, AStr Url, AStr Description, AStr DataPath, AStr ConfigPath);
typedef AError AFunction (*ASystem_ProcessMessages_Proc)();
typedef AError AFunction (*ASystem_SetConfig_Proc)(AConfig Value);
typedef AError AFunction (*ASystem_SetDataDirectoryPath_Proc)(AString DataDir);
typedef AError AFunction (*ASystem_SetOnProcessMessages_Proc)(AProc Value);
typedef AError AFunction (*ASystem_SetOnShowErrorA_Proc)(AShowErrorA_Proc Value);
typedef AError AFunction (*ASystem_SetOnShowMessageA_Proc)(AShowMessageA_Proc Value);
typedef AInt AFunction (*ASystem_ShellExecute_Proc)(AString Operation, AString FileName,
    AString Parameters, AString Directory);
typedef AError AFunction (*ASystem_ShowError_Proc)(AString UserMessage, AString ExceptMessage);
typedef AError AFunction (*ASystem_ShowErrorA_Proc)(AStr UserMessage, AStr ExceptMessage);
typedef ADialogBoxCommands AFunction (*ASystem_ShowMessage_Proc)(AString Msg);
typedef ADialogBoxCommands AFunction (*ASystem_ShowMessageA_Proc)(AStr Msg);
typedef ADialogBoxCommands AFunction (*ASystem_ShowMessageEx_Proc)(AString Text, AString Caption, AMessageBoxFlags Flags);
typedef ADialogBoxCommands AFunction (*ASystem_ShowMessageExA_Proc)(AStr Text, AStr Caption, AMessageBoxFlags Flags);
typedef AError AFunction (*ASystem_Shutdown_Proc)();

// --- Vars ----------------------------------------------------------------------------------------

ASystem_Fin_Proc _ASystem_Fin;
ASystem_GetComments_Proc _ASystem_GetComments;
ASystem_GetCompanyName_Proc _ASystem_GetCompanyName;
ASystem_GetConfig_Proc _ASystem_GetConfig;
ASystem_GetConfigDirectoryPath_Proc _ASystem_GetConfigDirectoryPath;
ASystem_GetCopyright_Proc _ASystem_GetCopyright;
ASystem_GetDataDirectoryPath_Proc _ASystem_GetDataDirectoryPath;
ASystem_GetDescription_Proc _ASystem_GetDescription;
ASystem_GetDirectoryPath_Proc _ASystem_GetDirectoryPath;
ASystem_GetExeName_Proc _ASystem_GetExeName;
ASystem_GetExePath_Proc _ASystem_GetExePath;
ASystem_GetParamStr_Proc _ASystem_GetParamStr;
ASystem_GetProductName_Proc _ASystem_GetProductName;
ASystem_GetProductVersionStr_Proc _ASystem_GetProductVersionStr;
ASystem_GetProgramName_Proc _ASystem_GetProgramName;
ASystem_GetProgramVersionStr_Proc _ASystem_GetProgramVersionStr;
ASystem_GetResourceString_Proc _ASystem_GetResourceString;
ASystem_GetTitle_Proc _ASystem_GetTitle;
ASystem_GetUrl_Proc _ASystem_GetUrl;
ASystem_Init_Proc _ASystem_Init;
ASystem_OnAfterRun_Connect_Proc _ASystem_OnAfterRun_Connect;
ASystem_OnAfterRun_Disconnect_Proc _ASystem_OnAfterRun_Disconnect;
ASystem_OnBeforeRun_Connect_Proc _ASystem_OnBeforeRun_Connect;
ASystem_OnBeforeRun_Disconnect_Proc _ASystem_OnBeforeRun_Disconnect;
ASystem_Prepare_Proc _ASystem_Prepare;
ASystem_PrepareA_Proc _ASystem_PrepareA;
ASystem_ProcessMessages_Proc _ASystem_ProcessMessages;
ASystem_SetConfig_Proc _ASystem_SetConfig;
ASystem_SetDataDirectoryPath_Proc _ASystem_SetDataDirectoryPath;
ASystem_SetOnProcessMessages_Proc _ASystem_SetOnProcessMessages;
ASystem_SetOnShowErrorA_Proc _ASystem_SetOnShowErrorA;
ASystem_SetOnShowMessageA_Proc _ASystem_SetOnShowMessageA;
ASystem_ShellExecute_Proc _ASystem_ShellExecute;
ASystem_ShowError_Proc _ASystem_ShowError;
ASystem_ShowErrorA_Proc _ASystem_ShowErrorA;
ASystem_ShowMessage_Proc _ASystem_ShowMessage;
ASystem_ShowMessageA_Proc _ASystem_ShowMessageA;
ASystem_ShowMessageEx_Proc _ASystem_ShowMessageEx;
ASystem_ShowMessageExA_Proc _ASystem_ShowMessageExA;
ASystem_Shutdown_Proc _ASystem_Shutdown;
