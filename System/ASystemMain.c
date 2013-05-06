/*
Author Prof1983 <prof1983@ya.ru>
Created 15.04.2013
*/

#ifndef ASystemMain_C
#define ASystemMain_C

#include "ABase.h"
#include "ABase2.h"

// --- ASystem ---

AError
afunc ASystem_Fin() {
    if (_ASystem_Fin == 0) {
        return -100;
    }
    return _ASystem_Fin();
}

AError
afunc ASystem_GetComments(AString Value) {
    if (_ASystem_GetComments == 0) {
        return -100;
    }
    return _ASystem_GetComments(Value);
}

AError
afunc ASystem_GetCompanyName(AString Value) {
    if (_ASystem_GetCompanyName == 0) {
        return -100;
    }
    return _ASystem_GetCompanyName(Value);
}

AConfig
afunc ASystem_GetConfig() {
    if (_ASystem_GetConfig == 0) {
        return 0;
    }
    return _ASystem_GetConfig();
}

AError
afunc ASystem_GetConfigDirectoryPath(AString Value) {
    if (_ASystem_GetConfigDirectoryPath == 0) {
        return -100;
	}
    return _ASystem_GetConfigDirectoryPath(Value);
}

AError
afunc ASystem_GetCopyright(AString Value) {
    if (_ASystem_GetCopyright == 0) {
        return -100;
    }
    return _ASystem_GetCopyright(Value);
}

AError
afunc ASystem_GetDataDirectoryPath(AString Value) {
    if (_ASystem_GetDataDirectoryPath == 0) {
        return -100;
    }
    return _ASystem_GetDataDirectoryPath(Value);
}

AError
afunc ASystem_GetDescription(AString Value) {
    if (_ASystem_GetDescription == 0) {
        return -100;
    }
    return _ASystem_GetDescription(Value);
}

AError
afunc ASystem_GetDirectoryPath(AString Value) {
    if (_ASystem_GetDirectoryPath == 0) {
        return -100;
    }
    return _ASystem_GetDirectoryPath(Value);
}

AError
afunc ASystem_GetExeName(AString Value) {
    if (_ASystem_GetExeName == 0) {
        return -100;
    }
    return _ASystem_GetExeName(Value);
}

AError
afunc ASystem_GetExePath(AString Value) {
    if (_ASystem_GetExePath == 0) {
        return -100;
    }
    return _ASystem_GetExePath(Value);
}

AError
afunc ASystem_GetParamStr(AInt Index, AString Value) {
    if (_ASystem_GetParamStr == 0) {
        return -100;
    }
    return _ASystem_GetParamStr(Index, Value);
}

AError
afunc ASystem_GetProductName(AString Value) {
    if (_ASystem_GetProductName == 0) {
        return -100;
    }
    return _ASystem_GetProductName(Value);
}

AError
afunc ASystem_GetProductVersionStr(AString Value) {
    if (_ASystem_GetProductVersionStr == 0) {
        return -100;
    }
    return _ASystem_GetProductVersionStr(Value);
}

AError
afunc ASystem_GetProgramName(AString Value) {
    if (_ASystem_GetProgramName == 0) {
        return -100;
    }
    return _ASystem_GetProgramName(Value);
}

AError
afunc ASystem_GetProgramVersionStr(AString Value) {
	if (_ASystem_GetProgramVersionStr == 0) {
        return -100;
    }
    return _ASystem_GetProgramVersionStr(Value);
}

AError
afunc ASystem_GetResourceString(AString Section, AString Name, AString Default, AString Value) {
    if (_ASystem_GetResourceString == 0) {
        return -100;
    }
    return _ASystem_GetResourceString(Section, Name, Default, Value);
}

AError
afunc ASystem_GetTitle(AString Value) {
    if (_ASystem_GetTitle == 0) {
        return -100;
    }
    return _ASystem_GetTitle(Value);
}

AError
afunc ASystem_GetUrl(AString Value) {
    if (_ASystem_GetUrl == 0) {
        return -100;
    }
    return _ASystem_GetUrl(Value);
}

AError
afunc ASystem_Init() {
    if (_ASystem_Init == 0) {
        return -100;
    }
    return _ASystem_Init();
}

AError
afunc ASystem_Prepare(AString Title, AString ProgramName, AVersion ProgramVersion,
    AString ProductName, AVersion ProductVersion, AString CompanyName, AString Copyright,
    AString Url, AString Description, AString DataPath, AString ConfigPath) {
    if (_ASystem_Prepare == 0) {
		return -100;
    }
    return _ASystem_Prepare(Title, ProgramName, ProgramVersion, ProductName, ProductVersion,
        CompanyName, Copyright, Url, Description, DataPath, ConfigPath);
}

AError
afunc ASystem_PrepareA(AStr Title, AStr ProgramName, AVersion ProgramVersion, AStr ProductName,
    AVersion ProductVersion, AStr CompanyName, AStr Copyright, AStr Url, AStr Description,
    AStr DataPath, AStr ConfigPath) {
    if (_ASystem_PrepareA == 0) {
        return -100;
    }
    return _ASystem_PrepareA(Title, ProgramName, ProgramVersion, ProductName, ProductVersion,
        CompanyName, Copyright, Url, Description, DataPath, ConfigPath);
}

AError
afunc ASystem_ProcessMessages() {
    if (_ASystem_ProcessMessages == 0) {
        return -100;
    }
    return _ASystem_ProcessMessages();
}

AError
afunc ASystem_SetConfig(AConfig Value) {
    if (_ASystem_SetConfig == 0) {
        return -100;
    }
    return _ASystem_SetConfig(Value);
}

AError
afunc ASystem_SetDataDirectoryPath(AString DataDir) {
    if (_ASystem_SetDataDirectoryPath == 0) {
        return -100;
    }
    return _ASystem_SetDataDirectoryPath(DataDir);
}

AError
afunc ASystem_SetOnProcessMessages(AProc Value) {
	if (_ASystem_SetOnProcessMessages == 0) {
        return -100;
    }
    return _ASystem_SetOnProcessMessages(Value);
}

AError
afunc ASystem_SetOnShowErrorA(AShowErrorA_Proc Value) {
    if (_ASystem_SetOnShowErrorA == 0) {
        return -100;
    }
    return _ASystem_SetOnShowErrorA(Value);
}

AError
afunc ASystem_SetOnShowMessageA(AShowMessageA_Proc Value) {
    if (_ASystem_SetOnShowMessageA == 0) {
        return -100;
    }
    return _ASystem_SetOnShowMessageA(Value);
}

AInt
afunc ASystem_ShellExecute(AString Operation, AString FileName, AString Parameters, AString Directory) {
    if (_ASystem_ShellExecute == 0) {
        return -100;
    }
    return _ASystem_ShellExecute(Operation, FileName, Parameters, Directory);
}

AError
afunc ASystem_ShowError(AString UserMessage, AString ExceptMessage) {
    if (_ASystem_ShowError == 0) {
        return -100;
    }
    return _ASystem_ShowError(UserMessage, ExceptMessage);
}

AError
afunc ASystem_ShowErrorA(AStr UserMessage, AStr ExceptMessage) {
    if (_ASystem_ShowErrorA == 0) {
        return -100;
    }
	return _ASystem_ShowErrorA(UserMessage, ExceptMessage);
}

ADialogBoxCommands
afunc ASystem_ShowMessage(AString Msg) {
    if (_ASystem_ShowMessage == 0) {
        return -100;
    }
    return _ASystem_ShowMessage(Msg);
}

ADialogBoxCommands
afunc ASystem_ShowMessageA(AStr Msg) {
    if (_ASystem_ShowMessageA == 0) {
        return -100;
    }
    return _ASystem_ShowMessageA(Msg);
}

ADialogBoxCommands
afunc ASystem_ShowMessageEx(AString Text, AString Caption, AMessageBoxFlags Flags) {
    if (_ASystem_ShowMessageEx == 0) {
        return -100;
    }
    return _ASystem_ShowMessageEx(Text, Caption, Flags);
}

ADialogBoxCommands
afunc ASystem_ShowMessageExA(AStr Text, AStr Caption, AMessageBoxFlags Flags) {
    if (_ASystem_ShowMessageExA == 0) {
        return -100;
    }
    return _ASystem_ShowMessageExA(Text, Caption, Flags);
}

AError
afunc ASystem_Shutdown() {
    if (_ASystem_Shutdown == 0) {
        return -100;
    }
    return _ASystem_Shutdown();
}

#endif
