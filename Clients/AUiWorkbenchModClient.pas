{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 23.04.2013
}
unit AUiWorkbenchModClient;

interface

uses
  ABase, ARuntime, ARuntimeBase, AUiWorkbenchBase, AUiWorkbenchProcSet;

function AUiWorkbench_Boot(): AError;

function AUiWorkbench_IsBoot(): Boolean;

implementation

var
  IsBoot: Boolean;

function AUiWorkbench_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime.Modules_GetByUid(AUiWorkbench_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if Assigned(Module.GetProc) then
  begin
    Result := AUiWorkbench_SetProcs(Module.GetProc);
    if (Result = 0) then
      IsBoot := True;
    Exit;
  end;
  {$ifdef ADepr}
  Result := AUiWorkbench_SetProcsP(Module.Procs);
  if (Result = 0) then
    IsBoot := True;
  {$else}
  Result := -3;
  {$endif}
end;

function AUiWorkbench_IsBoot(): Boolean;
begin
  Result := IsBoot;
end;

end.
 