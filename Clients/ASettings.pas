{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 01.08.2012
@LastMod 19.11.2012
}
unit ASettings;

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettingsBase,
  ASettingsProcVars, AStrings;

// --- Public ---

function Config_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString; DefValue: ABoolean): ABoolean; stdcall;

implementation

// --- Public ---

function Config_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString; DefValue: ABoolean): ABoolean;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  if Assigned(ASettingsProcVars.ASettings_ReadBoolDef) then
  begin
    if (AString_AssignP(SSection, Section) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    if (AString_AssignP(SName, Name) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := ASettingsProcVars.ASettings_ReadBoolDef(Config, SSection, SName, DefValue);
    Exit;
  end;

  {$IFDEF ADepr}
  if not(Assigned(ASettingsProcVars.ASettings_ReadBoolWS)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadBoolWS(Config, Section, Name, DefValue);
  {$ENDIF}
end;

end.
 