{**
@Author Prof1983 <prof1983@ya.ru>
@Created 18.02.2013
@LastMod 18.02.2013
}
unit AEventsMain;

interface

// --- AEvent ---

function AEvent_Clear(Event: AEvent): AError; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_Connect(Event: AEvent; Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_Disconnect(Event: AEvent; Callback: ACallbackProc): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_Free(Event: AEvent): AError; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_GetListenersCount(Event: AEvent): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_GetName(Event: AEvent; out Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_GetNameA(Event: AEvent; Value: AStr; MaxLen: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_GetNameP(Event: AEvent): APascalString;

function AEvent_Invoke(Event: AEvent; Data: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_New(Obj: AInt; const Name: AString_Type): AEvent; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_NewA(Obj: AInt; Name: AStr): AEvent; {$ifdef AStdCall}stdcall;{$endif}

function AEvent_NewP(Obj: AInt; const Name: APascalString): AEvent;

implementation

// --- AEvent ---

function AEvent_Clear(Event: AEvent): AError;
begin
  xxx
end;

function AEvent_Connect(Event: AEvent; Callback: ACallbackProc; Weight: AInt): AInt;
begin
  xxx
end;

function AEvent_Disconnect(Event: AEvent; Callback: ACallbackProc): AInt;
begin
  xxx
end;

function AEvent_Free(Event: AEvent): AError;
begin
  xxx
end;

function AEvent_GetListenersCount(Event: AEvent): AInt;
begin
  xxx
end;

function AEvent_GetName(Event: AEvent; out Value: AString_Type): AInt;
begin
  xxx
end;

function AEvent_GetNameA(Event: AEvent; Value: AStr; MaxLen: AInt): AInt;
begin
  xxx
end;

function AEvent_GetNameP(Event: AEvent): APascalString;
begin
  xxx
end;

function AEvent_Invoke(Event: AEvent; Data: AInt): AInt;
begin
  xxx
end;

function AEvent_New(Obj: AInt; const Name: AString_Type): AEvent;
begin
  xxx
end;

function AEvent_NewA(Obj: AInt; Name: AStr): AEvent;
begin
  xxx
end;

function AEvent_NewP(Obj: AInt; const Name: APascalString): AEvent;
begin
  xxx
end;

end.
 