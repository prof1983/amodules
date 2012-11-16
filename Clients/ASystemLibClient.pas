{**
@Abstract ASystem get proc address from lib
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 16.11.2012
}
unit ASystemLibClient;

interface

uses
  ABase, ALibraries, ASystemProcVars;

function ASystem_LoadFromLib(Lib: ALibrary): AError;

implementation

function ASystem_LoadFromLib(Lib: ALibrary): AError;
begin
  ASystem_GetConfig := ALibrary_GetProcAddressP(Lib, 'ASystem_GetConfig');
  ASystem_GetExePath := ALibrary_GetProcAddressP(Lib, 'ASystem_GetExePath');
  ASystem_GetTitle := ALibrary_GetProcAddressP(Lib, 'ASystem_GetTitle');
  ASystem_OnBeforeRunConnect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnBeforeRun_Connect');
  ASystem_OnBeforeRunDisconnect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnBeforeRun_Disconnect');
  ASystem_ParamStr := ALibrary_GetProcAddressP(Lib, 'ASystem_ParamStr');
  ASystem_Prepare := ALibrary_GetProcAddressP(Lib, 'ASystem_Prepare');
  ASystem_Prepare2 := ALibrary_GetProcAddressP(Lib, 'ASystem_Prepare2');
  ASystem_Prepare2A := ALibrary_GetProcAddressP(Lib, 'ASystem_Prepare2A');
  ASystem_Prepare4A := ALibrary_GetProcAddressP(Lib, 'ASystem_Prepare4A');
  ASystem_ProcessMessages := ALibrary_GetProcAddressP(Lib, 'ASystem_ProcessMessages');
  ASystem_ShowMessage := ALibrary_GetProcAddressP(Lib, 'ASystem_ShowMessage');
  ASystem_ShowMessageEx := ALibrary_GetProcAddressP(Lib, 'ASystem_ShowMessageEx');
  Result := 0;
end;

end.
 