{**
@Abstract APlugins get proc address from lib
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 18.02.2013
}
unit APluginsLibClient;

interface

uses
  ABase, ALibraries, APluginsProcVars;

function APlugins_LoadFromLib(Lib: ALibrary): AError;

implementation

function APlugins_LoadFromLib(Lib: ALibrary): AError;
begin
  APlugins_AddPluginA := ALibrary_GetProcAddressP(Lib, 'APlugins_AddPluginA');
  APlugins_Clear := ALibrary_GetProcAddressP(Lib, 'APlugins_Clear');
  APlugins_Delete := ALibrary_GetProcAddressP(Lib, 'APlugins_Delete');
  APlugins_Fin := ALibrary_GetProcAddressP(Lib, 'APlugins_Fin');
  APlugins_FinAll := ALibrary_GetProcAddressP(Lib, 'APlugins_FinAll');
  APlugins_Find2A := ALibrary_GetProcAddressP(Lib, 'APlugins_Find2A');
  APlugins_FindA := ALibrary_GetProcAddressP(Lib, 'APlugins_FindA');
  APlugins_GetCount := ALibrary_GetProcAddressP(Lib, 'APlugins_GetCount');
  APlugins_Init := ALibrary_GetProcAddressP(Lib, 'APlugins_Init');
  APlugins_Prepare := ALibrary_GetProcAddressP(Lib, 'APlugins_Prepare');
  APlugins_SetOnCheckPlugin := ALibrary_GetProcAddressP(Lib, 'APlugins_SetOnCheckPlugin');
  Result := 0;
end;

end.
 