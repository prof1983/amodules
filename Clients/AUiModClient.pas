{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.02.2013
}
unit AUiModClient;

interface

uses
  ABase, ARuntimeBase, ARuntimeMain,
  AUiBase,
  AUiProcSet,
  AUiProcVars;

// --- AUi ---

function AUi_Boot(): AError;

implementation

// --- AUi ---

function AUi_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(AUI_Uid, Module) < 0) then
  begin
    Result := -3;
    Exit;
  end;

  AUi_SetProcs(Module.GetProc);
  AUiProcVars.AUi_Init := Module.Init;
  AUiProcVars.AUi_Fin := Module.Fin;

  Result := 0;
end;

end.
