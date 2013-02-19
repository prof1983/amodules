{**
@Abstract AUiSettings
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2011
@LastMod 30.07.2012
}
unit AUISettingsProcRec;

interface

uses
  ABase, AUiSettingsProcTypes;

type
  //AUISettingsProcs = ^AUISettingsProcsType;
  { A02: 8x4; A03: 16x4 }
  AUiSettingsProcs_Type = packed record
    MainSettingsWin: AUiSettings_MainSettingsWin_Proc;          // 00
    SettingsWin_New: AUiSettings_SettingsWin_New_Proc;          // 01
    ShowSettingsWin: AUiSettings_ShowSettingsWin_Proc;          // 02
    NewItem: AUiSettings_NewItemW_Proc;                         // 03
    Item_GetPage: AUiSettings_Item_GetPage_Proc;                // 04

    {$IFDEF A01}
    Reserved05: Integer;
    Reserved06: Integer;
    {$ELSE}
      {$IFDEF A02}
      Reserved05: Integer;
      Reserved06: Integer;
      {$ELSE}
      Init: AUiSettings_Itit_Proc;                              // 05
      Fin: AUiSettings_Fin_Proc;                                // 06
      {$ENDIF A02}
    {$ENDIF A01}

    Reserved07: AInteger;
    {$IFDEF A01}
    {$ELSE}
      {$IFDEF A02}
      {$ELSE}
      Reserved08: AInteger;
      Reserved09: AInteger;
      Reserved10: AInteger;
      Reserved11: AInteger;
      Reserved12: AInteger;
      Reserved13: AInteger;
      Reserved14: AInteger;
      Reserved15: AInteger;
      {$ENDIF A02}
    {$ENDIF A01}
  end;

implementation

end.
 