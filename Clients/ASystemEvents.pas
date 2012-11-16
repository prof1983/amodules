{**
@Abstract ASystem client
@Author Prof1983 <prof1983@ya.ru>
@Created 16.11.2012
@LastMod 16.11.2012
}
unit ASystemEvents;

interface

uses
  ABase,
  ASystemProcVars;

function ASystem_OnAfterRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;

function ASystem_OnAfterRun_Disconnect(Callback: ACallbackProc): AInt; stdcall;

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;

function ASystem_OnBeforeRun_Disconnect(Callback: ACallbackProc): AInt; stdcall;

implementation

function ASystem_OnAfterRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt;
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

function ASystem_OnBeforeRun_Connect(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt;
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
 