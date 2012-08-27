{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 27.08.2012
}
unit APlugins;

interface

uses
  ABase, APluginsProcVars;

function FindA(Path: AStr): AError; stdcall;

function Init(): AError; stdcall;

implementation

function FindA(Path: AStr): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_FindA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_FindA(Path);
end;

function Init(): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Init();
end;

end.
 