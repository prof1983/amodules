{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 23.04.2013
}
unit ASystemModClient;

interface

uses
  ABase, ARuntime, ARuntimeBase, ASystemBase, ASystemProcSet;

function ASystem_Boot(): AError;

implementation

function ASystem_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime.Modules_GetByUid(ASystem_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if Assigned(Module.GetProc) then
  begin
    Result := ASystem_SetProcs(Module.GetProc);
    Exit;
  end;

  {$ifdef ADepr}
  Result := ASystem_SetProcsP(Module.Procs);
  {$else}
  Result := -3;
  {$endif}
end;

end.
 