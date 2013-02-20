{**
Author Prof1983 <prof1983@ya.ru>
Created 20.02.2013
LastMod 20.02.2013
}
unit ACollectionsProcSet;

interface

uses
  ABase,
  ACollectionsProcVars,
  ARuntimeBase;

// --- ACollections ---

function ACollections_SetProcs(GetProc: AModuleGetProc): AError;

implementation

// --- ACollections ---

function ACollections_SetProcs(GetProc: AModuleGetProc): AError;
begin
  ACollections_Fin := GetProc('ACollections_Fin');
  ACollections_Init := GetProc('ACollections_Init');
  AStringList_Add := GetProc('AStringList_Add');
  AStringList_AddA := GetProc('AStringList_AddA');
  AStringList_Clear := GetProc('AStringList_Clear');
  AStringList_Delete := GetProc('AStringList_Delete');
  AStringList_GetCount := GetProc('AStringList_GetCount');
  AStringList_Insert := GetProc('AStringList_Insert');
  AStringList_New := GetProc('AStringList_New');
  AStringList_RemoveAt := GetProc('AStringList_RemoveAt');
  Result := 0;
end;

end.
 