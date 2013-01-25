{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 25.01.2013
}
unit AUiWorkbenchProcSet;

interface

uses
  ABase, AUiWorkbenchProcRec, AUiWorkbenchProcVars;

{$ifdef ADepr}
procedure AUiWorkbench_SetProcs(const Procs: AUiWorkbenchProcs_Type);
function AUiWorkbench_SetProcsP(Procs: PAUiWorkbenchProcs): Boolean;
{$endif}

implementation

{$ifdef ADepr}
procedure AUiWorkbench_SetProcs(const Procs: AUiWorkbenchProcs_Type);
begin
  AUiWorkbenchProcVars.AUiWorkbench_AddPageWS := Procs.AddPageWS;
  AUiWorkbenchProcVars.AUiWorkbench_Fin := Procs.Fin;
  AUiWorkbenchProcVars.AUiWorkbench_Init := Procs.Init;
end;

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

end.
 