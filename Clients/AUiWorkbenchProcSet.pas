{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 23.04.2013
}
unit AUiWorkbenchProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  {$ifdef ADepr}
  AUiWorkbenchProcRec,
  {$endif}
  AUiWorkbenchProcVars;

// --- AUiWorkbench ---

function AUiWorkbench_SetProcs(GetProc: AModuleGetProc): AError;

{$ifdef ADepr}
function AUiWorkbench_SetProcsP(Procs: PAUiWorkbenchProcs): Boolean;
function AUiWorkbench_SetProcsR(const Procs: AUiWorkbenchProcs_Type): AError;
{$endif}

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

{$ifdef ADepr}
function AUiWorkbench_SetProcsP(Procs: PAUiWorkbenchProcs): Boolean;
begin
  if not(Assigned(Procs)) then
  begin
    Result := False;
    Exit;
  end;
  AUiWorkbench_SetProcs(AUiWorkbenchProcs_Type(Procs^));
  Result := True;
end;
{$endif}

{$ifdef ADepr}
function AUiWorkbench_SetProcsR(const Procs: AUiWorkbenchProcs_Type): AError;
begin
  AUiWorkbenchProcVars.AUiWorkbench_AddPageWS := Procs.AddPageWS;
  AUiWorkbenchProcVars.AUiWorkbench_Fin := Procs.Fin;
  AUiWorkbenchProcVars.AUiWorkbench_Init := Procs.Init;
  Result := 0;
end;
{$endif}

end.
 