{**
@Abstract AStrings get proc address from lib
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 18.02.2013
}
unit AStringsLibClient;

interface

uses
  ABase, ALibraries, AStringsProcVars;

function AStrings_LoadFromLib(Lib: ALibrary): AError;

implementation

function AStrings_LoadFromLib(Lib: ALibrary): AError;
begin
  AString_Assign := ALibrary_GetProcAddressP(Lib, 'AString_Assign');
  AString_AssignA := ALibrary_GetProcAddressP(Lib, 'AString_AssignA');
  AString_Clear := ALibrary_GetProcAddressP(Lib, 'AString_Clear');
  AString_Copy := ALibrary_GetProcAddressP(Lib, 'AString_Copy');
  AString_CopyA := ALibrary_GetProcAddressP(Lib, 'AString_CopyA');
  AString_GetChar := ALibrary_GetProcAddressP(Lib, 'AString_GetChar');
  AString_GetLength := ALibrary_GetProcAddressP(Lib, 'AString_GetLength');
  AStrings_Fin := ALibrary_GetProcAddressP(Lib, 'AStrings_Fin');
  AStrings_Init := ALibrary_GetProcAddressP(Lib, 'AStrings_Init');
  Result := 0;
end;

end.
 