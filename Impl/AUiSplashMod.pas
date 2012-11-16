{**
@Abstract AUiSplash
@Author Prof1983 <prof1983@ya.ru>
@Created 08.12.2009
@LastMod 16.11.2012
}
unit AUiSplashMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettings, ASettingsBase, ASystem,
  AUi, AUiBase, AUiSplash, AUiSplashBase, AUtils;

function AUiSplashMod_Boot(): AError; stdcall;

function AUiSplashMod_Fin(): AError; stdcall;

function AUiSplashMod_Init(): AError; stdcall;

implementation

{$IFDEF ADepr}
type
  AUiSplashProcsRec = packed record {8x4}
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
  UiSplashProcs: AUiSplashProcsRec = (
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
{$ENDIF ADepr}

const
  AUiSplash_Version = $00030500;

const
  UiSplashModule: AModule_Type = (
    Version: AUiSplash_Version;
    Uid: AUiSplash_Uid;
    Name: AUiSplash_Name;
    Description: nil;
    Init: AUiSplashMod_Init;
    Fin: AUiSplashMod_Fin;
    GetProc: nil;
    Procs: {$IFDEF ADepr}Addr(UiSplashProcs){$ELSE}nil{$ENDIF};
    );

// --- AUiSplashMod ---

function AUiSplashMod_Boot(): AError;
begin
  Result := ARuntime.Module_Register(UISplashModule);
end;

function AUiSplashMod_Fin(): AError;
begin
  Result := AUiSplash_Fin();
  ARuntime.Modules_DeleteByUid(AUiSplash_Uid);
end;

function AUiSplashMod_Init(): AError;
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

