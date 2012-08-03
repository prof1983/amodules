{**
@Abstract APlugins procs
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 30.07.2012
}
unit APluginsProcTypes;

interface

uses
  ABase;

type
  // Check and add plugin.
  APlugins_AddPluginW_Proc = function(const FileName: AWideString): ABoolean; stdcall;
  APlugins_Clear_Proc = function: ABoolean; stdcall;
  APlugins_Count_Proc = function: AInteger; stdcall;
  APlugins_Delete_Proc = function(Index: AInteger): ABoolean; stdcall;
  APlugins_FindW_Proc = procedure(const Path: AWideString); stdcall;
  APlugins_Init_Proc = function(): AError; stdcall;
  APlugins_Fin_Proc = function(): AError; stdcall;

implementation

end.
 