{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 25.01.2013
}
unit ASettingsModClient;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ARuntimeBase, ARuntimeMain, ASettingsBase, ASettingsProcRec, ASettingsProcSet;

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
    Result := ASettings_SetProcs(Module.GetProc);
    Exit;
  end;

  {$ifdef ADepr}
  if Assigned(Module.Procs) then
  begin
    Result := ASettings_SetProcs(ASettingsProcs_Type(Module.Procs^));
    Exit;
  end;
  {$endif}

  Result := 0;
end;

end.
 