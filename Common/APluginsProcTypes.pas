{**
@Abstract APlugins procs
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 18.04.2013
}
unit APluginsProcTypes;

interface

uses
  ABase,
  APluginsBase;

type
  APlugins_AddPluginA_Proc = function(FileName: AStr): AError; stdcall;
  APlugins_Clear_Proc = function(): AError; stdcall;
  APlugins_Delete_Proc = function(Index: AInt): AError; stdcall;
  APlugins_Fin_Proc = function(): AError; stdcall;
  APlugins_FinAll_Proc = function(): AError; stdcall;
  APlugins_Find2A_Proc = function(Path, Exclusion: AStr): AError; stdcall;
  APlugins_Find3A_Proc = function(Path, Exclusion: AStr; SubDirsOnly: ABool): AError; stdcall;
  APlugins_FindA_Proc = function(Path: AStr): AError; stdcall;
  APlugins_GetCount_Proc = function(): AInt; stdcall;
  APlugins_Init_Proc = function(): AError; stdcall;
  APlugins_Prepare_Proc = function(Value: AVersion): AError; stdcall;
  APlugins_SetOnCheckPlugin_Proc = function(CheckPluginProc: TCheckPluginProc): AError; stdcall;

implementation

end.
 