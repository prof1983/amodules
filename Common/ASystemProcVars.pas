{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 27.08.2012
}
unit ASystemProcVars;

interface

uses
  ASystemProcTypes;

var
  ASystem_GetConfig: ASystem_GetConfig_Proc;
  ASystem_GetExePath: ASystem_GetExePath_Proc;
  ASystem_OnBeforeRunDisconnect: ASystem_OnBeforeRunDisconnect_Proc;
  ASystem_ParamStr: ASystem_ParamStr_Proc;
  ASystem_Prepare: ASystem_Prepare_Proc;
  ASystem_Prepare2: ASystem_Prepare2_Proc;
  ASystem_Prepare2A: ASystem_Prepare2A_Proc;
  ASystem_Prepare4A: ASystem_Prepare4A_Proc;
  ASystem_ProcessMessages: ASystem_ProcessMessages_Proc;
  ASystem_ShowMessage: ASystem_ShowMessage_Proc;
  ASystem_ShowMessageEx: ASystem_ShowMessageEx_Proc;

implementation

end.
 