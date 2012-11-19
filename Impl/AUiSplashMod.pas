{**
@Abstract AUiSplash
@Author Prof1983 <prof1983@ya.ru>
@Created 08.12.2009
@LastMod 19.11.2012
}
unit AUiSplashMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettings, ASettingsBase, ASystem,
  AUi, AUiBase, AUiSplash, AUiSplashBase, AUtils, AUtilsBase;

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
begin
  // --- Init request modules ---

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

  ARuntime.Modules_InitByUid(ASettings_Uid);

  // --- Run ---

  Result := AUiSplash_Init();
end;

end.

