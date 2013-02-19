{**
@Abstract AUtils - Main
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 19.02.2013
}
unit AUtilsMain;

{define AStdCall}

interface

uses
  ABase, AStrings, AUtilsProcVars;

// --- AUtils ---

function AUtils_ChangeFileExt(const FileName, Extension: AString_Type;
    out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ChangeFileExtP(const FileName, Extension: APascalString): APascalString;

function AUtils_DateToStr(Value: TDateTime; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_DateToStrP(Value: TDateTime): APascalString;

function AUtils_DeleteFile(const FileName: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_DeleteFileP(const FileName: APascalString): AError;

function AUtils_DirectoryExists(const Directory: AString_Type): ABool; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_DirectoryExistsP(const Directory: APascalString): ABool;

function AUtils_ExpandFileName(const FileName: AString_Type; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ExpandFileNameP(const FileName: APascalString): APascalString;

function AUtils_ExtractFileExt(const FileName: AString_Type; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ExtractFileExtP(const FileName: APascalString): APascalString;

function AUtils_ExtractFileName(const FileName: AString_Type; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ExtractFileNameP(const FileName: APascalString): APascalString;

function AUtils_ExtractFilePath(const FileName: AString_Type; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString;

function AUtils_FileExists(const FileName: AString_Type): ABool; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FileExistsP(const FileName: APascalString): ABool;

function AUtils_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FloatToStr(Value: AFloat; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FloatToStr2(Value: AFloat; DigitsAfterComma: AInt;
    ReplaceComma, Delimer: ABool; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FloatToStr2P(Value: AFloat; DigitsAfterComma: AInt;
    ReplaceComma, Delimer: ABool): APascalString;

function AUtils_FloatToStrAP(Value: AFloat; DigitsAfterComma: AInt = 2): APascalString;

function AUtils_FloatToStrBP(Value: AFloat; DigitsAfterComma: AInt = 2): APascalString;

function AUtils_FloatToStrCP(Value: AFloat; DigitsAfterComma: AInt = 2): APascalString;

function AUtils_FloatToStrDP(Value: AFloat): APascalString;

function AUtils_FloatToStrP(Value: AFloat): APascalString;

function AUtils_ForceDirectoriesP(const Dir: APascalString): AError;

function AUtils_FormatFloat(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt;
    out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatFloatP(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt): APascalString;

function AUtils_FormatInt(Value, Count: AInt; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatIntP(Value, Count: AInt): APascalString;

function AUtils_FormatStr(const Value: AString_Type; Len: AInt; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrAnsi(const Value: AnsiString; Len: AInt): AnsiString; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrP(const Value: APascalString; Len: AInt): APascalString;

function AUtils_FormatStrStrP(const FormatStr, S: APascalString): APascalString;

function AUtils_GetNowDateTime(): TDateTime; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_IntToStrP(Value: AInt): APascalString;

function AUtils_NormalizeFloat(Value: AFloat): AFloat; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_NormalizeStr(const Value: AString_Type; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_NormalizeStrP(const Value: APascalString): APascalString;

function AUtils_NormalizeStrSpace(const Value: AString_Type; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_NormalizeStrSpaceP(const Value: APascalString): APascalString;

function AUtils_Power(Base, Exponent: AFloat): AFloat; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ReplaceComma(const S: AString_Type; DecimalSeparator: AChar;
    ClearSpace: ABool; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ReplaceCommaP(const S: APascalString; DecimalSeparator: AChar = #0;
    ClearSpace: ABool = True): APascalString;

function AUtils_Round2(Value: AFloat; Digits1, DigitsAfterComma: AInt): AFloat; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_Sleep(Milliseconds: AUInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_StrToDate(const Value: AString_Type): TDateTime; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_StrToDateP(const Value: APascalString): TDateTime;

function AUtils_StrToFloat(const Value: AString_Type): AFloat; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_StrToFloatDef(const S: AString_Type; DefValue: AFloat): AFloat; {$ifdef AStdCall}stdcall;{$endif}

{** ѕреобразует строку в Float. –азделителем может быть как точка, так и зап€та€.
    ¬ исходной строке могут присутствовать начальные и конечные пробелы. }
function AUtils_StrToFloatDefP(const S: APascalString; DefValue: AFloat): AFloat;

function AUtils_StrToFloatP(const Value: APascalString): AFloat;

function AUtils_StrToInt(const Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_StrToIntDef(const S: AString_Type; DefValue: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_StrToIntDefP(const S: APascalString; DefValue: AInt): AInt;

function AUtils_StrToIntP(const Value: APascalString): AInt;

function AUtils_Trim(var S: AString_Type): AError; stdcall;

function AUtils_TrimP(const S: APascalString): APascalString;

function AUtils_TryStrToDate(const S: AString_Type; var Value: TDateTime): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_TryStrToDateP(const S: APascalString; var Value: TDateTime): ABool;

function AUtils_TryStrToFloat32(const S: AString_Type; var Value: AFloat32): AError; {$ifdef AStdCall}stdcall;{$endif}

{** ѕреобразует строку в Float32. –азделителем может быть как точка, так и зап€та€.
    ¬ исходной строке могут присутствовать начальные и конечные пробелы. }
function AUtils_TryStrToFloat32P(const S: APascalString; var Value: AFloat32): ABool;

function AUtils_TryStrToFloat64(const S: AString_Type; var Value: AFloat64): AError; {$ifdef AStdCall}stdcall;{$endif}

{** ѕреобразует строку в Float64. –азделителем может быть как точка, так и зап€та€.
    ¬ исходной строке могут присутствовать начальные и конечные пробелы. }
function AUtils_TryStrToFloat64P(const S: APascalString; var Value: AFloat64): ABool;

{** ѕреобразует строку в Float. –азделителем может быть как точка, так и зап€та€.
    ¬ исходной строке могут присутствовать начальные и конечные пробелы. }
function AUtils_TryStrToFloatP(const S: APascalString; var Value: AFloat): ABool;

function AUtils_TryStrToInt(const S: AString_Type; var Value: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_TryStrToIntP(const S: APascalString; var Value: AInt): ABool;

implementation

// --- AUtils ---

function AUtils_ChangeFileExt(const FileName, Extension: AString_Type;
    out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ChangeFileExt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ChangeFileExt(FileName, Extension, Res);
end;

function AUtils_ChangeFileExtP(const FileName, Extension: APascalString): APascalString;
var
  SFileName: AString_Type;
  SExtension: AString_Type;
  SRes: AString_Type;
begin
  try
    AString_AssignP(SFileName, FileName);
    AString_AssignP(SExtension, Extension);
    AString_Clear(SRes);
    if AUtils_ChangeFileExt(SFileName, SExtension, SRes) >= 0) then
      Result := AString_ToPascalString(SRes)
    else
      Result := '';
  except
    Result := '';
  end;
end;

function AUtils_DateToStr(Value: TDateTime; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_DateToStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_DateToStr(Value, Res);
end;

function AUtils_DateToStrP(Value: TDateTime): APascalString;
var
  SRes: AString_Type;
begin
  try
    AString_Clear(SRes);
    if (AUtils_DateToStr(Value, SRes) >= 0) then
      Result := AString_ToPascalString(SRes)
    else
      Result := '';
  except
    Result := '';
  end;
end;

function AUtils_DeleteFile(const FileName: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_DeleteFile)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_DeleteFile(FileName);
end;

function AUtils_DeleteFileP(const FileName: APascalString): AError;
var
  SFileName: AString_Type;
begin
  try
    AString_AssignP(SFileName, FileName);
    Result := AUtils_DeleteFile(SFileName);
  except
    Result := -1;
  end;
end;

function AUtils_DirectoryExists(const Directory: AString_Type): ABool;
begin
  if not(Assigned(AUtilsProcVars.AUtils_DirectoryExists)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_DirectoryExists(Directory);
end;

function AUtils_DirectoryExistsP(const Directory: APascalString): ABool;
var
  SDirectory: AString_Type;
begin
  try
    AString_AssignP(SDirectory, Directory);
    Result := AUtils_DirectoryExists(SDirectory)
  except
    Result := False;
  end;
end;

function AUtils_ExpandFileName(const FileName: AString_Type; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExpandFileName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ExpandFileName(FileName, Res);
end;

function AUtils_ExpandFileNameP(const FileName: APascalString): APascalString;
var
  SFileName: AString_Type;
  SRes: AString_Type;
begin
  try
    AString_AssignP(SFileName, FileName);
    AString_Clear(SRes);
    if (AUtils_ExpandFileName(SFileName, SRes) >= 0) then
      Result := AString_ToPascalString(SRes)
    else
      Result := '';
  except
    Result := '';
  end;
end;

function AUtils_ExtractFileExt(const FileName: AString_Type; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFileExt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ExtractFileExt(FileName, Res);
end;

function AUtils_ExtractFileExtP(const FileName: APascalString): APascalString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFileExt)) then
  begin
    Result := '';
    Exit;
  end;
  try
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
  except
    Result := '';
  end;
end;

function AUtils_ExtractFileName(const FileName: AString_Type; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFileName)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ExtractFileName(FileName, Res);
end;

function AUtils_ExtractFileNameP(const FileName: APascalString): APascalString;
var
  SFileName: AString_Type;
  SRes: AString_Type;
begin
  try
    AString_AssignP(SFileName, FileName);
    AString_Clear(SRes);
    if (AUtils_ExtractFileName(SFileName, SRes) >= 0) then
      Result := AString_ToPascalString(SRes)
    else
      Result := '';
  except
    Result := '';
  end;
end;

function AUtils_ExtractFilePath(const FileName: AString_Type; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFilePath)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ExtractFilePath(FileName, Res);
end;

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ExtractFilePath) then
  begin
    Result := '';
    Exit;
  end;
  try
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
    if (AUtils_ExtractFilePath(FN, Res) >= 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
  except
    Result := '';
  end;
end;

function AUtils_FileExists(const FileName: AString_Type): ABool;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FileExists)) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FileExists(FileName);
end;

function AUtils_FileExistsP(const FileName: APascalString): ABool;
var
  S: AString_Type;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FileExists)) then
  begin
    Result := False;
  end;
  try
    if (AString_AssignP(S, FileName) < 0) then
    begin
      Result := False;
      Exit;
    end;
    Result := AUtils_FileExists(S);
  except
    Result := False;
  end;
end;

function AUtils_Fin(): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Fin();
end;

function AUtils_FloatToStr(Value: AFloat; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FloatToStr)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FloatToStr(Value, Res);
end;

function AUtils_FloatToStr2(Value: AFloat; DigitsAfterComma: AInt;
    ReplaceComma, Delimer: ABool; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FloatToStr2)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FloatToStr2(Value, DigitsAfterComma, ReplaceComma, Delimer, Res);
end;

function AUtils_FloatToStr2P(Value: AFloat; DigitsAfterComma: AInt;
    ReplaceComma, Delimer: ABool): APascalString;
var
  Res: AString_Type;
begin
  AString_Clear(Res);
  if (AUtils_FloatToStr2(Value, DigitsAfterComma, ReplaceComma, Delimer, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AUtils_FloatToStrAP(Value: AFloat; DigitsAfterComma: AInt): APascalString;
begin
  xxx
end;

function AUtils_FloatToStrBP(Value: AFloat; DigitsAfterComma: AInt): APascalString;
begin
  xxx
end;

function AUtils_FloatToStrCP(Value: AFloat; DigitsAfterComma: AInt): APascalString;
begin
  xxx
end;

function AUtils_FloatToStrDP(Value: AFloat): APascalString;
begin
  xxx
end;

function AUtils_FloatToStrP(Value: AFloat): APascalString;
var
  Res: AString_Type;
begin
  try
    AString_Clear(Res);
    if (AUtils_FloatToStr(Value, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
  except
    Result := '';
  end;
end;

function AUtils_ForceDirectoriesP(const Dir: APascalString): AError;
begin
  xxx
end;

function AUtils_FormatFloat(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt;
    out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FormatFloat)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatFloat(Value, DigitsBeforeComma, DigitsAfterComma, Res);
end;

function AUtils_FormatFloatP(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt): APascalString;
var
  Res: AString_Type;
begin
  try
    AString_Clear(Res);
    if (AUtils_FormatFloat(Value, DigitsBeforeComma, DigitsAfterComma, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
  except
    Result := '';
  end;
end;

function AUtils_FormatInt(Value, Count: AInt; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FormatInt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatInt(Value, Count, Res);
end;

function AUtils_FormatIntP(Value, Count: AInt): APascalString;
var
  Res: AString_Type;
begin
  try
    AString_Clear(Res);
    if (AUtils_FormatInt(Value, Count, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
  except
    Result := '';
  end;
end;

function AUtils_FormatStr(const Value: AString_Type; Len: AInt; out Res: AString_Type): AInt;
begin
  xxx
end;

function AUtils_FormatStrAnsi(const Value: AnsiString; Len: AInt): AnsiString;
begin
  xxx
end;

function AUtils_FormatStrP(const Value: APascalString; Len: AInt): APascalString;
begin
  xxx
end;

function AUtils_FormatStrStrP(const FormatStr, S: APascalString): APascalString;
begin
  xxx
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

function AUtils_NormalizeFloat(Value: AFloat): AFloat;
begin
  xxx
end;

function AUtils_NormalizeStr(const Value: AString_Type; out Res: AString_Type): AInt;
begin
  xxx
end;

function AUtils_NormalizeStrP(const Value: APascalString): APascalString;
begin
  xxx
end;

function AUtils_NormalizeStrSpace(const Value: AString_Type; out Res: AString_Type): AInt;
begin
  xxx
end;

function AUtils_NormalizeStrSpaceP(const Value: APascalString): APascalString;
begin
  xxx
end;

function AUtils_Power(Base, Exponent: AFloat): AFloat;
begin
  xxx
end;

function AUtils_ReplaceComma(const S: AString_Type; DecimalSeparator: AChar;
    ClearSpace: ABool; out Res: AString_Type): AInt;
begin
  xxx
end;

function AUtils_ReplaceCommaP(const S: APascalString; DecimalSeparator: AChar;
    ClearSpace: ABool): APascalString;
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
  Result := S;
end;

function AUtils_Round2(Value: AFloat; Digits1, DigitsAfterComma: AInt): AFloat;
begin
  xxx
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

function AUtils_StrToDateP(const Value: APascalString): TDateTime;
begin
  xxx
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

function AUtils_TryStrToDateP(const S: APascalString; var Value: TDateTime): ABool;
begin
  xxx
end;

function AUtils_TryStrToFloatP(const S: APascalString; var Value: AFloat): ABool;
begin
  xxx
end;

function AUtils_TryStrToFloat32P(const S: APascalString; var Value: AFloat32): ABool;
begin
  xxx
end;

function AUtils_TryStrToFloat64P(const S: APascalString; var Value: AFloat64): ABool;
begin
  xxx
end;

function AUtils_TryStrToIntP(const S: APascalString; var Value: AInt): ABool;
begin
  xxx
end;

end.
 