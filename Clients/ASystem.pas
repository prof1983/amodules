{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 27.08.2012
}
unit ASystem;

interface

uses
  ABase, ABaseTypes, AStrings, ASystemProcVars;

// --- ASystem ---

function ASystem_GetConfig(): AConfig; stdcall;

function ASystem_GetExePathP(): APascalString; stdcall;

function ASystem_GetExePathWS(): AWideString; stdcall;

function ASystem_ParamStrWS(Index: AInt): AWideString; stdcall;

function ASystem_ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands; stdcall;

// ----

function GetConfig(): AConfig; stdcall;

function GetExePathWS(): AWideString; stdcall;

function OnBeforeRun_Disconnect(Callback: ACallbackProc): AInteger; stdcall;

function ParamStrWS(Index: AInt): AWideString; stdcall;

function ProcessMessages(): AError; stdcall;

function ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands; stdcall;

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

function ASystem_GetExePathP(): APascalString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
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

function ASystem_GetExePathWS(): AWideString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(S);
end;

function ASystem_ParamStrWS(Index: AInt): AWideString;
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
  Result := AString_ToWideString(Res);
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
    Result := -1;
    Exit;
  end;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessage(S)
end;

// --- Public ---

function GetConfig(): AConfig;
begin
  Result := ASystem_GetConfig();
end;

function GetExePathWS(): AWideString;
begin
  Result := ASystem_GetExePathWS();
end;

function OnBeforeRun_Disconnect(Callback: ACallbackProc): AInteger;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRunDisconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnBeforeRunDisconnect(Callback);
end;

function ParamStrWS(Index: AInt): AWideString;
begin
  Result := ASystem_ParamStrWS(Index);
end;

function ProcessMessages(): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_ProcessMessages)) then
  begin
    Result := -2;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ProcessMessages();
end;

function ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  Result := ASystem_ShowMessageExWS(Text, Caption, Flags);
end;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands;
var
  Msg1: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := 0;
    Exit;
  end;
  AString_AssignWS(Msg1, Msg);
  Result := ASystem_ShowMessage(Msg1);
end;

end.
 