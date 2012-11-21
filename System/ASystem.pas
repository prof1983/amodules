{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 21.11.2012
}
unit ASystem;

interface

uses
  ABase, ABaseTypes, AStrings, ASystemMain, ASystemResourceString;

// ----

function GetConfig(): AConfig; stdcall;

function GetDataDirectoryPathWS(): AWideString; stdcall;

function GetExePathP(): APascalString; stdcall;

function GetExePathWS(): AWideString; stdcall;

{** Gets the name, without the extension, of the assembly file for the application.
    Prototype: System.Application.Info.AssemblyName }
function GetProgramNameWS(): AWideString; stdcall;

function GetResourceStringWS(const Section, Name, Default: AWideString): AWideString; stdcall;

function GetTitleWS(): AWideString; stdcall;

function Init(): AError; stdcall;

function OnBeforeRun_Connect(Callback: ACallbackProc): AInteger; stdcall;

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

function GetDataDirectoryPathWS(): AWideString;
begin
  Result := ASystem_GetDataDirectoryPathP();
end;

function GetExePathP(): APascalString;
begin
  Result := ASystem_GetExePathP();
end;

function GetExePathWS(): AWideString;
begin
  Result := ASystem_GetExePathWS();
end;

function GetProgramNameWS(): AWideString;
begin
  Result := ASystem_GetProgramNameP();
end;

function GetResourceStringWS(const Section, Name, Default: AWideString): AWideString;
begin
  Result := ASystem_GetResourceStringP(Section, Name, Default);
end;

function GetTitleWS(): AWideString;
begin
  Result := ASystem_GetTitleP();
end;

function Init(): AError;
begin
  Result := ASystem_Init();
end;

function OnBeforeRun_Connect(Callback: ACallbackProc): AInteger;
begin
  Result := ASystem_OnBeforeRun_Connect(Callback);
end;

function OnBeforeRun_Disconnect(Callback: ACallbackProc): AInteger;
begin
  Result := ASystem_OnBeforeRun_Disconnect(Callback);
end;

function ParamStrWS(Index: AInt): AWideString;
begin
  Result := ASystem_ParamStrWS(Index);
end;

function Prepare2A(Title, ProgramName: PAnsiChar; ProgramVersion: AVersion;
    ProductName: PAnsiChar; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, DataPath: PAnsiChar): AError; stdcall;
begin
  Result := ASystem_Prepare2A(Title, ProgramName, ProgramVersion,
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
  Result := ASystem_Prepare4A(Title, ProgramName, ProgramVersion,
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
  Result := ASystem_ProcessMessages();
end;

function ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  Result := ASystem_ShowMessageExWS(Text, Caption, Flags);
end;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands;
begin
  Result := ASystem_ShowMessageP(Msg);
end;

end.
 