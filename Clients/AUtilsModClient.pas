{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 23.04.2013
}
unit AUtilsModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  AUtilsBase,
  {$ifdef ADepr}
  AUtilsProcRec,
  {$endif}
  AUtilsProcSet;

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
  if Assigned(Module.GetProc) then
  begin
    Result := AUtils_SetProcs(Module.GetProc);
    Exit;
  end;
  {$ifdef ADepr}
  Result := AUtils_SetProcsP(PUtilsProcs(Module.Procs));
  {$else}
  Result := -1;
  {$endif}
end;

end.
 