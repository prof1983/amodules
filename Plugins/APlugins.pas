{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 18.02.2013
}
unit APlugins;

interface

uses
  ABase,
  APluginsMain;

function FindA(Path: AStr): AError; stdcall;

function Init(): AError; stdcall;

implementation

function FindA(Path: AStr): AError;
begin
  Result := APlugins_FindA(Path);
end;

function Init(): AError;
begin
  Result := APlugins_Init();
end;

end.
 