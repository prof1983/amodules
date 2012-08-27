{**
@Abstract APlugins procs
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 27.08.2012
}
unit APluginsProcTypes;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase;

type
  APlugins_AddPluginA_Proc = function(FileName: AStr): AError; stdcall;
  {$ifdef ADepr}
  // Check and add plugin.
  APlugins_AddPluginW_Proc = function(const FileName: AWideString): ABoolean; stdcall;
  {$endif}
  APlugins_Clear_Proc = function: ABoolean; stdcall;
  APlugins_GetCount_Proc = function(): AInteger; stdcall;
  APlugins_Delete_Proc = function(Index: AInteger): ABoolean; stdcall;
  APlugins_FindA_Proc = function(Path: AStr): AError; stdcall;
  {$ifdef ADepr}
  APlugins_FindW_Proc = procedure(const Path: AWideString); stdcall;
  {$endif}
  APlugins_Init_Proc = function(): AError; stdcall;
  APlugins_Fin_Proc = function(): AError; stdcall;

implementation

end.
 