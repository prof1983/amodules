{**
Abstract ACollections
Author Prof1983 <prof1983@ya.ru>
Created 19.11.2012
LastMod 20.02.2013
}
unit ACollectionsModClient;

interface

uses
  ABase,
  ACollectionsBase,
  ACollectionsProcSet,
  ACollectionsProcVars,
  ARuntimeBase,
  ARuntimeMain;

// --- ACollections ---

function ACollections_Boot(): AError;

implementation

// --- ACollections ---

function ACollections_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(ACollections_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if not(Assigned(Module.GetProc)) then
  begin
    Result := -3;
    Exit;
  end;

  ACollections_SetProcs(Module.GetProc);
  ACollections_Fin := Module.Fin;
  ACollections_Init := Module.Init;

  Result := 0;
end;

end.
 