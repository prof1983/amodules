{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 27.08.2012
}
unit ASystem;

interface

uses
  ABase, ABaseTypes, AStrings, ASystemMain, ASystemProcVars;

// ----

function GetConfig(): AConfig; stdcall;

function GetExePathP(): APascalString; stdcall;

function GetExePathWS(): AWideString; stdcall;

function OnBeforeRun_Disconnect(Callback: ACallbackProc): AInteger; stdcall;

function ParamStrWS(Index: AInt): AWideString; stdcall;

{** Prepare system }
function Prepare2P(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath: APascalString): AError; stdcall;

{** Prepare system }
function Prepare4A(Title, ProgramName: AStr; ProgramVersion: AVersion;
    ProductName: AStr; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, Comments, DataPath, ConfigPath: AStr): AError; stdcall;

{** Prepare system }
function Prepare4P(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, Comments, DataPath, ConfigPath: APascalString): AError; stdcall;

function ProcessMessages(): AError; stdcall;

function ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands; stdcall;

implementation

// --- Public ---

function GetConfig(): AConfig;
begin
  Result := ASystem_GetConfig();
end;

function GetExePathP(): APascalString;
begin
  Result := ASystem_GetExePathP();
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

function Prepare2A(Title, ProgramName: PAnsiChar; ProgramVersion: AVersion;
    ProductName: PAnsiChar; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, DataPath: PAnsiChar): AError; stdcall;
begin
  if not(Assigned(ASystemProcVars.ASystem_Prepare2A)) then
  begin
    Result := -2;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Prepare2A(Title, ProgramName, ProgramVersion,
      ProductName, ProductVersion, CompanyName, Copyright, Url, Description, DataPath);
end;

function Prepare2P(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath: APascalString): AError;
begin
  Result := Prepare2A(AStr(AnsiString(Title)), AStr(AnsiString(ProgramName)), ProgramVersion,
      AStr(AnsiString(ProductName)), ProductVersion,
      AStr(AnsiString(CompanyName)), AStr(AnsiString(Copyright)),
      AStr(AnsiString(Url)), AStr(AnsiString(Description)), AStr(AnsiString(DataPath)));
end;

function Prepare4A(Title, ProgramName: AStr; ProgramVersion: AVersion;
    ProductName: AStr; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, Comments, DataPath, ConfigPath: AStr): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_Prepare4A)) then
  begin
    Result := -2;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_Prepare4A(Title, ProgramName, ProgramVersion,
      ProductName, ProductVersion, CompanyName, Copyright, Url, Description,
      Comments, DataPath, ConfigPath);
end;

function Prepare4P(const Title, ProgramName: APascalString; ProgramVersion: AVersion;
    const ProductName: APascalString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, Comments, DataPath, ConfigPath: APascalString): AError;
begin
  Result := Prepare4A(AStr(AnsiString(Title)), AStr(AnsiString(ProgramName)), ProgramVersion,
      AStr(AnsiString(ProductName)), ProductVersion,
      AStr(AnsiString(CompanyName)), AStr(AnsiString(Copyright)),
      AStr(AnsiString(Url)), AStr(AnsiString(Description)),
      AStr(AnsiString(Comments)), AStr(AnsiString(DataPath)), AStr(AnsiString(ConfigPath)));
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
 