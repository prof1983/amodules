{**
@Author Prof1983 <prof1983@ya.ru>
@Created 22.02.2013
@LastMod 23.04.2013
}
unit AStringsModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  AStringsBase,
  AStringsProcSet;

// --- AStrings ---

function AStrings_Boot(): AError; stdcall;

implementation

// --- AStrings ---

function AStrings_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(AStrings_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if Assigned(Module.GetProc) then
  begin
    Result := AStrings_SetProcs(Module.GetProc);
    Exit;
  end;

  Result := 0;
end;

end.
 