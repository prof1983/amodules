{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 18.02.2013
}
unit ASettingsModClient;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  ASettingsBase,
  ASettingsProcSet;

function ASettings_Boot(): AError; stdcall;

implementation

function ASettings_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByName(ASettings_Name, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;

  if Assigned(Module.GetProc) then
  begin
    Result := ASettings_SetProcs2(Module.GetProc);
    Exit;
  end;

  Result := 0;
end;

end.
 