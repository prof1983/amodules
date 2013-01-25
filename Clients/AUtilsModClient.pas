{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 20.11.2012
}
unit AUtilsModClient;

interface

uses
  ABase, ARuntimeBase, ARuntimeMain, AUtilsBase, AUtilsProcRec, AUtilsProcSet;

function AUtils_Boot(): AError; stdcall;

implementation

function AUtils_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByName(AUtils_Name, Module) < 0) then
  begin
    Result := -4;
    Exit;
  end;

  TODO: Use Module.GetProc

  Result := AUtils_SetProcsP(PUtilsProcs(Module.Procs));
end;

end.
 