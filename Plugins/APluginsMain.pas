{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 18.02.2013
@LastMod 18.04.2013
}
unit APluginsMain;

{define AStdCall}

interface

uses
  ABase,
  APluginsBase,
  APluginsProcVars;

// --- APlugins ---

function APlugins_AddPluginA(FileName: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_AddPluginP(const FileName: APascalString): AError;

function APlugins_Clear(): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Delete(Index: AInteger): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_FinAll(): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Find2A(Path, Exclusion: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Find2P(const Path, Exclusion: APascalString): AError;

function APlugins_Find3A(Path, Exclusion: AStr; SubDirsOnly: ABool): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Find3P(const Path, Exclusion: APascalString; SubDirsOnly: ABool): AError;

function APlugins_FindA(Path: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_FindP(const Path: APascalString): AError;

function APlugins_GetCount(): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_Prepare(Value: AVersion): AError; {$ifdef AStdCall}stdcall;{$endif}

function APlugins_SetOnCheckPlugin(CheckPluginProc: TCheckPluginProc): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- APlugins ---

function APlugins_AddPluginA(FileName: AStr): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_AddPluginA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_AddPluginA(FileName);
end;

function APlugins_AddPluginP(const FileName: APascalString): AError;
begin
  Result := APlugins_AddPluginA(AStr(AnsiString(FileName)));
end;

function APlugins_Clear(): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Clear)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Clear();
end;

function APlugins_Delete(Index: AInt): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Delete)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Delete(Index);
end;

function APlugins_Fin(): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Fin();
end;

function APlugins_FinAll(): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_FinAll)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_FinAll();
end;

function APlugins_Find2A(Path, Exclusion: AStr): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Find2A)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Find2A(Path, Exclusion);
end;

function APlugins_Find2P(const Path, Exclusion: APascalString): AError;
begin
  Result := APlugins_Find2A(AStr(AnsiString(Path)), AStr(AnsiString(Exclusion)));
end;

function APlugins_Find3A(Path, Exclusion: AStr; SubDirsOnly: ABool): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Find3A)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Find3A(Path, Exclusion, SubDirsOnly);
end;

function APlugins_Find3P(const Path, Exclusion: APascalString; SubDirsOnly: ABool): AError;
begin
  Result := APlugins_Find3A(AStr(AnsiString(Path)), AStr(AnsiString(Exclusion)), SubDirsOnly);
end;

function APlugins_FindA(Path: AStr): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_FindA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_FindA(Path);
end;

function APlugins_FindP(const Path: APascalString): AError;
begin
  Result := APlugins_FindA(AStr(AnsiString(Path)));
end;

function APlugins_GetCount(): AInteger;
begin
  if not(Assigned(APluginsProcVars.APlugins_GetCount)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_GetCount();
end;

function APlugins_Init(): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Init();
end;

function APlugins_Prepare(Value: AVersion): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_Prepare)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_Prepare(Value);
end;

function APlugins_SetOnCheckPlugin(CheckPluginProc: TCheckPluginProc): AError;
begin
  if not(Assigned(APluginsProcVars.APlugins_SetOnCheckPlugin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := APluginsProcVars.APlugins_SetOnCheckPlugin(CheckPluginProc);
end;

end.
 