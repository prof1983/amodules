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

{
const
  ASystem_Name02 = 'System';
  ASystem_Name03 = ASystemName;
}

function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
function System_SetProcsP(Procs: PSystemProcs): AInteger;

implementation

function System_SetProcs(const Procs: ASystemProcs_Type): AInteger;
begin
  ASystem_GetConfig := Procs.GetConfig;
  ASystem_GetIsShutdown := Procs.GetIsShutdown;
  //Runtime_GetResourceString := Procs.GetResourceString02;
  ASystem_ProcessMessages := Procs.ProcessMessages02;
  ASystem_SetConfig := Procs.SetConfig;
  ASystem_ShowError := Procs.ShowError02;
  //Runtime_ShowMessage := Procs.ShowMessageWS;
  //Runtime_ShowMessageA := Procs.ShowMessageA;
  ASystem_Shutdown := Procs.Shutdown02;

  ASystem_SetOnProcessMessages := Procs.SetOnProcessMessages02;
  ASystem_SetOnRun := Procs.SetOnRun;
  ASystem_SetOnShutdown := Procs.SetOnShutdown;
  ASystem_SetOnShowError := Procs.SetOnShowError;
  ASystem_SetOnShowMessage := Procs.SetOnShowMessage;

  ASystem_OnAfterRun := Procs.OnAfterRun;
  ASystem_OnBeforeRun := Procs.OnBeforeRun;
  ASystem_OnAfterRun_Connect := Procs.OnAfterRun_Connect02;
  ASystem_OnAfterRun_Disconnect := Procs.OnAfterRun_Disconnect02;
  ASystem_OnBeforeRun_Connect := Procs.OnBeforeRun_Connect02;
  ASystem_OnBeforeRun_Disconnect := Procs.OnBeforeRun_Disconnect02;

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
