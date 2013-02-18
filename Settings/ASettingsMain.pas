{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 26.12.2012
@LastMod 18.02.2013
}
unit ASettingsMain;

interface

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
  xxx
end;

function ASettings_DeleteKey(Config: AConfig; const Section, Name: AString_Type): AError;
begin
  xxx
end;

function ASettings_DeleteKeyA(Config: AConfig; Section, Name: AStr): AError;
begin
  xxx
end;

function ASettings_DeleteKeyP(Config: AConfig; const Section, Name: APascalString): AError;
begin
  xxx
end;

function ASettings_DeleteSection(Config: AConfig; const Section: AString_Type): AError;
begin
  xxx
end;

function ASettings_DeleteSectionA(Config: AConfig; Section: AStr): AError;
begin
  xxx
end;

function ASettings_DeleteSectionP(Config: AConfig; const Section: APascalString): AError;
begin
  xxx
end;

function ASettings_Fin(): AError;
begin
  xxx
end;

function ASettings_Init(): AError;
begin
  xxx
end;

function ASettings_ReadBoolDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: ABool): ABool;
begin
  xxx
end;

function ASettings_ReadBoolDefA(Config: AConfig; Section, Name: AStr;
    DefValue: ABool): ABool;
begin
  xxx
end;

function ASettings_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: ABool): ABool;
begin
  xxx
end;

function ASettings_ReadDateTimeDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: TDateTime): TDateTime;
begin
  xxx
end;

function ASettings_ReadDateTimeDefA(Config: AConfig; Section, Name: AStr;
    DefValue: TDateTime): TDateTime;
begin
  xxx
end;

function ASettings_ReadDateTimeDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: TDateTime): TDateTime;
begin
  xxx
end;

function ASettings_ReadFloatDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AFloat): AFloat;
begin
  xxx
end;

function ASettings_ReadFloatDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AFloat): AFloat;
begin
  xxx
end;

function ASettings_ReadFloatDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AFloat): AFloat;
begin
  xxx
end;

function ASettings_ReadIntDef(Config: AConfig; const Section, Name: AString_Type;
    DefValue: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadIntDefA(Config: AConfig; Section, Name: AStr;
    DefValue: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadIntDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadIntegerDefP(Config: AConfig; const Section, Name: APascalString;
    DefValue: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadSection(Config: AConfig; const Section: AString_Type;
    Strings: AStringList): AError;
begin
  xxx
end;

function ASettings_ReadSectionA(Config: AConfig; Section: AStr;
    Strings: AStringList): AError;
begin
  xxx
end;

function ASettings_ReadSectionP(Config: AConfig; const Section: APascalString;
    Strings: AStringList): AError;
begin
  xxx
end;

function ASettings_ReadString(Config: AConfig; const Section, Name: AString_Type;
    out Value: AString_Type): AInt;
begin
  xxx
end;

function ASettings_ReadStringA(Config: AConfig; Section, Name: AStr;
    Value: AStr; MaxLen: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadStringDef(Config: AConfig; const Section, Name, DefValue: AString_Type;
    out Value: AString_Type): AInt;
begin
  xxx
end;

function ASettings_ReadStringDefA(Config: AConfig; Section, Name, DefValue: AStr;
    Value: AStr; MaxLen: AInt): AInt;
begin
  xxx
end;

function ASettings_ReadStringDefP(Config: AConfig; const Section, Name,
    DefValue: APascalString): APascalString;
begin
  xxx
end;

function ASettings_ReadStringP(Config: AConfig; const Section, Name: APascalString;
    out Value: APascalString): AInt;
begin
  xxx
end;

function ASettings_WriteBool(Config: AConfig; const Section, Name: AString_Type;
    Value: ABool): AError;
begin
  xxx
end;

function ASettings_WriteBoolA(Config: AConfig; Section, Name: AStr; Value: ABool): AError;
begin
  xxx
end;

function ASettings_WriteBoolP(Config: AConfig; const Section, Name: APascalString;
    Value: ABoolean): AError;
begin
  xxx
end;

function ASettings_WriteDateTime(Config: AConfig; const Section, Name: AString_Type;
    Value: TDateTime): AError;
begin
  xxx
end;

function ASettings_WriteDateTimeA(Config: AConfig; Section, Name: AStr; Value: TDateTime): AError;
begin
  xxx
end;

function ASettings_WriteDateTimeP(Config: AConfig; const Section, Name: APascalString;
    Value: TDateTime): AError;
begin
  xxx
end;

function ASettings_WriteFloat(Config: AConfig; const Section, Name: AString_Type;
    Value: AFloat): AError;
begin
  xxx
end;

function ASettings_WriteFloatA(Config: AConfig; Section, Name: AStr; Value: AFloat): AError;
begin
  xxx
end;

function ASettings_WriteFloatP(Config: AConfig; const Section, Name: APascalString;
    Value: AFloat): AError;
begin
  xxx
end;

function ASettings_WriteInt(Config: AConfig; const Section, Name: AString_Type;
    Value: AInt): AError;
begin
  xxx
end;

function ASettings_WriteIntA(Config: AConfig; Section, Name: AStr; Value: AInt): AError;
begin
  xxx
end;

function ASettings_WriteIntP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;
begin
  xxx
end;

function ASettings_WriteIntegerP(Config: AConfig; const Section, Name: APascalString;
    Value: AInt): AError;
begin
  xxx
end;

function ASettings_WriteString(Config: AConfig; const Section, Name, Value: AString_Type): AError;
begin
  xxx
end;

function ASettings_WriteStringA(Config: AConfig; Section, Name, Value: AStr): AError;
begin
  xxx
end;

function ASettings_WriteStringP(Config: AConfig; const Section, Name, Value: APascalString): AError;
begin
  xxx
end;

end.
