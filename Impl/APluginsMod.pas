{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 10.04.2009
@LastMod 12.12.2012
}
unit APluginsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ALibraries,
  APlugins, APluginsBase, APluginsMain, {$IFDEF ADepr}APluginsProcRec,{$ENDIF}
  {$ifdef ADepr}ARuntimeMod,{$endif} ARuntimeBase, ARuntimeMain, {$ifdef ADepr}ARuntimeProcRec,{$endif}
  ASystem, ASystemBase;

function APluginsMod_Boot(): AError; stdcall;

function APluginsMod_Fin(): AError; stdcall;

function APluginsMod_GetProc(ProcName: AStr): Pointer; stdcall;

function APluginsMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  PluginsProcs: APluginsProcs_Type = (
    AddPlugin: APlugins.AddPlugin;                              // 00
    Clear: APlugins.Clear;                                      // 01
    Count: APlugins.GetCount;                                   // 02
    Delete: APlugins.Delete;                                    // 03
    Find: APlugins.Find02;                                      // 04
    Init: APluginsMod_Init;                                     // 05
    Fin: APluginsMod_Fin;                                       // 06
    Reserved07: 0;
    Reserved08: 0;
    Reserved09: 0;
    Reserved10: 0;
    Reserved11: 0;
    Reserved12: 0;
    Reserved13: 0;
    Reserved14: 0;
    Reserved15: 0;

    Reserved16: 0;
    Reserved17: 0;
    Reserved18: 0;
    Reserved19: 0;
    Reserved20: 0;
    Reserved21: 0;
    Reserved22: 0;
    Reserved23: 0;
    Reserved24: 0;
    Reserved25: 0;
    Reserved26: 0;
    Reserved27: 0;
    Reserved28: 0;
    Reserved29: 0;
    Reserved30: 0;
    Reserved31: 0;
    );
{$ENDIF ADepr}

implementation

const
  APlugins_Version = $00040000;

const
  PluginsModule: AModule_Type = (
    Version: APlugins_Version;
    Uid: APlugins_Uid;
    Name: APlugins_Name;
    Description: nil;
    Init: APluginsMod_Init;
    Fin: APluginsMod_Fin;
    GetProc: APluginsMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(PluginsProcs){$ELSE}nil{$ENDIF};
    );

{$ifdef ADepr}
type
  APluginBootProc = function(const Runtime: ARuntimeProcs_Type): Integer; stdcall;
{$endif}

{ Events }

{$ifdef ADepr}
function DoCheckPlugin(Lib: ALibrary): ABoolean; stdcall;
var
  PluginBootProc: APluginBootProc;
begin
  if not(ALibrary_GetSymbolP(Lib, 'Plugin_Boot', @PluginBootProc)) then
  begin
    Result := False;
    Exit;
  end;
  try
    Result := (PluginBootProc(RuntimeProcs) >= 0);
  except
    Result := False;
  end;
end;
{$endif}

// --- APluginsMod ---

function APluginsMod_Boot(): AError;
begin
  {$ifdef ADepr}
  APlugins_SetOnCheckPlugin(DoCheckPlugin);
  {$endif}
  Result := ARuntime_RegisterModule(PluginsModule);
end;

function APluginsMod_Fin(): AError;
begin
  Result := APlugins_Fin();
end;

function APluginsMod_GetProc(ProcName: AStr): Pointer;
begin
  if (ProcName = 'APlugins_AddPluginA') then
    Result := Addr(APlugins_AddPluginA)
  else if (ProcName = 'APlugins_Clear') then
    Result := Addr(APlugins_Clear)
  else if (ProcName = 'APlugins_Delete') then
    Result := Addr(APlugins_Delete)
  else if (ProcName = 'APlugins_Fin') then
    Result := Addr(APlugins_Fin)
  else if (ProcName = 'APlugins_FindA') then
    Result := Addr(APlugins_FindA)
  else if (ProcName = 'APlugins_GetCount') then
    Result := Addr(APlugins_GetCount)
  else if (ProcName = 'APlugins_Init') then
    Result := Addr(APlugins_Init)
  else if (ProcName = 'APlugins_SetOnCheckPlugin') then
    Result := Addr(APlugins_SetOnCheckPlugin)
  else
    Result := nil;
end;

function APluginsMod_Init(): AError;
begin
  ARuntime_InitModuleByUid(ASystem_Uid);
  Result := APlugins_Init();
end;

end.
