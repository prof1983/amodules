{**
@Abstract APlugins get proc address from lib
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 27.08.2012
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
  APlugins_GetCount := ALibrary_GetProcAddressP(Lib, 'APlugins_GetCount');
  APlugins_Delete := ALibrary_GetProcAddressP(Lib, 'APlugins_Delete');
  APlugins_FindA := ALibrary_GetProcAddressP(Lib, 'APlugins_FindA');
  APlugins_Init := ALibrary_GetProcAddressP(Lib, 'APlugins_Init');
  APlugins_Fin := ALibrary_GetProcAddressP(Lib, 'APlugins_Fin');
  Result := 0;
end;

end.
 