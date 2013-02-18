{**
@Abstract ARuntime main function
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 18.02.2013
}
unit ARuntimeMain;

interface

uses
  ABase, ARuntimeBase, ARuntimeProcVars;

// --- ARuntime ---

function ARuntime_AddModule(const Module: AModule_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_DeleteModuleByIndex(Index: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_DeleteModuleByName(Name: AStr): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_FindModuleByName(Name: AStr): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_FindModuleByUid(Uid: AModuleUid): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetIsShutdown(): ABool; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleByName(Name: AStr; out Module: AModule_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleNameByIndex(Index: AInt; Name: AStr; MaxLen: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleNameByIndexP(Index: AInt): APascalString;

function ARuntime_GetModuleNameByUid(Uid: AInt; Name: AStr; MaxLen: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleUidByIndex(Index: AInt): AModuleUid; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModuleProcsByUid(Uid: AModuleUid): Pointer; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetModulesCount(): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetOnAfterRun(): AProc; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetOnBeforeRun(): AProc; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_GetProcByName(ModuleName, ProcName: AStr): Pointer; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_InitModuleByName(Name: AStr): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_RegisterModule(const Module: AModule_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_Run(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_SetOnAfterRun(Value: AProc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_SetOnBeforeRun(Value: AProc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_SetOnRun(Value: AProc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_SetOnShutdown(Value: AProc): AError; {$ifdef AStdCall}stdcall;{$endif}

function ARuntime_Shutdown(): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- ARuntime ---

function ARuntime_AddModule(const Module: AModule_Type): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_AddModule)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_AddModule(Module);
end;

function ARuntime_DeleteModuleByIndex(Index: AInt): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_DeleteModuleByIndex)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_DeleteModuleByIndex(Index);
end;

function ARuntime_DeleteModuleByName(Name: AStr): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_DeleteModuleByName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_DeleteModuleByName(Name);
end;

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_DeleteModuleByUid)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_DeleteModuleByUid(Uid);
end;

function ARuntime_Fin(): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_Fin();
end;

function ARuntime_FindModuleByName(Name: AStr): AInt;
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

function ARuntime_GetIsShutdown(): ABool;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetIsShutdown)) then
  begin
    Result := False;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetIsShutdown();
end;

function ARuntime_GetModuleByName(Name: PAnsiChar; out Module: AModule_Type): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleByName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleByName(Name, Module);
end;

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleByUid)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleByUid(Uid, Module);
end;

function ARuntime_GetModuleNameByIndex(Index: AInt; Name: AStr; MaxLen: AInt): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleNameByIndex)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleNameByIndex(Index, Name, MaxLen);
end;

function ARuntime_GetModuleNameByIndexP(Index: AInt): APascalString;
var
  TmpName: array[0..256] of AnsiChar;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleNameByIndex)) then
  begin
    Result := '';
    Exit;
  end;
  if (ARuntimeProcVars.ARuntime_GetModuleNameByIndex(Index, TmpName, 255) > 0) then
    Result := APascalString(AnsiString(TmpName));
end;

function ARuntime_GetModuleNameByUid(Uid: AInt; Name: AStr; MaxLen: AInt): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleNameByUid)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleNameByUid(Uid, Name, MaxLen);
end;

function ARuntime_GetModuleProcsByUid(Uid: AModuleUid): Pointer;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleProcsByUid)) then
  begin
    Result := nil;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleProcsByUid(Uid);
end;

function ARuntime_GetModulesCount(): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModulesCount)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModulesCount();
end;

function ARuntime_GetModuleUidByIndex(Index: AInt): AModuleUid;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetModuleUidByIndex)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetModuleUidByIndex(Index);
end;

function ARuntime_GetOnAfterRun(): AProc;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetOnAfterRun)) then
  begin
    Result := nil;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetOnAfterRun();
end;

function ARuntime_GetOnBeforeRun(): AProc;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetOnBeforeRun)) then
  begin
    Result := nil;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetOnBeforeRun();
end;

function ARuntime_GetProcByName(ModuleName, ProcName: AStr): Pointer;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_GetProcByName)) then
  begin
    Result := nil;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_GetProcByName(ModuleName, ProcName);
end;

function ARuntime_Init(): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_Init();
end;

function ARuntime_InitModuleByName(Name: AStr): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_InitModuleByName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_InitModuleByName(Name);
end;

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_InitModuleByUid)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_InitModuleByUid(Uid);
end;

function ARuntime_RegisterModule(const Module: AModule_Type): AInt;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_RegisterModule)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_RegisterModule(Module);
end;

function ARuntime_Run(): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_Run)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_Run();
end;

function ARuntime_SetOnAfterRun(Value: AProc): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_SetOnAfterRun)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_SetOnAfterRun(Value);
end;

function ARuntime_SetOnBeforeRun(Value: AProc): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_SetOnBeforeRun)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_SetOnBeforeRun(Value);
end;

function ARuntime_SetOnRun(Value: AProc): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_SetOnRun)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_SetOnRun(Value);
end;

function ARuntime_SetOnShutdown(Value: AProc): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_SetOnShutdown)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_SetOnShutdown(Value);
end;

function ARuntime_Shutdown(): AError;
begin
  if not(Assigned(ARuntimeProcVars.ARuntime_Shutdown)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ARuntimeProcVars.ARuntime_Shutdown();
end;

end.
 