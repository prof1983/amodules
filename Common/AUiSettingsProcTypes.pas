{**
@Abstract AUiSettings procs
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2011
@LastMod 20.02.2013
}
unit AUiSettingsProcTypes;

interface

uses
  ABase, AUiBase, AUiSettingsBase;

// --- Procs type ---

type
  AUiSettings_Fin_Proc = function(): AError; stdcall;
  AUiSettings_GetMainSettingsWin_Proc = function(): AWindow; stdcall;
  AUiSettings_Itit_Proc = function(): AError; stdcall;
  AUiSettings_NewItem_Proc = function(Parent: AUiSettingsItem; const Text: AString_Type): AUiSettingsItem; stdcall;
  AUiSettings_NewSettingsWin_Proc = function(): AWindow; stdcall;
  AUiSettings_ShowSettingsWin_Proc = function(): AError; stdcall;
  AUiSettingsItem_GetPage_Proc = function(Item: AUiSettingsItem): AControl; stdcall;

implementation

end.
 