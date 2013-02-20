{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.02.2013
}
unit AUiWorkbenchModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  AUiWorkbenchBase,
  AUiWorkbenchProcSet;

// --- AUiWorkbench ---

function AUiWorkbench_Boot(): AError;

function AUiWorkbench_IsBoot(): Boolean;

implementation

var
  IsBoot: Boolean;

// --- AUiWorkbench ---

function AUiWorkbench_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(AUiWorkbench_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if not(Assigned(Module.GetProc)) then
  begin
    Result := -3;
    Exit;
  end;

  if (AUiWorkbench_SetProcs(Module.GetProc) < 0) then
  begin
    Result := -4;
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
 