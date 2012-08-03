{**
@Abstract AModuleManager module v0.3
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2009
@LastMod 03.08.2012
}
unit AModuleManagerMod;

interface

uses
  ABase, AModuleManager, AModuleManagerProcs, ARuntime, ARuntimeBase,
  ASettings, ASystem, AUi, AUiWorkbench;

{ Module }

function ModuleManager_Boot(): AInteger; stdcall;

function ModuleManager_Init03(): AInteger; stdcall;
function ModuleManager_Done03(): AInteger; stdcall;

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

const
  AModuleManager_Version03 = $00030500;

const
  Module: AModule_Type = (
    Version: AModuleManager_Version03;
    Uid: AModuleManager_Uid;
    Name: AModuleManager_Name;
    Description: nil;
    Init: ModuleManager_Init03;
    Done: ModuleManager_Done03;
    Reserved06: 0;
    Procs: Addr(ModuleManagerProcs);
    );

implementation

var
  FInitialized: Boolean;

// --- Private ---

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

{ ModuleManager }

function ModuleManager_Boot: AInteger; stdcall;
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

function ModuleManager_Done03(): AInteger; stdcall;
begin
  ModuleManager_Done();
  ARuntime.Modules_DeleteByUid(AModuleManager_Uid);
  FInitialized := False;
  Result := 0;
end;

function ModuleManager_Init03(): AInteger; stdcall;
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
