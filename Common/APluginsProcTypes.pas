{**
@Abstract APlugins procs
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 24.04.2013
}
unit APluginsProcTypes;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase,
  APluginsBase;

type
  APlugins_AddPluginA_Proc = function(FileName: AStr): AError; stdcall;
  APlugins_Clear_Proc = function: ABoolean; stdcall;
  APlugins_Delete_Proc = function(Index: AInteger): ABoolean; stdcall;
  APlugins_Fin_Proc = function(): AError; stdcall;
  APlugins_FinAll_Proc = function(): AError; stdcall;
  APlugins_Find2A_Proc = function(Path, Exclusion: AStr): AError; stdcall;
  APlugins_Find3A_Proc = function(Path, Exclusion: AStr; SubDirsOnly: ABool): AError; stdcall;
  APlugins_FindA_Proc = function(Path: AStr): AError; stdcall;
  APlugins_GetCount_Proc = function(): AInteger; stdcall;
  APlugins_Init_Proc = function(): AError; stdcall;
  APlugins_Prepare_Proc = function(Value: AVersion): AError; stdcall;
  APlugins_SetOnCheckPlugin_Proc = function(CheckPluginProc: TCheckPluginProc): AError; stdcall;

  {$ifdef ADepr}
  // Check and add plugin.
  APlugins_AddPluginW_Proc = function(const FileName: AWideString): ABoolean; stdcall;
  APlugins_FindW_Proc = procedure(const Path: AWideString); stdcall;
  {$endif}

implementation

end.
 