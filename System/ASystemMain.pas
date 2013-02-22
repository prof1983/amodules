{**
@Abstract ASystem client
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 22.02.2013
}
unit ASystemMain;

{define AStdCall}

interface

uses
  ABase,
  ABaseTypes,
  AStringMain,
  ASystemProcVars;

// --- ASystem ---

function ASystem_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetComments(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetCommentsP(): APascalString;

function ASystem_GetCompanyName(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetCompanyNameP(): APascalString;

function ASystem_GetConfig(): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetConfigDirectoryPath(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetConfigDirectoryPathP(): APascalString;

function ASystem_GetCopyright(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetCopyrightP(): APascalString;

function ASystem_GetDataDirectoryPath(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetDataDirectoryPathP(): APascalString;

function ASystem_GetDescription(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetDescriptionP(): APascalString;

function ASystem_GetDirectoryPath(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetDirectoryPathP(): APascalString;

function ASystem_GetExeName(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetExeNameP(): APascalString;

function ASystem_GetExePath(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetExePathP(): APascalString;

function ASystem_GetParamStr(Index: AInt; out Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetParamStrP(Index: AInt): APascalString;

function ASystem_GetProductName(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetProductNameP(): APascalString;

function ASystem_GetProductVersionStr(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetProductVersionStrP(): APascalString;

function ASystem_GetProgramName(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetProgramNameP(): APascalString;

function ASystem_GetProgramVersionStr(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetProgramVersionStrP(): APascalString;

function ASystem_GetTitle(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetTitleP(): APascalString;

function ASystem_GetUrl(out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetUrlP(): APascalString;

function ASystem_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_Prepare(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
    const ProductName: AString_Type; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_PrepareA(Title, ProgramName: AStr; ProgramVersion: AVersion;
    ProductName: AStr; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_PrepareP(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: APascalString): AError;

function ASystem_ProcessMessages(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_SetConfig(Value: AConfig): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_SetDataDirectoryPath(const DataDir: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_SetDataDirectoryPathP(const DataDir: APascalString): AError;

function ASystem_SetOnProcessMessages(Value: AProc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_SetOnShowErrorA(Value: AShowErrorA_Proc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_SetOnShowMessageA(Value: AShowMessageA_Proc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShellExecute(const Operation, FileName, Parameters, Directory: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShellExecuteP(const Operation, FileName, Parameters, Directory: APascalString): AInt;

function ASystem_ShowError(const UserMessage, ExceptMessage: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowErrorA(UserMessage, ExceptMessage: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowErrorP(const UserMessage, ExceptMessage: APascalString): AError;

function ASystem_ShowMessage(const Msg: AString_Type): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowMessageA(Msg: AStr): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowMessageEx(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowMessageExA(Text, Caption: AStr; Flags: AMessageBoxFlags): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ShowMessageExP(const Text, Caption: APascalString; Flags: AMessageBoxFlags): ADialogBoxCommands;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands;

implementation

// --- ASystem ---

function ASystem_Fin(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Fin();
end;

function ASystem_GetComments(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetComments)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetComments(Value);
end;

function ASystem_GetCommentsP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetComments(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetCompanyName(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetCompanyName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetCompanyName(Value);
end;

function ASystem_GetCompanyNameP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetCompanyName(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetConfig(): AConfig;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetConfig)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetConfig();
end;

function ASystem_GetConfigDirectoryPath(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetConfigDirectoryPath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetConfigDirectoryPath(Value);
end;

function ASystem_GetConfigDirectoryPathP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetConfigDirectoryPath(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetCopyright(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetCopyright)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetCopyright(Value);
end;

function ASystem_GetCopyrightP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetCopyright(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetDataDirectoryPath(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetDataDirectoryPath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetDataDirectoryPath(Value);
end;

function ASystem_GetDataDirectoryPathP(): APascalString;
var
  S: AString_Type;
begin
  AString_Clear(S);
  if (ASystem_GetDataDirectoryPath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetDescription(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetDescription)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetDescription(Value);
end;

function ASystem_GetDescriptionP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetDescription(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetDirectoryPath(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetDirectoryPath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetDirectoryPath(Value);
end;

function ASystem_GetDirectoryPathP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetDirectoryPath(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetExeName(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExeName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetExeName(Value);
end;

function ASystem_GetExeNameP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetExeName(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetExePath(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetExePath(Value);
end;

function ASystem_GetExePathP(): APascalString;
var
  S: AString_Type;
begin
  if (AString_Clear(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetParamStr(Index: AInt; out Value: AString_Type): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetParamStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetParamStr(Index, Value);
end;

function ASystem_GetParamStrP(Index: AInt): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetParamStr(Index, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetProductName(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetProductName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetProductName(Value);
end;

function ASystem_GetProductNameP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetProductName(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetProductVersionStr(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetProductVersionStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetProductVersionStr(Value);
end;

function ASystem_GetProductVersionStrP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetProductVersionStr(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetProgramName(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetProgramName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetProgramName(Value);
end;

function ASystem_GetProgramNameP(): APascalString;
var
  S: AString_Type;
begin
  AString_Clear(S);
  if (ASystem_GetProgramName(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetProgramVersionStr(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetProgramVersionStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetProgramVersionStr(Value);
end;

function ASystem_GetProgramVersionStrP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetProgramVersionStr(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_GetTitle(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetTitle)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetTitle(Value);
end;

function ASystem_GetTitleP(): APascalString;
var
  S: AString_Type;
begin
  AString_Clear(S);
  if (ASystem_GetTitle(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetUrl(out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetUrl)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetUrl(Value);
end;

function ASystem_GetUrlP(): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (ASystem_GetUrl(Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_Init(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Init();
end;

function ASystem_Prepare(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
    const ProductName: AString_Type; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Prepare)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Prepare(Title, ProgramName, ProgramVersion,
      ProductName, ProductVersion, CompanyName, Copyright, Url, Description, DataPath, ConfigPath);
end;

function ASystem_PrepareA(Title, ProgramName: AStr; ProgramVersion: AVersion;
    ProductName: AStr; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AStr): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_PrepareA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_PrepareA(Title, ProgramName, ProgramVersion,
      ProductName, ProductVersion, CompanyName, Copyright, Url, Description, DataPath, ConfigPath);
end;

function ASystem_PrepareP(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: APascalString): AError;
var
  STitle: AString_Type;
  SProgramName: AString_Type;
  SProductName: AString_Type;
  SCompanyName: AString_Type;
  SCopyright: AString_Type;
  SUrl: AString_Type;
  SDescription: AString_Type;
  SDataPath: AString_Type;
  SConfigPath: AString_Type;
begin
  AString_SetP(STitle, Title);
  AString_SetP(SProgramName, ProgramName);
  AString_SetP(SProductName, ProductName);
  AString_SetP(SCompanyName, CompanyName);
  AString_SetP(SCopyright, Copyright);
  AString_SetP(SUrl, Url);
  AString_SetP(SDescription, Description);
  AString_SetP(SDataPath, DataPath);
  AString_SetP(SConfigPath, ConfigPath);
  Result := ASystem_Prepare(STitle, SProgramName, ProgramVersion,
      SProductName, ProductVersion, SCompanyName, SCopyright,
      SUrl, SDescription, SDataPath, SConfigPath);
end;

function ASystem_ProcessMessages(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_ProcessMessages)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ProcessMessages();
end;

function ASystem_SetConfig(Value: AConfig): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_SetConfig)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_SetConfig(Value);
end;

function ASystem_SetDataDirectoryPath(const DataDir: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_SetDataDirectoryPath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_SetDataDirectoryPath(DataDir);
end;

function ASystem_SetDataDirectoryPathP(const DataDir: APascalString): AError;
var
  SDataDir: AString_Type;
begin
  AString_SetP(SDataDir, DataDir);
  Result := ASystem_SetDataDirectoryPath(SDataDir);
end;

function ASystem_SetOnProcessMessages(Value: AProc): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_SetOnProcessMessages)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_SetOnProcessMessages(Value);
end;

function ASystem_SetOnShowErrorA(Value: AShowErrorA_Proc): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_SetOnShowErrorA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_SetOnShowErrorA(Value);
end;

function ASystem_SetOnShowMessageA(Value: AShowMessageA_Proc): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_SetOnShowMessageA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_SetOnShowMessageA(Value);
end;

function ASystem_ShellExecute(const Operation, FileName, Parameters, Directory: AString_Type): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShellExecute)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShellExecute(Operation, FileName, Parameters, Directory);
end;

function ASystem_ShellExecuteP(const Operation, FileName, Parameters, Directory: APascalString): AInt;
var
  SOperation: AString_Type;
  SFileName: AString_Type;
  SParameters: AString_Type;
  SDirectory: AString_Type;
begin
  AString_SetP(SOperation, Operation);
  AString_SetP(SFileName, FileName);
  AString_SetP(SParameters, Parameters);
  AString_SetP(SDirectory, Directory);
  Result := ASystem_ShellExecute(SOperation, SFileName, SParameters, SDirectory);
end;

function ASystem_ShowError(const UserMessage, ExceptMessage: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowError)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowError(UserMessage, ExceptMessage);
end;

function ASystem_ShowErrorA(UserMessage, ExceptMessage: AStr): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowErrorA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowErrorA(UserMessage, ExceptMessage);
end;

function ASystem_ShowErrorP(const UserMessage, ExceptMessage: APascalString): AError;
var
  SUserMessage: AString_Type;
  SExceptMessage: AString_Type;
begin
  AString_SetP(SUserMessage, UserMessage);
  AString_SetP(SExceptMessage, ExceptMessage);
  Result := ASystem_ShowError(SUserMessage, SExceptMessage);
end;

function ASystem_ShowMessage(const Msg: AString_Type): ADialogBoxCommands;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessage(Msg);
end;

function ASystem_ShowMessageA(Msg: AStr): ADialogBoxCommands;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessageA(Msg);
end;

function ASystem_ShowMessageEx(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageEx)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessageEx(Text, Caption, Flags);
end;

function ASystem_ShowMessageExA(Text, Caption: AStr; Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageExA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessageExA(Text, Caption, Flags);
end;

function ASystem_ShowMessageExP(const Text, Caption: APascalString; Flags: AMessageBoxFlags): ADialogBoxCommands;
var
  SText: AString_Type;
  SCaption: AString_Type;
begin
  if (AString_SetP(SText, Text) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if (AString_SetP(SCaption, Caption) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystem_ShowMessageEx(SText, SCaption, Flags)
end;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands;
var
  S: AString_Type;
begin
  if (AString_SetP(S, Msg) < 0) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystem_ShowMessage(S)
end;

end.
 