{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 23.04.2013
}
unit AUtilsProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  {$ifdef ADepr}
  AUtilsProcRec,
  {$endif}
  AUtilsProcVars;

function AUtils_SetProcs(GetProc: AModuleGetProc): AError;

{$ifdef ADepr}
function AUtils_SetProcsP(Procs: PUtilsProcs): AError;
function AUtils_SetProcsR(const Procs: AUtilsProcs_Type): AError;
{$endif}

implementation

function AUtils_SetProcs(GetProc: AModuleGetProc): AError;
begin
  //AUtilsProcVars.AUtils_ChangeFileExt := GetProc('AUtils_ChangeFileExt');
  //AUtilsProcVars.AUtils_DateToStr := GetProc('AUtils_DateToStr');
  //AUtilsProcVars.AUtils_DeleteFile := GetProc('AUtils_DeleteFile');
  AUtilsProcVars.AUtils_DirectoryExists := GetProc('AUtils_DirectoryExists');
  AUtilsProcVars.AUtils_ExpandFileName := GetProc('AUtils_ExpandFileName');
  AUtilsProcVars.AUtils_ExtractFileExt := GetProc('AUtils_ExtractFileExt');
  AUtilsProcVars.AUtils_ExtractFileName := GetProc('AUtils_ExtractFileName');
  AUtilsProcVars.AUtils_ExtractFilePath := GetProc('AUtils_ExtractFilePath');
  AUtilsProcVars.AUtils_FileExists := GetProc('AUtils_FileExists');
  AUtilsProcVars.AUtils_Fin := GetProc('AUtils_Fin');
  AUtilsProcVars.AUtils_FloatToStr := GetProc('AUtils_FloatToStr');
  AUtilsProcVars.AUtils_FloatToStr2 := GetProc('AUtils_FloatToStr2');
  AUtilsProcVars.AUtils_ForceDirectories := GetProc('AUtils_ForceDirectories');
  AUtilsProcVars.AUtils_ForceDirectoriesA := GetProc('AUtils_ForceDirectoriesA');
  AUtilsProcVars.AUtils_FormatFloat := GetProc('AUtils_FormatFloat');
  AUtilsProcVars.AUtils_FormatInt := GetProc('AUtils_FormatInt');
  AUtilsProcVars.AUtils_FormatStr := GetProc('AUtils_FormatStr');
  AUtilsProcVars.AUtils_FormatStrAnsi := GetProc('AUtils_FormatStrAnsi');
  AUtilsProcVars.AUtils_FormatStrStr := GetProc('AUtils_FormatStrStr');
  AUtilsProcVars.AUtils_FormatStrStrA := GetProc('AUtils_FormatStrStrA');
  AUtilsProcVars.AUtils_GetNowDateTime := GetProc('AUtils_GetNowDateTime');
  AUtilsProcVars.AUtils_Init := GetProc('AUtils_Init');
  AUtilsProcVars.AUtils_IntToStr := GetProc('AUtils_IntToStr');
  AUtilsProcVars.AUtils_NormalizeFloat := GetProc('AUtils_NormalizeFloat');
  AUtilsProcVars.AUtils_NormalizeStr := GetProc('AUtils_NormalizeStr');
  AUtilsProcVars.AUtils_NormalizeStrSpace := GetProc('AUtils_NormalizeStrSpace');
  AUtilsProcVars.AUtils_Power := GetProc('AUtils_Power');
  AUtilsProcVars.AUtils_ReplaceComma := GetProc('AUtils_ReplaceComma');
  AUtilsProcVars.AUtils_Round2 := GetProc('AUtils_Round2');
  AUtilsProcVars.AUtils_Sleep := GetProc('AUtils_Sleep');
  AUtilsProcVars.AUtils_StrToDate := GetProc('AUtils_StrToDate');
  AUtilsProcVars.AUtils_StrToFloat := GetProc('AUtils_StrToFloat');
  AUtilsProcVars.AUtils_StrToFloatDef := GetProc('AUtils_StrToFloatDef');
  AUtilsProcVars.AUtils_StrToInt := GetProc('AUtils_StrToInt');
  AUtilsProcVars.AUtils_StrToIntDef := GetProc('AUtils_StrToIntDef');
  AUtilsProcVars.AUtils_Trim := GetProc('AUtils_Trim');
  AUtilsProcVars.AUtils_TryStrToDate := GetProc('AUtils_TryStrToDate');
  AUtilsProcVars.AUtils_TryStrToFloat32 := GetProc('AUtils_TryStrToFloat32');
  AUtilsProcVars.AUtils_TryStrToFloat64 := GetProc('AUtils_TryStrToFloat64');
  AUtilsProcVars.AUtils_TryStrToInt := GetProc('AUtils_TryStrToInt');
  AUtilsProcVars.AString_ToLower := GetProc('AString_ToLower');
  AUtilsProcVars.AString_ToUpper := GetProc('AString_ToUpper');

  Result := 0;
end;

{$ifdef ADepr}
function AUtils_SetProcsP(Procs: PUtilsProcs): AError;
begin
  if not(Assigned(Procs)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtils_SetProcsR(Procs^);
end;
{$endif}

{$ifdef ADepr}
function AUtils_SetProcsR(const Procs: AUtilsProcs_Type): AError;
begin
  AUtilsProcVars.AUtils_NormalizeFloat := Procs.NormalizeFloat;
  AUtilsProcVars.AUtils_NormalizeStrWS := Procs.NormalizeStrWS;
  AUtilsProcVars.AUtils_FileExistsWS := Procs.FileExistsWS;
  AUtilsProcVars.AUtils_Sleep02 := Procs.Sleep;
  AUtilsProcVars.AUtils_Time_Now := Procs.Time_Now;
  AUtilsProcVars.AUtils_IntToStrWS := Procs.IntToStrWS;
  AUtilsProcVars.AUtils_StrToFloatWS := Procs.StrToFloatWS;
  AUtilsProcVars.AUtils_StrToIntWS := Procs.StrToIntWS;
  AUtilsProcVars.AUtils_ExtractFilePathWS := Procs.ExtractFilePathWS;
  AUtilsProcVars.AUtils_Power := Procs.Power;
  AUtilsProcVars.AUtils_ReplaceCommaWS := Procs.ReplaceCommaWS;
  AUtilsProcVars.AUtils_StrToFloatDefWS := Procs.StrToFloatDefWS;
  AUtilsProcVars.AUtils_StrToIntDefWS := Procs.StrToIntDefWS;
  AUtilsProcVars.AUtils_TryStrToFloatWS := Procs.TryStrToFloatWS;
  AUtilsProcVars.AUtils_TryStrToFloat32WS := Procs.TryStrToFloat32WS;
  AUtilsProcVars.AUtils_TryStrToFloat64WS := Procs.TryStrToFloat64WS;
  AUtilsProcVars.AUtils_TryStrToDateWS := Procs.TryStrToDateWS;
  AUtilsProcVars.AUtils_TryStrToIntWS := Procs.TryStrToIntWS;
  AUtilsProcVars.AUtils_FloatToStr := Procs.FloatToStr;
  AUtilsProcVars.AUtils_TrimWS := Procs.TrimWS;
  AUtilsProcVars.AUtils_UpperStringWS := Procs.UpperStringWS;
  AUtilsProcVars.AUtils_ExtractFileExtWS := Procs.ExtractFileExtWS;
  AUtilsProcVars.AUtils_FormatFloatWS := Procs.FormatFloatWS;
  AUtilsProcVars.AUtils_FormatIntWS := Procs.FormatIntWS;
  AUtilsProcVars.AUtils_StrToDateWS := Procs.StrToDateWS;
  AUtilsProcVars.AUtils_FormatStrWS := Procs.FormatStrWS;
  AUtilsProcVars.AUtils_Init := Procs.Init;
  AUtilsProcVars.AUtils_Fin := Procs.Fin;
  AUtilsProcVars.AUtils_FormatStrStrWS := Procs.FormatStrStrWS;
  AUtilsProcVars.AUtils_ExpandFileNameWS := Procs.ExpandFileNameWS;
  AUtilsProcVars.AUtils_ChangeFileExtWS := Procs.ChangeFileExtWS;
  AUtilsProcVars.AUtils_DeleteFileWS := Procs.DeleteFileWS;
  AUtilsProcVars.AUtils_DateToStrWS := Procs.DateToStrWS;
  Result := 0;
end;
{$endif}

end.
 