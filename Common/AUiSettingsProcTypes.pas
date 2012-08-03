{**
@Abstract AUiSettings procs
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2011
@LastMod 30.07.2012
}
unit AUiSettingsProcTypes;

interface

uses
  ABase, AUiBase, AUiSettingsBase;

// --- Procs type ---

type
  AUiSettings_Fin_Proc = function(): AError; stdcall;
  AUiSettings_Item_GetPage_Proc = function(Item: AUISettingsItem): AControl; stdcall;
  AUiSettings_Itit_Proc = function(): AError; stdcall;
  AUiSettings_MainSettingsWin_Proc = function(): AWindow; stdcall;
  AUiSettings_NewItemW_Proc = function(Parent: AUISettingsItem; const Text: AWideString): AUISettingsItem; stdcall;
  AUiSettings_SettingsWin_New_Proc = function(): AWindow; stdcall;
  AUiSettings_ShowSettingsWin_Proc = procedure(); stdcall;

implementation

end.
 