{**
Abstract ACollections
Author Prof1983 <prof1983@ya.ru>
Created 19.11.2012
LastMod 20.11.2012
}
unit ACollectionsModClient;

interface

uses
  ABase, ACollectionsBase, ARuntimeBase, ARuntimeMain;

function ACollections_Boot(): AError;

implementation

function ACollections_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(ACollections_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(Module.Procs) then
  begin
    Result := ACollections_SetProcs(ASettingsProcs_Type(Module.Procs^));
    Exit;
  end;
  {$ENDIF}

  if not(Assigned(Module.GetProc)) then
  begin
    Result := -3;
    Exit;
  end;

  // xxx

  Result := 0;
end;

end.
 