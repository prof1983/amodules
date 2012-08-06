{**
@Abstract AUiSettings
@Author Prof1983 <prof1983@ya.ru>
@Created 13.03.2009
@LastMod 06.08.2012
}
unit AUiSettingsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, AUi,
  AUiSettings, AUiSettingsBase{$IFDEF ADepr}, AUiSettingsProcRec{$ENDIF};

function AUiSettingsMod_Boot(): AError; stdcall;

function AUiSettingsMod_Fin(): AError; stdcall;

function AUiSettingsMod_GetProc(ProcName: AStr): Pointer; stdcall;

function AUiSettingsMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  UiSettingsProcs: AUiSettingsProcs_Type = (
    MainSettingsWin: AUISettings.UISettings_MainSettingsWin;    // 00
    SettingsWin_New: AUISettings.UISettings_SettingsWin_New;    // 01
    ShowSettingsWin: AUISettings.UISettings_ShowSettingsWin;    // 02
    NewItem: AUISettings.UISettings_NewItem;                    // 03
    Item_GetPage: AUISettings.UISettings_Item_GetPage;          // 04
    Init: AUiSettingsMod_Init;                                  // 05
    Fin: AUiSettingsMod_Fin;                                    // 06
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

{$IFDEF FPC}
  {$I AUiSettingsConsts.en.inc}
{$ELSE}
  {$I AUiSettingsConsts.ru.inc}
{$ENDIF}

const
  AUiSettings_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AUiSettings_Version;
    Uid: AUiSettings_Uid;
    Name: AUiSettings_Name;
    Description: nil;
    Init: AUiSettingsMod_Init;
    Fin: AUiSettingsMod_Fin;
    GetProc: AUiSettingsMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(UiSettingsProcs){$ELSE}nil{$ENDIF};
    );

function AUiSettingsMod_Boot(): AError;
begin
  // Check dublicate module
  {if (Runtime_Modules_FindByName(AUISettings_Name) >= 0) then
  begin
    Result := -1;
    Exit;
  end;}

  ARuntime.Module_Register(Module);
  Result := 0;
end;

// --- AUiSettings_Mod ---

function AUiSettingsMod_Fin(): AError;
begin
  Result := AUISettings.Done03();
  ARuntime.Modules_DeleteByUid(AUiSettings_Uid);
end;

function AUiSettingsMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function AUiSettingsMod_Init(): AError;
begin
  if (AUi_Boot() < 0) then
  begin
    Result := -2;
    Exit;
  end;
  Result := AUiSettings.Init03();
end;

end.
