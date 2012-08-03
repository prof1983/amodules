{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 03.08.2012
}
unit AUtils;

interface

uses
  ABase, ARuntime, ARuntimeBase, AStrings, AUtilsBase, AUtilsProcRec, AUtilsProcVars;

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger; stdcall;

function AString_ToUpperP(const S: APascalString): APascalString; stdcall;

function AString_ToUpperWS(const S: AWideString): AWideString; stdcall;

// --- AUtils ---

function AUtils_Boot(): AError; stdcall;

function AUtils_FileExists(const FileName: AString_Type): ABoolean; stdcall;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError; stdcall;

function AUtils_IntToStrWS(Value: AInt): AWideString; stdcall;

function AUtils_Trim(var S: AString_Type): AError; stdcall;

function AUtils_TrimWS(const S: AWideString): AWideString; stdcall;

// ----

function FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function IntToStrWS(Value: AInt): AWideString; stdcall;

function TrimWS(const S: AWideString): AWideString; stdcall;

implementation

// --- Private ---

function _SetProcs(const Procs: AUtilsProcs_Type): AError;
begin
  AUtilsProcVars.AUtils_NormalizeFloat := Procs.NormalizeFloat;
  AUtilsProcVars.AUtils_NormalizeStr := Procs.NormalizeStr;
  AUtilsProcVars.AUtils_FileExists := Procs.FileExistsP;
  AUtilsProcVars.AUtils_Sleep := Procs.Sleep;
  AUtilsProcVars.AUtils_Time_Now := Procs.Time_Now;
  AUtilsProcVars.AUtils_IntToStr := Procs.IntToStrWS;
  AUtilsProcVars.AUtils_StrToFloat := Procs.StrToFloat;
  AUtilsProcVars.AUtils_StrToInt := Procs.StrToIntP;
  AUtilsProcVars.AUtils_ExtractFilePath := Procs.ExtractFilePath;
  AUtilsProcVars.AUtils_Power := Procs.Power;
  AUtilsProcVars.AUtils_ReplaceComma := Procs.ReplaceComma;
  AUtilsProcVars.AUtils_StrToFloat1 := Procs.StrToFloatDefWS;
  AUtilsProcVars.AUtils_StrToIntDefWS := Procs.StrToIntDefWS;
  AUtilsProcVars.AUtils_TryStrToFloat := Procs.TryStrToFloat;
  AUtilsProcVars.AUtils_TryStrToFloat32 := Procs.TryStrToFloat32;
  AUtilsProcVars.AUtils_TryStrToFloat64 := Procs.TryStrToFloat64;
  AUtilsProcVars.AUtils_TryStrToDate := Procs.TryStrToDate;
  AUtilsProcVars.AUtils_TryStrToInt := Procs.TryStrToInt;
  //AUtilsProcVars.AUtils_FloatToStr := Procs.FloatToStr;
  AUtilsProcVars.AUtils_TrimWS := Procs.TrimWS;
  AUtilsProcVars.AUtils_UpperString := Procs.UpperString;
  AUtilsProcVars.AUtils_ExtractFileExt := Procs.ExtractFileExt;
  AUtilsProcVars.AUtils_FormatFloat := Procs.FormatFloatWS;
  AUtilsProcVars.AUtils_FormatInt := Procs.FormatIntWS;
  AUtilsProcVars.AUtils_StrToDate := Procs.StrToDate;
  AUtilsProcVars.AUtils_FormatStr := Procs.FormatStrWS;
  {
  AUtilsProcVars.AUtils_Strings_Add := Procs.Strings_Add;
  AUtilsProcVars.AUtils_Strings_Clear := Procs.Strings_Clear;
  }

  Result := 0;
end;

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger;
begin
  if not(Assigned(AUtilsProcVars.AUtils_UpperString)) then
  begin
    Result := -1;
    Exit;
  end;
  if (AString_Assign(Res, S) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_UpperString(Res);
end;

function AString_ToUpperP(const S: APascalString): APascalString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_AssignP(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AString_ToUpper(Str, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AString_ToUpperWS(const S: AWideString): AWideString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_AssignWS(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AString_ToUpper(Str, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToWideString(Res);
end;

// --- AUtils ---

function AUtils_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByName(AUtils_Name, Module) < 0) then
  begin
    Result := -4;
    Exit;
  end;
  Utils_SetProcsP(Module.Procs);
end;

function AUtils_FileExists(const FileName: AString_Type): ABoolean;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FileExists)) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FileExists(FileName);
end;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean;
var
  S: AString_Type;
begin
  if (AString_AssignWS(S, FileName) < 0) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUtils_FileExists(S);
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

function AUtils_Trim(var S: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Trim)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Trim(S);
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

// --- Public ---

function FileExistsWS(const FileName: AWideString): ABoolean;
begin
  Result := AUtils_FileExistsWS(FileName);
end;

function IntToStrWS(Value: AInt): AWideString;
begin
  Result := AUtils_IntToStrWS(Value);
end;

function TrimWS(const S: AWideString): AWideString;
begin
  Result := AUtils_TrimWS(S);
end;

end.
 