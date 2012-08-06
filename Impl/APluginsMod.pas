{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 10.04.2009
@LastMod 06.08.2012
}
unit APluginsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, APlugins, APluginsBase, {$IFDEF ADepr}APluginsProcRec,{$ENDIF}
  ARuntime, ARuntimeMod, ARuntimeBase, ARuntimeProcRec,
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

type
  APluginBootProc = function(const Runtime: ARuntimeProcs_Type): Integer; stdcall;

{ Events }

function DoCheckPlugin(Lib: ALibrary): ABoolean; stdcall;
var
  PluginBootProc: APluginBootProc;
begin
  if not(ASystem.Library_GetSymbolP(Lib, 'Plugin_Boot', @PluginBootProc)) then
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

// --- APluginsMod ---

function APluginsMod_Boot(): AError;
begin
  if (ARuntime_FindModuleByName(APlugins_Name) > 0) then
  begin
    Result := -2;
    Exit;
  end;

  if (ARuntime.Modules_FindByUid(APlugins_Uid) > 0) then
  begin
    Result := -3;
    Exit;
  end;

  APlugins_SetOnCheckPlugin(DoCheckPlugin);
  Result := AModule_Register(PluginsModule);
end;

function APluginsMod_Fin(): AError;
begin
  Result := APlugins_Fin();
end;

function APluginsMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function APluginsMod_Init(): AError;
begin
  ARuntime.Modules_InitByUid(ASystem_Uid);
  Result := APlugins_Init();
end;

end.
