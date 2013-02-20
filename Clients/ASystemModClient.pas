{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 20.02.2013
}
unit ASystemModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  ASystemBase,
  ASystemProcSet;

// --- ASystem ---

function ASystem_Boot(): AError;

implementation

// --- ASystem ---

function ASystem_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(ASystem_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if Assigned(Module.GetProc) then
  begin
    Result := ASystem_SetProcs(Module.GetProc);
    Exit;
  end;

  Result := 0;
end;

end.
 