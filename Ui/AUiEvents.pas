{**
@Abstract AUi events functions
@Author Prof1983 <prof1983@ya.ru>
@Created 23.11.2012
@LastMod 23.11.2012
}
unit AUiEvents;

{$define AStdCall}

interface

uses
  ABase, AUiProcVars;

{** Connect to OnDone event }
function AUi_OnDone_Connect(Proc: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

{** Disconnect from OnDone event }
function AUi_OnDone_Disconnect(Proc: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUi_OnDone_Connect(Proc: ACallbackProc): AInt;
begin
  if not(Assigned(AUiProcVars.AUi_OnDone_Connect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_OnDone_Connect(Proc);
end;

function AUi_OnDone_Disconnect(Proc: ACallbackProc): AInt;
begin
  if not(Assigned(AUiProcVars.AUi_OnDone_Disconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_OnDone_Disconnect(Proc);
end;

end.
 