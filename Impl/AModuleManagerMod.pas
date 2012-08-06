{**
@Abstract AModuleManager module v0.3
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2009
@LastMod 06.08.2012
}
unit AModuleManagerMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, AModuleManager, {$IFDEF ADepr}AModuleManagerProcs,{$ENDIF} ARuntime, ARuntimeBase,
  ASettings, ASystem, AUi, AUiWorkbench;

{ Module }

function ModuleManager_Boot(): AError; stdcall;

function ModuleManager_Fin(): AError; stdcall;

function ModuleManager_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  ModuleManagerProcs: AModuleManagerProcs_Type = (
    Reserved00: 0;
    Reserved01: 0;
    Reserved02: 0;
    Reserved03: 0;
    Reserved04: 0;
    Reserved05: 0;
    Reserved06: 0;
    Reserved07: 0;
    Reserved08: 0;
    Reserved09: 0;
    Reserved10: 0;
    Reserved11: 0;
    Reserved12: 0;
    Reserved13: 0;
    Reserved14: 0;
    Reserved15: 0;
    );
{$ENDIF}

implementation

const
  AModuleManager_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AModuleManager_Version;
    Uid: AModuleManager_Uid;
    Name: AModuleManager_Name;
    Description: nil;
    Init: AModuleManagerMod_Init;
    Done: AModuleManagerMod_Done;
    GetProc: nil;
    Procs: {$IFDEF ADepr}Addr(ModuleManagerProcs){$ELSE}nil{$ENDIF};
    );

var
  FInitialized: Boolean;

// --- Private ---

TODO: Use ASettings.pas
function ASettings_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime.Modules_GetByUid(ASettings_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if (Settings_SetProcsP(Module.Procs) < 0) then
  begin
    Result := -3;
    Exit;
  end;
  Result := 0;
end;

TODO: Use ASystem.pas
function ASystem_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime.Modules_GetByUid(ASystem_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if (System_SetProcsP(Module.Procs) < 0) then
  begin
    Result := -3;
    Exit;
  end;
  Result := 0;
end;

// --- AModuleManagerMod ---

function AModuleManagerMod_Boot(): AError;
begin
  if (ARuntime.Modules_FindByUid(AModuleManager_Uid) >= 0) then
  begin
    Result := -1;
    Exit;
  end;

  if (ARuntime.Modules_FindByName(AModuleManager_Name) >= 0) then
  begin
    Result := -2;
    Exit;
  end;

  Result := ARuntime.Module_Register(Module);
end;

function AModuleManagerMod_Fin(): AError;
begin
  AModuleManager_Fin();
  ARuntime.Modules_DeleteByUid(AModuleManager_Uid);
  FInitialized := False;
  Result := 0;
end;

function AModuleManagerMod_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  // --- Boot reguest modules ---

  if (ASettings_Boot() < 0) then
  begin
    Result := -3;
    Exit;
  end;

  if (ASystem_Boot() < 0) then
  begin
    Result := -4;
    Exit;
  end;

  if (AUi_Boot() < 0) then
  begin
    Result := -5;
    Exit;
  end;

  // --- Boot recomended modules ---

  AUIWorkbench_Boot();

  // --- Init reguest modules ---

  if (AUI.Init() < 0) then
  begin
    Result := -6;
    Exit;
  end;

  // --- Init ---

  ModuleManager_Init();

  FInitialized := True;
  Result := 0;
end;

end.
