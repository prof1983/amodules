{**
@Abstract ASystem client
@Author Prof1983 <prof1983@ya.ru>
@Created 16.11.2012
@LastMod 22.02.2013
}
unit ASystemEvents;

interface

uses
  ABase,
  ASystemProcVars;

// --- ASystem ---

function ASystem_OnAfterRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_OnAfterRun_Disconnect(Callback: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_OnBeforeRun_Disconnect(Callback: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- ASystem ---

function ASystem_OnAfterRun_Connect(Callback: ACallbackProc; Weight: AInt): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnAfterRun_Connect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnAfterRun_Connect(Callback, Weight);
end;

function ASystem_OnAfterRun_Disconnect(Callback: ACallbackProc): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnAfterRun_Disconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnAfterRun_Disconnect(Callback);
end;

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc; Weight: AInt): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Connect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnBeforeRun_Connect(Callback, Weight);
end;

function ASystem_OnBeforeRun_Disconnect(Callback: ACallbackProc): AInt;
begin
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Disconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_OnBeforeRun_Disconnect(Callback);
end;

end.
 