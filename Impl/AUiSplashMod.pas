{**
@Abstract AUiSplash
@Author Prof1983 <prof1983@ya.ru>
@Created 08.12.2009
@LastMod 03.08.2012
}
unit AUiSplashMod;

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettings, ASystem, AUi, AUiBase, AUiSplash, AUtils;

const
  AUISplash_Name = 'AUiSplash';
  AUISplash_Name02 = 'AUISplash';
  AUISplash_Uid = $09120801;

function AUiSplash_Boot(): AError; stdcall;

function UISplash_Init03(): AInteger; stdcall;
function UISplash_Done03(): AInteger; stdcall;

implementation

type
  AUISplashProcsRec = packed record {8x4}
    Reserved00: AInteger;
    Reserved01: AInteger;
    Reserved02: AInteger;
    Reserved03: AInteger;
    Reserved04: AInteger;
    Reserved05: AInteger;
    Reserved06: AInteger;
    Reserved07: AInteger;
    Reserved08: AInteger;
    Reserved09: AInteger;
    Reserved10: AInteger;
    Reserved11: AInteger;
    Reserved12: AInteger;
    Reserved13: AInteger;
    Reserved14: AInteger;
    Reserved15: AInteger;
  end;

const
  UISplashProcs: AUISplashProcsRec = (
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
  AUISplash_Version = $00030500;

const
  UISplashModule: AModule03_Type = (
    Version: AUISplash_Version;
    Uid: AUISplash_Uid;
    Name: AUISplash_Name;
    Description: nil;
    Init: UISplash_Init03;
    Done: UISplash_Done03;
    Reserved06: 0;
    Procs: Addr(UISplashProcs);
    );

// --- AUiSplash ---

function AUiSplash_Boot(): AError;
begin
  Result := ARuntime.Module_Register(UISplashModule);
end;

{ Module }

function UISplash_Done03(): AInteger; stdcall;
begin
  Result := AUiSplash_Fin();
  ARuntime.Modules_DeleteByUid(AUISplash_Uid);
end;

function UISplash_Init03(): AInteger; stdcall;
var
  Module: AModule_Type;
begin
  // --- Init request modules ---

  if (ARuntime.Modules_GetByUid(ASettings_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if (Settings_SetProcsP(Module.Procs) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if (ARuntime.Modules_GetByUid(ASystem_Uid, Module) < 0) then
  begin
    Result := -3;
    Exit;
  end;
  System_SetProcsP(Module.Procs);

  if (ARuntime.Modules_GetByUid(AUI_Uid, Module) < 0) then
  begin
    Result := -4;
    Exit;
  end;
  //UI_SetProcsP(Module.Procs);

  if (ARuntime.Modules_GetByUid(AUtils_Uid, Module) < 0) then
  begin
    Result := -5;
    Exit;
  end;
  Utils_SetProcsP(Module.Procs);

  // --- Init modules ---

  if (ARuntime.Modules_InitByUid(AUI_Uid) < 0) then
  begin
    Result := -6;
    Exit;
  end;

  if (ARuntime.Modules_InitByUid(AUtils_Uid) < 0) then
  begin
    Result := -7;
    Exit;
  end;

  // --- Init recomended modules ---

  if (ARuntime.Modules_GetByUid(ASettings_Uid, Module) < 0) then
  begin
    Settings_SetProcsP(Module.Procs);
    ARuntime.Modules_InitByName(ASettings_Name);
  end;

  // --- Run ---

  Result := AUiSplash_Init();
end;

end.

