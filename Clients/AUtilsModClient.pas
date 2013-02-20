{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.02.2013
}
unit AUtilsModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  AUtilsBase,
  AUtilsProcSet,
  AUtilsProcVars;

// --- AUtils ---

function AUtils_Boot(): AError; stdcall;

implementation

// --- AUtils ---

function AUtils_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByName(AUtils_Name, Module) < 0) then
  begin
    Result := -4;
    Exit;
  end;

  Result := AUtils_SetProcs(Module.GetProc);
  AUtilsProcVars.AUtils_Fin := Module.Fin;
  AUtilsProcVars.AUtils_Init := Module.Init;
end;

end.
 