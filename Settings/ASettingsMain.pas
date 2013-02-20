{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 26.12.2012
@LastMod 20.02.2013
}
unit ASettingsMain;

{define AStdCall}

interface

uses
  ABase,
  ABaseTypes,
  ASettingsProcVars,
  AStringMain;

// --- ASettings ---

function ASettings_Close(Config: AConfig): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_DeleteKey(Config: AConfig; const Section, Name: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_DeleteKeyA(Config: AConfig; Section, Name: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_DeleteKeyP(Config: AConfig; const Section, Name: APascalString): AError;

function ASettings_DeleteSection(Config: AConfig; const Section: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section - const }
function ASettings_DeleteSectionA(Config: AConfig; Section: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_DeleteSectionP(Config: AConfig; const Section: APascalString): AError;

function ASettings_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadBoolDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: ABool): ABool; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_ReadBoolDefA(Config: AConfig; Section, Name: AStr;
    DefValue: ABool): ABool; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: ABool): ABool;

function ASettings_ReadDateTimeDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: TDateTime): TDateTime; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_ReadDateTimeDefA(Config: AConfig; Section, Name: AStr;
    DefValue: TDateTime): TDateTime; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadDateTimeDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: TDateTime): TDateTime;

function ASettings_ReadFloatDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AFloat): AFloat; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_ReadFloatDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AFloat): AFloat; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadFloatDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AFloat): AFloat;

function ASettings_ReadIntDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

{ Section - const
  Name - const }
function ASettings_ReadIntDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadIntDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;

function ASettings_ReadIntegerDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;

function ASettings_ReadSection(Config: AConfig; const Section: AString_Type;
    Strings: AStringList): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section - const }
function ASettings_ReadSectionA(Config: AConfig; Section: AStr;
    Strings: AStringList): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadSectionP(Config: AConfig; const Section: APascalString;
    Strings: AStringList): AError;

function ASettings_ReadString(Config: AConfig; const Section, Name: AString_Type;
    out Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

{ Section - const
  Name - const
  Value - out}
function ASettings_ReadStringA(Config: AConfig; Section, Name: AStr;
    Value: AStr; MaxLen: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadStringDef(Config: AConfig; const Section, Name, DefValue: AString_Type;
    out Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

{ Section - const
  Name - const
  DefValue - const
  Value - out}
function ASettings_ReadStringDefA(Config: AConfig; Section, Name, DefValue: AStr;
    Value: AStr; MaxLen: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_ReadStringDefP(Config: AConfig; const Section, Name,
    DefValue: APascalString): APascalString;

function ASettings_ReadStringP(Config: AConfig; const Section, Name: APascalString;
    out Value: APascalString): AInt;

function ASettings_WriteBool(Config: AConfig; const Section, Name: AString_Type;
    Value: ABool): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_WriteBoolA(Config: AConfig; Section, Name: AStr; Value: ABool): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_WriteBoolP(Config: AConfig; const Section, Name: APascalString;
    Value: ABoolean): AError;

function ASettings_WriteDateTime(Config: AConfig; const Section, Name: AString_Type;
    Value: TDateTime): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_WriteDateTimeA(Config: AConfig; Section, Name: AStr; Value: TDateTime): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_WriteDateTimeP(Config: AConfig; const Section, Name: APascalString;
    Value: TDateTime): AError;

function ASettings_WriteFloat(Config: AConfig; const Section, Name: AString_Type;
    Value: AFloat): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_WriteFloatA(Config: AConfig; Section, Name: AStr; Value: AFloat): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_WriteFloatP(Config: AConfig; const Section, Name: APascalString;
    Value: AFloat): AError;

function ASettings_WriteInt(Config: AConfig; const Section, Name: AString_Type;
    Value: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name - const }
function ASettings_WriteIntA(Config: AConfig; Section, Name: AStr; Value: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_WriteIntP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;

function ASettings_WriteIntegerP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;

function ASettings_WriteString(Config: AConfig; const Section, Name, Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

{ Section, Name, Value - const }
function ASettings_WriteStringA(Config: AConfig; Section, Name, Value: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_WriteStringP(Config: AConfig; const Section, Name, Value: APascalString): AError;

implementation

// --- ASettings ---

function ASettings_Close(Config: AConfig): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_Close)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_Close(Config);
end;

function ASettings_DeleteKey(Config: AConfig; const Section, Name: AString_Type): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_DeleteKey)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_DeleteKey(Config, Section, Name);
end;

function ASettings_DeleteKeyA(Config: AConfig; Section, Name: AStr): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_DeleteKeyA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_DeleteKeyA(Config, Section, Name);
end;

function ASettings_DeleteKeyP(Config: AConfig; const Section, Name: APascalString): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_DeleteKey(Config, SSection, SName);
end;

function ASettings_DeleteSection(Config: AConfig; const Section: AString_Type): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_DeleteSection)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_DeleteSection(Config, Section);
end;

function ASettings_DeleteSectionA(Config: AConfig; Section: AStr): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_DeleteSectionA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_DeleteSectionA(Config, Section);
end;

function ASettings_DeleteSectionP(Config: AConfig; const Section: APascalString): AError;
var
  SSection: AString_Type;
begin
  AString_AssignP(SSection, Section);
  Result := ASettings_DeleteSection(Config, SSection);
end;

function ASettings_Fin(): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_Fin();
end;

function ASettings_Init(): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_Init();
end;

function ASettings_ReadBoolDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: ABool): ABool;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadBoolDef)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadBoolDef(Config, Section, Name, DefValue);
end;

function ASettings_ReadBoolDefA(Config: AConfig; Section, Name: AStr;
    DefValue: ABool): ABool;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadBoolDefA)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadBoolDefA(Config, Section, Name, DefValue);
end;

function ASettings_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: ABool): ABool;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_ReadBoolDef(Config, SSection, SName, DefValue);
end;

function ASettings_ReadDateTimeDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: TDateTime): TDateTime;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadDateTimeDef)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadDateTimeDef(Config, Section, Name, DefValue);
end;

function ASettings_ReadDateTimeDefA(Config: AConfig; Section, Name: AStr;
    DefValue: TDateTime): TDateTime;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadDateTimeDefA)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadDateTimeDefA(Config, Section, Name, DefValue);
end;

function ASettings_ReadDateTimeDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: TDateTime): TDateTime;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_ReadDateTimeDef(Config, SSection, SName, DefValue);
end;

function ASettings_ReadFloatDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AFloat): AFloat;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadFloatDef)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadFloatDef(Config, Section, Name, DefValue);
end;

function ASettings_ReadFloatDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AFloat): AFloat;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadFloatDefA)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadFloatDefA(Config, Section, Name, DefValue);
end;

function ASettings_ReadFloatDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AFloat): AFloat;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_ReadFloatDef(Config, SSection, SName, DefValue);
end;

function ASettings_ReadIntDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AInt): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadIntDef)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadIntDef(Config, Section, Name, DefValue);
end;

function ASettings_ReadIntDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AInt): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadIntDefA)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadIntDefA(Config, Section, Name, DefValue);
end;

function ASettings_ReadIntDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_ReadIntDef(Config, SSection, SName, DefValue);
end;

function ASettings_ReadIntegerDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;
begin
  Result := ASettings_ReadIntDefP(Config, Section, Name, DefValue);
end;

function ASettings_ReadSection(Config: AConfig; const Section: AString_Type;
    Strings: AStringList): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadSection)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadSection(Config, Section, Strings);
end;

function ASettings_ReadSectionA(Config: AConfig; Section: AStr;
    Strings: AStringList): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadSectionA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadSectionA(Config, Section, Strings);
end;

function ASettings_ReadSectionP(Config: AConfig; const Section: APascalString;
    Strings: AStringList): AError;
var
  SSection: AString_Type;
begin
  AString_AssignP(SSection, Section);
  Result := ASettings_ReadSection(Config, SSection, Strings);
end;

function ASettings_ReadString(Config: AConfig; const Section, Name: AString_Type;
    out Value: AString_Type): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadString)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadString(Config, Section, Name, Value);
end;

function ASettings_ReadStringA(Config: AConfig; Section, Name: AStr;
    Value: AStr; MaxLen: AInt): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadStringA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadStringA(Config, Section, Name, Value, MaxLen);
end;

function ASettings_ReadStringDef(Config: AConfig; const Section, Name, DefValue: AString_Type;
    out Value: AString_Type): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadStringDef)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadStringDef(Config, Section, Name, DefValue, Value);
end;

function ASettings_ReadStringDefA(Config: AConfig; Section, Name, DefValue: AStr;
    Value: AStr; MaxLen: AInt): AInt;
begin
  if not(Assigned(ASettingsProcVars.ASettings_ReadStringDefA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadStringDefA(Config, Section, Name, DefValue, Value, MaxLen);
end;

function ASettings_ReadStringDefP(Config: AConfig; const Section, Name,
    DefValue: APascalString): APascalString;
var
  SSection: AString_Type;
  SName: AString_Type;
  SDefValue: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  AString_AssignP(SDefValue, DefValue);
  AString_Clear(Res);
  if (ASettings_ReadStringDef(Config, SSection, SName, SDefValue, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function ASettings_ReadStringP(Config: AConfig; const Section, Name: APascalString;
    out Value: APascalString): AInt;
var
  SSection: AString_Type;
  SName: AString_Type;
  SDefValue: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  AString_AssignP(SDefValue, '');
  AString_Clear(Res);
  Result := ASettings_ReadStringDef(Config, SSection, SName, SDefValue, Res);
  Value := AString_ToPascalString(Res);
end;

function ASettings_WriteBool(Config: AConfig; const Section, Name: AString_Type;
    Value: ABool): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteBool)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteBool(Config, Section, Name, Value);
end;

function ASettings_WriteBoolA(Config: AConfig; Section, Name: AStr; Value: ABool): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteBoolA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteBoolA(Config, Section, Name, Value);
end;

function ASettings_WriteBoolP(Config: AConfig; const Section, Name: APascalString;
    Value: ABoolean): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_WriteBool(Config, SSection, SName, Value);
end;

function ASettings_WriteDateTime(Config: AConfig; const Section, Name: AString_Type;
    Value: TDateTime): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteDateTime)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteDateTime(Config, Section, Name, Value);
end;

function ASettings_WriteDateTimeA(Config: AConfig; Section, Name: AStr; Value: TDateTime): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteDateTimeA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteDateTimeA(Config, Section, Name, Value);
end;

function ASettings_WriteDateTimeP(Config: AConfig; const Section, Name: APascalString;
    Value: TDateTime): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_WriteDateTime(Config, SSection, SName, Value);
end;

function ASettings_WriteFloat(Config: AConfig; const Section, Name: AString_Type;
    Value: AFloat): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteFloat)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteFloat(Config, Section, Name, Value);
end;

function ASettings_WriteFloatA(Config: AConfig; Section, Name: AStr; Value: AFloat): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteFloatA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteFloatA(Config, Section, Name, Value);
end;

function ASettings_WriteFloatP(Config: AConfig; const Section, Name: APascalString;
    Value: AFloat): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_WriteFloat(Config, SSection, SName, Value);
end;

function ASettings_WriteInt(Config: AConfig; const Section, Name: AString_Type;
    Value: AInt): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteInt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteInt(Config, Section, Name, Value);
end;

function ASettings_WriteIntA(Config: AConfig; Section, Name: AStr; Value: AInt): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteIntA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteIntA(Config, Section, Name, Value);
end;

function ASettings_WriteIntP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  Result := ASettings_WriteInt(Config, SSection, SName, Value);
end;

function ASettings_WriteIntegerP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;
begin
  Result := ASettings_WriteIntP(Config, Section, Name, Value);
end;

function ASettings_WriteString(Config: AConfig; const Section, Name, Value: AString_Type): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteString)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteString(Config, Section, Name, Value);
end;

function ASettings_WriteStringA(Config: AConfig; Section, Name, Value: AStr): AError;
begin
  if not(Assigned(ASettingsProcVars.ASettings_WriteStringA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_WriteStringA(Config, Section, Name, Value);
end;

function ASettings_WriteStringP(Config: AConfig; const Section, Name, Value: APascalString): AError;
var
  SSection: AString_Type;
  SName: AString_Type;
  SValue: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  AString_AssignP(SValue, Value);
  Result := ASettings_WriteString(Config, SSection, SName, SValue);
end;

end.
