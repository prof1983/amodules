{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
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
  if not(AUiWorkbench_SetProcsP(Module.Procs)) then
  begin
    Result := -3;
    Exit;
  end;
  IsBoot := True;
  Result := 0;
end;

function AUiWorkbench_IsBoot(): Boolean;
begin
  Result := IsBoot;
end;

end.
 