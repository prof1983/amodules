{**
@Abstract ASystem client
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 18.02.2013
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

function ASystem_GetConfig(): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetDataDirectoryPathP(): APascalString;

function ASystem_GetExePathP(): APascalString;

function ASystem_GetProgramNameP(): APascalString;

function ASystem_GetTitleP(): APascalString;

function ASystem_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_OnBeforeRun_Disconnect(Callback: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_ParamStrP(Index: AInt): APascalString;

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

function ASystem_ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands;

implementation

// --- ASystem ---

function ASystem_GetConfig(): AConfig;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetConfig)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetConfig();
end;

function ASystem_GetDataDirectoryPathP(): APascalString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetDataDirectoryPath)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetDataDirectoryPath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetExePathP(): APascalString;
var
  S: AString_Type;
begin
  AString_Clear(S);
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := '';
    Exit;
  end;
  if (AString_Clear(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetProgramNameP(): APascalString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetProgramName)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetProgramName(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetTitleP(): APascalString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetTitle)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetTitle(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_Init(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Init();
end;

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc): AInteger;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Connect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnBeforeRun_Connect(Callback);
end;

function ASystem_OnBeforeRun_Disconnect(Callback: ACallbackProc): AInteger;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Disconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnBeforeRun_Disconnect(Callback);
end;

function ASystem_ParamStrP(Index: AInt): APascalString;
var
  Res: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_ParamStr)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_ParamStr(Index, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASystem_Prepare(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
    const ProductName: AString_Type; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Prepare)) then
  begin
    Result := -2;
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
    Result := -2;
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
  AString_AssignP(STitle, Title);
  AString_AssignP(SProgramName, ProgramName);
  AString_AssignP(SProductName, ProductName);
  AString_AssignP(SCompanyName, CompanyName);
  AString_AssignP(SCopyright, Copyright);
  AString_AssignP(SUrl, Url);
  AString_AssignP(SDescription, Description);
  AString_AssignP(SDataPath, DataPath);
  AString_AssignP(SConfigPath, ConfigPath);
  Result := ASystem_Prepare(STitle, SProgramName, ProgramVersion,
      SProductName, ProductVersion, SCompanyName, SCopyright,
      SUrl, SDescription, SDataPath, SConfigPath);
end;

function ASystem_ProcessMessages(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_ProcessMessages)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ProcessMessages();
end;

function ASystem_ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands;
var
  SText: AString_Type;
  SCaption: AString_Type;
begin
  if (AString_AssignWS(SText, Text) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if (AString_AssignWS(SCaption, Caption) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageEx)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessageEx(SText, SCaption, Flags)
end;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands;
var
  S: AString_Type;
begin
  if (AString_AssignP(S, Msg) < 0) then
  begin
    Result := 0;
    Exit;
  end;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessage(S)
end;

end.
 