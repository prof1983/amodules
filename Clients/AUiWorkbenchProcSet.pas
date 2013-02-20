{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.02.2013
}
unit AUiWorkbenchProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  AUiWorkbenchProcVars;

// --- AUiWorkbench ---

function AUiWorkbench_SetProcs(GetProc: AModuleGetProc): AError;

implementation

// --- AUiWorkbench ---

function AUiWorkbench_SetProcs(GetProc: AModuleGetProc): AError;
begin
  AUiWorkbenchProcVars.AUiWorkbench_AddPage := GetProc('AUiWorkbench_AddPage');
  AUiWorkbenchProcVars.AUiWorkbench_Fin := GetProc('AUiWorkbench_Fin');
  AUiWorkbenchProcVars.AUiWorkbench_Init := GetProc('AUiWorkbench_Init');
  AUiWorkbenchProcVars.AUiWorkbench_SetOnChange := GetProc('AUiWorkbench_SetOnChange');
  Result := 0;
end;

end.
 