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
  ABase,
  AStringMain,
  AUtilsProcVars;

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

function AUtils_FloatToStrP(Value: AFloat): APascalString;

function AUtils_ForceDirectories(const Dir: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ForceDirectoriesA(Dir: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_ForceDirectoriesP(const Dir: APascalString): AError;

function AUtils_FormatFloat(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt;
    out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatFloatP(Value: AFloat; DigitsBeforeComma, DigitsAfterComma: AInt): APascalString;

function AUtils_FormatInt(Value, Count: AInt; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatIntP(Value, Count: AInt): APascalString;

function AUtils_FormatStr(const Value: AString_Type; Len: AInt; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrAnsi(const Value: AnsiString; Len: AInt): AnsiString; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrP(const Value: APascalString; Len: AInt): APascalString;

function AUtils_FormatStrStr(const FormatStr, S: AString_Type; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrStrA(FormatStr, S: AStr; Res: AStr; MaxLen: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_FormatStrStrP(const FormatStr, S: APascalString): APascalString;

function AUtils_GetNowDateTime(): TDateTime; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

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
    if (AUtils_ChangeFileExt(SFileName, SExtension, SRes) >= 0) then
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
    Result := False;
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

function AUtils_ForceDirectories(const Dir: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ForceDirectories)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ForceDirectories(Dir);
end;

function AUtils_ForceDirectoriesA(Dir: AStr): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ForceDirectoriesA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ForceDirectoriesA(Dir);
end;

function AUtils_ForceDirectoriesP(const Dir: APascalString): AError;
var
  S: AString_Type;
begin
  try
    AString_AssignP(S, Dir);
    Result := AUtils_ForceDirectories(S);
  except
    Result := -1;
  end;
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
  if not(Assigned(AUtilsProcVars.AUtils_FormatStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatStr(Value, Len, Res);
end;

function AUtils_FormatStrAnsi(const Value: AnsiString; Len: AInt): AnsiString;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FormatStrAnsi)) then
  begin
    Result := '';
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatStrAnsi(Value, Len);
end;

function AUtils_FormatStrP(const Value: APascalString; Len: AInt): APascalString;
var
  Res: AString_Type;
  S: AString_Type;
begin
  AString_AssignP(S, Value);
  AString_Clear(Res);
  if (AUtils_FormatStr(S, Len, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AUtils_FormatStrStr(const FormatStr, S: AString_Type; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FormatStrStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatStrStr(FormatStr, S, Res);
end;

function AUtils_FormatStrStrA(FormatStr, S: AStr; Res: AStr; MaxLen: AInt): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FormatStrStrA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FormatStrStrA(FormatStr, S, Res, MaxLen);
end;

function AUtils_FormatStrStrP(const FormatStr, S: APascalString): APascalString;
var
  SFormatStr: AString_Type;
  SS: AString_Type;
  SRes: AString_Type;
begin
  AString_AssignP(SFormatStr, FormatStr);
  AString_AssignP(SS, S);
  AString_Clear(SRes);
  if (AUtils_FormatStrStr(SFormatStr, SS, SRes) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(SRes);
end;

function AUtils_GetNowDateTime(): TDateTime;
begin
  if Assigned(AUtilsProcVars.AUtils_GetNowDateTime) then
  begin
    Result := AUtilsProcVars.AUtils_GetNowDateTime();
    Exit;
  end;
  Result := 0;
end;

function AUtils_Init(): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Init();
end;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_IntToStr)) then
  begin
    Result := -100;
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
  if not(Assigned(AUtilsProcVars.AUtils_NormalizeFloat)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_NormalizeFloat(Value);
end;

function AUtils_NormalizeStr(const Value: AString_Type; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_NormalizeStr)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_NormalizeStr(Value, Res);
end;

function AUtils_NormalizeStrP(const Value: APascalString): APascalString;
var
  S: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(S, Value);
  AString_Clear(Res);
  if (AUtils_NormalizeStr(S, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AUtils_NormalizeStrSpace(const Value: AString_Type; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_NormalizeStrSpace)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_NormalizeStrSpace(Value, Res);
end;

function AUtils_NormalizeStrSpaceP(const Value: APascalString): APascalString;
var
  S: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(S, Value);
  AString_Clear(Res);
  if (AUtils_NormalizeStrSpace(S, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AUtils_Power(Base, Exponent: AFloat): AFloat;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Power)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Power(Base, Exponent);
end;

function AUtils_ReplaceComma(const S: AString_Type; DecimalSeparator: AChar;
    ClearSpace: ABool; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ReplaceComma)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_ReplaceComma(S, DecimalSeparator, ClearSpace, Res);
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
    if (AUtils_ReplaceComma(S1, DecimalSeparator, ClearSpace, Res) >= 0) then
    begin
      Result := AString_ToWideString(Res);
      Exit;
    end;
  end;
  Result := S;
end;

function AUtils_Round2(Value: AFloat; Digits1, DigitsAfterComma: AInt): AFloat;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Round2)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Round2(Value, Digits1, DigitsAfterComma);
end;

function AUtils_Sleep(Milliseconds: AUInt): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Sleep)) then
  begin
    Result := -100;
    Exit;
  end;
  try
    Result := AUtilsProcVars.AUtils_Sleep(Milliseconds);
  except
    Result := -1;
  end;
end;

function AUtils_StrToDate(const Value: AString_Type): TDateTime;
begin
  if not(Assigned(AUtilsProcVars.AUtils_StrToDate)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_StrToDate(Value);
end;

function AUtils_StrToDateP(const Value: APascalString): TDateTime;
var
  S: AString_Type;
begin
  AString_AssignP(S, Value);
  Result := AUtils_StrToDate(S);
end;

function AUtils_StrToFloat(const Value: AString_Type): AFloat;
begin
  if not(Assigned(AUtilsProcVars.AUtils_StrToFloat)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_StrToFloat(Value);
end;

function AUtils_StrToFloatDef(const S: AString_Type; DefValue: AFloat): AFloat;
begin
  if not(Assigned(AUtilsProcVars.AUtils_StrToFloatDef)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_StrToFloatDef(S, DefValue);
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

function AUtils_StrToInt(const Value: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_StrToInt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_StrToInt(Value);
end;

function AUtils_StrToIntDef(const S: AString_Type; DefValue: AInt): AInt;
begin
  if not(Assigned(AUtilsProcVars.AUtils_StrToIntDef)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_StrToIntDef(S, DefValue);
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
    Result := -100;
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

function AUtils_TryStrToDate(const S: AString_Type; var Value: TDateTime): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_TryStrToDate)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_TryStrToDate(S, Value);
end;

function AUtils_TryStrToDateP(const S: APascalString; var Value: TDateTime): ABool;
var
  SS: AString_Type;
begin
  AString_AssignP(SS, S);
  Result := (AUtils_TryStrToDate(SS, Value) >= 0);
end;

function AUtils_TryStrToFloat32(const S: AString_Type; var Value: AFloat32): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_TryStrToFloat32)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_TryStrToFloat32(S, Value);
end;

function AUtils_TryStrToFloat32P(const S: APascalString; var Value: AFloat32): ABool;
var
  SS: AString_Type;
begin
  AString_AssignP(SS, S);
  Result := (AUtils_TryStrToFloat32(SS, Value) >= 0);
end;

function AUtils_TryStrToFloat64(const S: AString_Type; var Value: AFloat64): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_TryStrToFloat64)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_TryStrToFloat64(S, Value);
end;

function AUtils_TryStrToFloat64P(const S: APascalString; var Value: AFloat64): ABool;
var
  SS: AString_Type;
begin
  AString_AssignP(SS, S);
  Result := (AUtils_TryStrToFloat64(SS, Value) >= 0);
end;

function AUtils_TryStrToFloatP(const S: APascalString; var Value: AFloat): ABool;
begin
  {$ifdef AFloat32}
  Result := AUtils_TryStrToFloat32P(S, Value);
  {$else}
  Result := AUtils_TryStrToFloat64P(S, Value);
  {$endif}
end;

function AUtils_TryStrToInt(const S: AString_Type; var Value: AInt): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_TryStrToInt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_TryStrToInt(S, Value);
end;

function AUtils_TryStrToIntP(const S: APascalString; var Value: AInt): ABool;
var
  SS: AString_Type;
begin
  AString_AssignP(SS, S);
  Result := (AUtils_TryStrToInt(SS, Value) >= 0);
end;

end.
 