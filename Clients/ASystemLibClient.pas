{**
@Abstract ASystem get proc address from lib
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 18.02.2013
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
  ASystem_GetDataDirectoryPath := ALibrary_GetProcAddressP(Lib, 'ASystem_GetDataDirectoryPath');
  ASystem_GetExePath := ALibrary_GetProcAddressP(Lib, 'ASystem_GetExePath');
  ASystem_GetProgramName := ALibrary_GetProcAddressP(Lib, 'ASystem_GetProgramName');
  ASystem_GetResourceString := ALibrary_GetProcAddressP(Lib, 'ASystem_GetResourceString');
  ASystem_GetTitle := ALibrary_GetProcAddressP(Lib, 'ASystem_GetTitle');
  ASystem_OnAfterRun_Connect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnAfterRun_Connect');
  ASystem_OnAfterRun_Disconnect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnAfterRun_Disconnect');
  ASystem_OnBeforeRun_Connect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnBeforeRun_Connect');
  ASystem_OnBeforeRun_Disconnect := ALibrary_GetProcAddressP(Lib, 'ASystem_OnBeforeRun_Disconnect');
  ASystem_ParamStr := ALibrary_GetProcAddressP(Lib, 'ASystem_ParamStr');
  ASystem_Prepare := ALibrary_GetProcAddressP(Lib, 'ASystem_Prepare');
  ASystem_PrepareA := ALibrary_GetProcAddressP(Lib, 'ASystem_PrepareA');
  ASystem_ProcessMessages := ALibrary_GetProcAddressP(Lib, 'ASystem_ProcessMessages');
  ASystem_ShowMessage := ALibrary_GetProcAddressP(Lib, 'ASystem_ShowMessage');
  ASystem_ShowMessageEx := ALibrary_GetProcAddressP(Lib, 'ASystem_ShowMessageEx');
  Result := 0;
end;

end.
 