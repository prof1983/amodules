{**
@Abstract ARuntime main function
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit ARuntimeMain;

interface

uses
  ABase, ARuntimeBase, ARuntimeProcVars;

function ARuntime_AddModule(const Module: AModule_Type): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_FindModuleByName(Name: PAnsiChar): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_FindModuleByUid(Uid: AModuleUid): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleByName(Name: PAnsiChar; out Module: AModule_Type): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleNameByIndexWS(Index: AInteger): AWideString; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModulesCount(): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_InitModuleByName(Name: PAnsiChar): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInteger; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- ARuntime ---

function ARuntime_AddModule(const Module: AModule_Type): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_AddModule)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_AddModule(Module);
end;

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_DeleteModuleByUid)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_DeleteModuleByUid(Uid);
end;

function ARuntime_FindModuleByName(Name: PAnsiChar): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_FindModuleByName)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_FindModuleByName(Name);
end;

function ARuntime_FindModuleByUid(Uid: AModuleUid): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_FindModuleByUid)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_FindModuleByUid(Uid);
end;

function ARuntime_GetModuleByName(Name: PAnsiChar; out Module: AModule_Type): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleByName)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleByName(Name, Module);
end;

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleByUid)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleByUid(Uid, Module);
end;

function ARuntime_GetModuleNameByIndexWS(Index: AInteger): AWideString;
var
  TmpName: array[0..256] of AnsiChar;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleNameByIndex)) then
  begin
    Result := '';
    Exit;
  end;
  if (ARuntimeProcVars.ARuntime_GetModuleNameByIndex(Index, TmpName, 255) > 0) then
    Result := AWideString(AnsiString(TmpName));
end;

function ARuntime_GetModulesCount(): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModulesCount)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModulesCount();
end;

function ARuntime_InitModuleByName(Name: PAnsiChar): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_InitModuleByName)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_InitModuleByName(Name);
end;

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInteger;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_InitModuleByUid)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_InitModuleByUid(Uid);
end;

end.
 