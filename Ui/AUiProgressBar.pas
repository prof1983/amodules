{**
Author Prof1983 <prof1983@ya.ru>
Created 22.11.2012
LastMod 22.11.2012
}
unit AUiProgressBar;

interface

uses
  ABase, AUiBase, AUiProcVars;

function AUiProgressBar_New(Parent: AControl; Max: AInteger): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiProgressBar_StepIt(ProgressBar: AControl): AInteger; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiProgressBar_New(Parent: AControl; Max: AInteger): AControl;
begin
  if Assigned(AUiProcVars.AUiProgressBar_New) then
  begin
    Result := AUiProcVars.AUiProgressBar_New(Parent, Max);
    Exit;
  end;
  Result := 0;
end;

function AUiProgressBar_StepIt(ProgressBar: AControl): AInteger;
begin
  if Assigned(AUiProcVars.AUiProgressBar_StepIt) then
  begin
    Result := AUiProcVars.AUiProgressBar_StepIt(ProgressBar);
    Exit;
  end;
  Result := 0;
end;

end.
 