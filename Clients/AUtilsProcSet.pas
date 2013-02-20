{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.02.2013
}
unit AUtilsProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  AUtilsProcVars;

function AUtils_SetProcs(GetProc: AModuleGetProc): AError;

implementation

function AUtils_SetProcs(GetProc: AModuleGetProc): AError;
begin
  AUtilsProcVars.AUtils_ChangeFileExt := GetProc('AUtils_ChangeFileExt');
  AUtilsProcVars.AUtils_DateToStr := GetProc('AUtils_DateToStr');
  AUtilsProcVars.AUtils_DeleteFile := GetProc('AUtils_DeleteFile');
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
  Result := 0;
end;

end.
 