{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 25.01.2013
}
unit ASystemProcSet;

interface

uses
  ABase, ASystemBase, ASystemProcRec, ASystemProcVars;

{$ifdef ADepr}
function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
function System_SetProcsP(Procs: PSystemProcs): AInteger;
{$endif}

implementation

{$ifdef ADepr}
function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
begin
  ASystemProcVars.ASystem_GetConfig := Procs.GetConfig;
  ASystemProcVars.ASystem_GetIsShutdown := Procs.GetIsShutdown;
  ASystemProcVars.ASystem_GetResourceStringWS := Procs.GetResourceStringWS;
  ASystemProcVars.ASystem_ProcessMessages02 := Procs.ProcessMessages02;
  ASystemProcVars.ASystem_SetConfig := Procs.SetConfig;
  ASystemProcVars.ASystem_ShowError02 := Procs.ShowError02;
  ASystemProcVars.ASystem_ShowMessageWS := Procs.ShowMessageWS;
  ASystemProcVars.ASystem_ShowMessageExWS := Procs.ShowMessageExWS;
  ASystemProcVars.ASystem_Shutdown02 := Procs.Shutdown02;

  ASystemProcVars.ASystem_SetOnProcessMessages02 := Procs.SetOnProcessMessages02;
  ASystemProcVars.ASystem_SetOnRun02 := Procs.SetOnRun;
  ASystemProcVars.ASystem_SetOnShutdown02 := Procs.SetOnShutdown;
  ASystemProcVars.ASystem_SetOnShowError := Procs.SetOnShowError;
  ASystemProcVars.ASystem_SetOnShowMessage := Procs.SetOnShowMessage;

  ASystemProcVars.ASystem_OnAfterRun := Procs.OnAfterRun;
  ASystemProcVars.ASystem_OnBeforeRun := Procs.OnBeforeRun;
  ASystemProcVars.ASystem_OnAfterRun_Connect02 := Procs.OnAfterRun_Connect02;
  ASystemProcVars.ASystem_OnAfterRun_Disconnect02 := Procs.OnAfterRun_Disconnect02;
  ASystemProcVars.ASystem_OnBeforeRun_Connect02 := Procs.OnBeforeRun_Connect02;
  ASystemProcVars.ASystem_OnBeforeRun_Disconnect02 := Procs.OnBeforeRun_Disconnect02;

  {$IFDEF ARUNTIMEOLD}
  Runtime_Module_Count := ASystem.Module_Count;
  Runtime_Module_FindByName := ASystem.Module_FindByName;
  Runtime_Module_GetByName := ASystem.Module_GetByName;
  Runtime_Module_GetNameByIndex := ASystem.Module_GetNameByIndex;
  Runtime_Module_Register := ASystem.Module_Register02;

  Runtime_Module_InitByName := ASystem.Module_InitByName;
  Runtime_Module_DeleteByName := ASystem.Module_DeleteByName;
  {$ENDIF ARUNTIMEOLD}

  Result := 0;
end;
{$endif}

{$ifdef ADepr}
function System_SetProcsP(Procs: PSystemProcs): AInteger;
begin
  Result := System_SetProcs(Procs^);
end;
{$endif}

end.
