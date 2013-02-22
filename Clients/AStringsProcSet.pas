{**
@Author Prof1983 <prof1983@ya.ru>
@Created 22.02.2013
@LastMod 22.02.2013
}
unit AStringsProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  AStringsBase,
  AStringsProcVars;

// --- AStrings ---

function AStrings_SetProcs(GetProc: AModuleGetProc): AError;

implementation

// --- AStrings ---

function AStrings_SetProcs(GetProc: AModuleGetProc): AError;
begin
  AStringsProcVars.AString_Assign := GetProc('AString_Assign');
  AStringsProcVars.AString_AssignA := GetProc('AString_AssignA');
  AStringsProcVars.AString_Clear := GetProc('AString_Clear');
  AStringsProcVars.AString_Copy := GetProc('AString_Copy');
  AStringsProcVars.AString_CopyA := GetProc('AString_CopyA');
  AStringsProcVars.AString_GetChar := GetProc('AString_GetChar');
  AStringsProcVars.AString_GetLength := GetProc('AString_GetLength');

  AStringsProcVars.AStrings_Fin := GetProc('AStrings_Fin');
  AStringsProcVars.AStrings_Init := GetProc('AStrings_Init');

  Result := 0;
end;

end.
