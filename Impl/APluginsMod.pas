{**
@Abstract APlugins
@Author Prof1983 <prof1983@ya.ru>
@Created 10.04.2009
@LastMod 03.08.2012
}
unit APluginsMod;

interface

uses
  ABase, APlugins, APluginsBase, APluginsProcRec,
  ARuntime, ARuntime04, ARuntimeBase, ARuntimeProcRec,
  ASystem, ASystemBase;

function Plugins_Boot(): AInteger; stdcall;

function Plugins_Fin(): AError; stdcall;

function Plugins_GetProc(ProcName: AStr): Pointer; stdcall;

function Plugins_Init(): AError; stdcall;

const
  PluginsProcs: APluginsProcs_Type = (
    AddPlugin: APlugins.AddPlugin;                              // 00
    Clear: APlugins.Clear;                                      // 01
    Count: APlugins.GetCount;                                   // 02
    Delete: APlugins.Delete;                                    // 03
    Find: APlugins.Find02;                                      // 04
    Init: Plugins_Init;                                         // 05
    Fin: Plugins_Fin;                                           // 06
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

implementation

const
  APlugins_Version = $00040000;

const
  PluginsModule: AModule_Type = (
    Version: APlugins_Version;
    Uid: APlugins_Uid;
    Name: APlugins_Name;
    Description: nil;
    Init: Plugins_Init;
    Fin: Plugins_Fin;
    GetProc: Plugins_GetProc;
    Procs: Addr(PluginsProcs);
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

{ Module }

function Plugins_Boot(): AInteger;
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

function Plugins_Fin(): AError;
begin
  Result := APlugins_Fin();
end;

function Plugins_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function Plugins_Init(): AError;
begin
  ARuntime.Modules_InitByUid(ASystem_Uid);
  Result := APlugins_Init();
end;

initialization
  //Plugins_SetProcs(PluginsProcs);
end.
