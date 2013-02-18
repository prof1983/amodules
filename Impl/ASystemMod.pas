{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2007
@LastMod 30.01.2013
}
unit ASystemMod;

interface

uses
  ABase,
  ALibraries,
  ARuntimeBase,
  ARuntimeMain,
  ASystemBase,
  ASystemMain;

// --- Module ---

function ASystemMod_Boot(): AError; stdcall;

function ASystemMod_Fin(): AError; stdcall;

function ASystemMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ASystemMod_Init(): AError; stdcall

implementation

const
  ASystem_Version = $00070000;

const
  SystemModule: AModule_Type = (
    Version: ASystem_Version;
    Uid: ASystem_Uid;
    Name: ASystem_Name;
    Description: nil;
    Init: ASystemMod_Init;
    Fin: ASystemMod_Fin;
    GetProc: ASystemMod_GetProc;
    Procs: nil;
    );

// --- ASystemMod ---

function ASystemMod_Boot(): AError;
begin
  Result := ARuntime_RegisterModule(SystemModule);
end;

function ASystemMod_Fin(): AError;
begin
  Result := ASystem_Fin();
end;

function ASystemMod_GetProc(ProcName: AStr): Pointer;
begin
  if (ProcName = 'ASystem_Fin') then
    Result := Addr(ASystem_Fin)
  else if (ProcName = 'ASystem_GetConfig') then
    Result := Addr(ASystem_GetConfig)
  else if (ProcName = 'ASystem_GetConfigDirectoryPath') then
    Result := Addr(ASystem_GetConfigDirectoryPath)
  else if (ProcName = 'ASystem_GetDataDirectoryPath') then
    Result := Addr(ASystem_GetDataDirectoryPath)
  else if (ProcName = 'ASystem_GetDirectoryPath') then
    Result := Addr(ASystem_GetDirectoryPath)
  else if (ProcName = 'ASystem_GetExePath') then
    Result := Addr(ASystem_GetExePath)
  else if (ProcName = 'ASystem_GetProgramName') then
    Result := Addr(ASystem_GetProgramName)
  else if (ProcName = 'ASystem_GetTitle') then
    Result := Addr(ASystem_GetTitle)
  else if (ProcName = 'ASystem_Init') then
    Result := Addr(ASystem_Init)
  else if (ProcName = 'ASystem_ParamStr') then
    Result := Addr(ASystem_ParamStr)
  else if (ProcName = 'ASystem_ProcessMessages') then
    Result := Addr(ASystem_ProcessMessages)
  else if (ProcName = 'ASystem_SetOnProcessMessages') then
    Result := Addr(ASystem_SetOnProcessMessages)
  else if (ProcName = 'ASystem_SetOnShowErrorA') then
    Result := Addr(ASystem_SetOnShowErrorA)
  else if (ProcName = 'ASystem_SetOnShowMessageA') then
    Result := Addr(ASystem_SetOnShowMessageA)
  else if (ProcName = 'ASystem_ShellExecute') then
    Result := Addr(ASystem_ShellExecute)
  else if (ProcName = 'ASystem_ShowError') then
    Result := Addr(ASystem_ShowError)
  else if (ProcName = 'ASystem_ShowErrorA') then
    Result := Addr(ASystem_ShowErrorA)
  else if (ProcName = 'ASystem_ShowMessage') then
    Result := Addr(ASystem_ShowMessage)
  else if (ProcName = 'ASystem_ShowMessageA') then
    Result := Addr(ASystem_ShowMessageA)
  else if (ProcName = 'ASystem_ShowMessageEx') then
    Result := Addr(ASystem_ShowMessageEx)
  else if (ProcName = 'ASystem_ShowMessageExA') then
    Result := Addr(ASystem_ShowMessageExA)
  else if (ProcName = 'ASystem_Shutdown') then
    Result := Addr(ASystem_Shutdown)
  else
    Result := nil;
end;

function ASystemMod_Init(): AError;
begin
  Result := ASystem_Init();
end;

end.
