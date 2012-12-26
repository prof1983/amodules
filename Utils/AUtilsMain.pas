{**
@Abstract AUtils - Main
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 26.12.2012
}
unit AUtilsMain;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, AStrings, AUtilsProcVars;

// --- AUtils ---

function AUtils_ExtractFileExtP(const FileName: APascalString): APascalString;

function AUtils_ExtractFileExtWS(const FileName: AWideString): AWideString; stdcall;

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString; stdcall;

function AUtils_FileExists(const FileName: AString_Type): ABoolean; stdcall;

function AUtils_FileExistsP(const FileName: APascalString): ABoolean;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function AUtils_GetNowDateTime(): TDateTime; stdcall;

function AUtils_Init(): AError; stdcall;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError; stdcall;

function AUtils_IntToStrP(Value: AInt): APascalString; stdcall;

function AUtils_IntToStrWS(Value: AInt): AWideString; stdcall;

function AUtils_ReplaceCommaP(const S: APascalString; DecimalSeparator: AChar = #0;
    ClearSpace: ABoolean = True): APascalString;

function AUtils_ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar = #0;
    ClearSpace: ABoolean = True): AWideString; stdcall;

function AUtils_Sleep(Milliseconds: AUInt): AError; stdcall;

function AUtils_StrToFloatDefP(const S: APascalString; DefValue: AFloat): AFloat;

function AUtils_StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat; stdcall;

function AUtils_StrToFloatP(const Value: APascalString): AFloat;

function AUtils_StrToIntDefP(const S: APascalString; DefValue: AInt): AInt;

function AUtils_StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt; stdcall;

function AUtils_StrToIntP(const Value: APascalString): AInt;

function AUtils_Trim(var S: AString_Type): AError; stdcall;

function AUtils_TrimP(const S: APascalString): APascalString;

function AUtils_TrimWS(const S: AWideString): AWideString; stdcall;

implementation

// --- AUtils ---

function AUtils_ExtractFileExtP(const FileName: APascalString): APascalString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExt) then
  begin
    if (AString_AssignP(FN, FileName) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AUtils_ExtractFileExt(FN, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExtWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ExtractFileExtWS(FileName);
    except
      Result := '';
    end;
    Exit;
  end;
  {$endif}
  Result := '';
end;

function AUtils_ExtractFileExtWS(const FileName: AWideString): AWideString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFileExt)) and not(Assigned(AUtilsProcVars.AUtils_ExtractFileExtWS)) then
  begin
    Result := '';
    Exit;
  end;
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExt) then
  begin
    if (AString_AssignWS(FN, FileName) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AUtils_ExtractFileExt(FN, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToWideString(Res);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExtWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ExtractFileExtWS(FileName);
    except
      Result := '';
    end;
    Exit;
  end;
  {$endif}
  Result := '';
end;

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ExtractFilePath) then
  begin
    if (AString_AssignP(FN, FileName) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AUtilsProcVars.AUtils_ExtractFilePath(FN, Res) >= 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ExtractFilePathWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ExtractFilePathWS(FileName);
    except
      Result := '';
    end;
    Exit;
  end;
  Result := '';
  {$ENDIF}
end;

function AUtils_FileExists(const FileName: AString_Type): ABoolean;
begin
  if Assigned(AUtilsProcVars.AUtils_FileExists) then
  begin
    Result := AUtilsProcVars.AUtils_FileExists(FileName);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_FileExistsWS) then
  begin
    Result := AUtilsProcVars.AUtils_FileExistsWS(AString_ToWideString(FileName));
    Exit;
  end;
  {$endif}
  Result := False;
end;

function AUtils_FileExistsP(const FileName: APascalString): ABoolean;
var
  S: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_FileExists) then
  begin
    if (AString_AssignP(S, FileName) < 0) then
    begin
      Result := False;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_FileExists(S);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_FileExistsWS) then
  begin
    Result := AUtilsProcVars.AUtils_FileExistsWS(FileName);
    Exit;
  end;
  {$endif}
  Result := False;
end;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean;
var
  S: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_FileExists) then
  begin
    if (AString_AssignWS(S, FileName) < 0) then
    begin
      Result := False;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_FileExists(S);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_FileExistsWS) then
  begin
    Result := AUtilsProcVars.AUtils_FileExistsWS(FileName);
    Exit;
  end;
  {$endif}
  Result := False;
end;

function AUtils_GetNowDateTime(): TDateTime;
begin
  if Assigned(AUtilsProcVars.AUtils_GetNowDateTime) then
  begin
    Result := AUtilsProcVars.AUtils_GetNowDateTime();
    Exit;
  end;

  if Assigned(AUtilsProcVars.AUtils_Time_Now) then
  begin
    Result := AUtilsProcVars.AUtils_Time_Now();
    Exit;
  end;

  Result := 0;
end;

function AUtils_Init(): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Init();
end;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_IntToStr)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_IntToStr(Value, Res);
end;

function AUtils_IntToStrP(Value: AInt): APascalString;
var
  S: AString_Type;
begin
  if (AUtils_IntToStr(Value, S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function AUtils_IntToStrWS(Value: AInt): AWideString;
var
  S: AString_Type;
begin
  if (AUtils_IntToStr(Value, S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(S);
end;

function AUtils_ReplaceCommaP(const S: APascalString; DecimalSeparator: AChar;
    ClearSpace: ABoolean): APascalString;
var
  S1: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ReplaceComma) then
  begin
    if (AString_AssignP(S1, S) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AUtilsProcVars.AUtils_ReplaceComma(S1, DecimalSeparator, ClearSpace, Res) >= 0) then
    begin
      Result := AString_ToWideString(Res);
      Exit;
    end;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ReplaceCommaWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ReplaceCommaWS(S, DecimalSeparator, ClearSpace);
    except
      Result := S;
    end;
  end;
  {$ENDIF}
  Result := S;
end;

function AUtils_ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar;
    ClearSpace: ABoolean): AWideString;
var
  S1: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ReplaceComma) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AUtilsProcVars.AUtils_ReplaceComma(S1, DecimalSeparator, ClearSpace, Res) >= 0) then
    begin
      Result := AString_ToWideString(Res);
      Exit;
    end;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ReplaceCommaWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ReplaceCommaWS(S, DecimalSeparator, ClearSpace);
    except
      Result := S;
    end;
  end;
  {$ENDIF}
  Result := S;
end;

function AUtils_Sleep(Milliseconds: AUInt): AError;
begin
  if Assigned(AUtilsProcVars.AUtils_Sleep) then
  try
    Result := AUtilsProcVars.AUtils_Sleep(Milliseconds);
    Exit;
  except
  end;

  if Assigned(AUtilsProcVars.AUtils_Sleep02) then
  try
    AUtilsProcVars.AUtils_Sleep02(Milliseconds);
    Result := 0;
    Exit;
  except
  end;

  Result := -1;
end;

function AUtils_StrToFloatDefP(const S: APascalString; DefValue: AFloat): AFloat;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDef) then
  begin
    if (AString_AssignP(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToFloatDef(S1, DefValue);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToFloatDefWS(S, DefValue);
    Exit;
  end;
  {$endif}
  Result := DefValue;
end;

function AUtils_StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDef) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToFloatDef(S1, DefValue);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToFloatDefWS(S, DefValue);
    Exit;
  end;
  {$endif}
  Result := DefValue;
end;

function AUtils_StrToFloatP(const Value: APascalString): AFloat;
var
  S: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToFloat) then
  begin
    if (AString_AssignP(S, Value) < 0) then
    begin
      Result := 0;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToFloat(S);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToFloatWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToFloatWS(Value);
    Exit;
  end;
  {$endif}
  Result := AUtils_StrToFloatDefP(Value, 0);
end;

function AUtils_StrToIntDefP(const S: APascalString; DefValue: AInt): AInt;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToIntDef) then
  begin
    if (AString_AssignP(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToIntDef(S1, DefValue);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToIntDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToIntDefWS(S, DefValue);
    Exit;
  end;
  {$ENDIF}
  Result := DefValue;
end;

function AUtils_StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToIntDef) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToIntDef(S1, DefValue);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToIntDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToIntDefWS(S, DefValue);
    Exit;
  end;
  {$ENDIF}
  Result := DefValue;
end;

function AUtils_StrToIntP(const Value: APascalString): AInt;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToInt) then
  begin
    if (AString_AssignP(S1, Value) < 0) then
    begin
      Result := 0;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToInt(S1);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToIntWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToIntWS(Value);
    Exit;
  end;
  {$endif}
  Result := AUtils_StrToIntDefP(Value, 0);
end;

function AUtils_Trim(var S: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Trim)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Trim(S);
end;

function AUtils_TrimP(const S: APascalString): APascalString;
var
  Str: AString_Type;
begin
  if (AString_AssignP(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AUtils_Trim(Str) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToPascalString(Str);
end;

function AUtils_TrimWS(const S: AWideString): AWideString;
var
  Str: AString_Type;
begin
  if (AString_AssignWS(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AUtils_Trim(Str) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToWideString(Str);
end;

end.
 