{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 19.11.2012
}
unit ASystemProcSet;

interface

uses
  ABase, ASystemBase, ASystemProcRec, ASystemProcVars;

function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
function System_SetProcsP(Procs: PSystemProcs): AInteger;

implementation

function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
begin
  ASystem_GetConfig := Procs.GetConfig;
  ASystem_GetIsShutdown := Procs.GetIsShutdown;
  ASystem_GetResourceStringWS := Procs.GetResourceStringWS;
  ASystem_ProcessMessages02 := Procs.ProcessMessages02;
  ASystem_SetConfig := Procs.SetConfig;
  ASystem_ShowError02 := Procs.ShowError02;
  ASystem_ShowMessageWS := Procs.ShowMessageWS;
  ASystem_ShowMessageExWS := Procs.ShowMessageExWS;
  ASystem_Shutdown02 := Procs.Shutdown02;

  ASystem_SetOnProcessMessages02 := Procs.SetOnProcessMessages02;
  ASystem_SetOnRun02 := Procs.SetOnRun;
  ASystem_SetOnShutdown02 := Procs.SetOnShutdown;
  ASystem_SetOnShowError := Procs.SetOnShowError;
  ASystem_SetOnShowMessage := Procs.SetOnShowMessage;

  ASystem_OnAfterRun := Procs.OnAfterRun;
  ASystem_OnBeforeRun := Procs.OnBeforeRun;
  ASystem_OnAfterRun_Connect02 := Procs.OnAfterRun_Connect02;
  ASystem_OnAfterRun_Disconnect02 := Procs.OnAfterRun_Disconnect02;
  ASystem_OnBeforeRun_Connect02 := Procs.OnBeforeRun_Connect02;
  ASystem_OnBeforeRun_Disconnect02 := Procs.OnBeforeRun_Disconnect02;

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

function System_SetProcsP(Procs: PSystemProcs): AInteger;
begin
  Result := System_SetProcs(Procs^);
end;

end.
