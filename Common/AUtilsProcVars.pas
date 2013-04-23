{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 23.04.2013
}
unit AUtilsProcVars;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  AUtilsProcTypes;

var
  AUtils_ChangeFileExt: AUtils_ChangeFileExt_Proc;
  AUtils_DateToStr: AUtils_DateToStr_Proc;
  AUtils_DeleteFile: AUtils_DeleteFile_Proc;
  AUtils_DirectoryExists: AUtils_DirectoryExists_Proc;
  AUtils_ExpandFileName: AUtils_ExpandFileName_Proc;
  AUtils_ExtractFileExt: AUtils_ExtractFileExt_Proc;
  AUtils_ExtractFileName: AUtils_ExtractFileName_Proc;
  AUtils_ExtractFilePath: AUtils_ExtractFilePath_Proc;
  AUtils_FileExists: AUtils_FileExists_Proc;
  AUtils_Fin: AUtils_Fin_Proc;
  AUtils_FloatToStr: AUtils_FloatToStr_Proc;
  AUtils_FloatToStr2: AUtils_FloatToStr2_Proc;
  AUtils_ForceDirectories: AUtils_ForceDirectories_Proc;
  AUtils_ForceDirectoriesA: AUtils_ForceDirectoriesA_Proc;
  AUtils_FormatFloat: AUtils_FormatFloat_Proc;
  AUtils_FormatInt: AUtils_FormatInt_Proc;
  AUtils_FormatStr: AUtils_FormatStr_Proc;
  AUtils_FormatStrAnsi: AUtils_FormatStrAnsi_Proc;
  AUtils_FormatStrStr: AUtils_FormatStrStr_Proc;
  AUtils_FormatStrStrA: AUtils_FormatStrStrA_Proc;
  AUtils_GetNowDateTime: AUtils_GetNowDateTime_Proc; // AUtils_Time_Now()
  AUtils_Init: AUtils_Init_Proc;
  AUtils_IntToStr: AUtils_IntToStr_Proc;
  AUtils_NormalizeFloat: AUtils_NormalizeFloat_Proc;
  AUtils_NormalizeStr: AUtils_NormalizeStr_Proc;
  AUtils_NormalizeStrSpace: AUtils_NormalizeStrSpace_Proc;
  AUtils_Power: AUtils_Power_Proc;
  AUtils_ReplaceComma: AUtils_ReplaceComma_Proc;
  AUtils_Round2: AUtils_Round2_Proc;
  AUtils_Sleep: AUtils_Sleep_Proc;
  AUtils_StrToDate: AUtils_StrToDate_Proc;
  AUtils_StrToFloat: AUtils_StrToFloat_Proc;
  AUtils_StrToFloatDef: AUtils_StrToFloatDef_Proc;
  AUtils_StrToInt: AUtils_StrToInt_Proc;
  AUtils_StrToIntDef: AUtils_StrToIntDef_Proc;
  AUtils_Trim: AUtils_Trim_Proc;
  AUtils_TryStrToDate: AUtils_TryStrToDate_Proc;
  AUtils_TryStrToFloat32: AUtils_TryStrToFloat32_Proc;
  AUtils_TryStrToFloat64: AUtils_TryStrToFloat64_Proc;
  AUtils_TryStrToInt: AUtils_TryStrToInt_Proc;
  AString_ToLower: AString_ToLower_Proc;
  AString_ToUpper: AString_ToUpper_Proc;

  {$ifdef ADepr}
  AUtils_ChangeFileExtWS: AUtils_ChangeFileExtWS_Proc;
  AUtils_DateToStrWS: AUtils_DateToStrWS_Proc;
  AUtils_DeleteFileWS: AUtils_DeleteFileWS_Proc;
  AUtils_ExpandFileNameWS: AUtils_ExpandFileNameWS_Proc;
  AUtils_ExtractFileExtWS: AUtils_ExtractFileExtWS_Proc;
  AUtils_ExtractFilePathWS: AUtils_ExtractFilePathWS_Proc;
  AUtils_FileExistsWS: AUtils_FileExistsWS_Proc;
  AUtils_FloatToStrWS: AUtils_FloatToStrWS_Proc;
  AUtils_FormatFloatWS: AUtils_FormatFloatWS_Proc;
  AUtils_FormatIntWS: AUtils_FormatIntWS_Proc;
  AUtils_FormatStrWS: AUtils_FormatStrWS_Proc;
  AUtils_FormatStrStrWS: AUtils_FormatStrStrWS_Proc;
  AUtils_IntToStrWS: AUtils_IntToStrWS_Proc;
  AUtils_NormalizeStrWS: AUtils_NormalizeStrWS_Proc;
  AUtils_ReplaceCommaWS: AUtils_ReplaceCommaWS_Proc;
  AUtils_Sleep02: AUtils_Sleep02_Proc;
  AUtils_StrToDateWS: AUtils_StrToDateWS_Proc;
  AUtils_StrToFloatWS: AUtils_StrToFloatWS_Proc;
  AUtils_StrToFloatDefWS: AUtils_StrToFloatDefWS_Proc; // AUtils_StrToFloat1
  AUtils_StrToIntWS: AUtils_StrToIntWS_Proc;
  AUtils_StrToIntDefWS: AUtils_StrToIntDefWS_Proc; // AUtils_StrToInt1
  AUtils_TrimWS: AUtils_TrimWS_Proc;
  AUtils_TryStrToDateWS: AUtils_TryStrToDateWS_Proc;
  AUtils_TryStrToFloatWS: AUtils_TryStrToFloatWS_Proc;
  AUtils_TryStrToFloat32WS: AUtils_TryStrToFloat32WS_Proc;
  AUtils_TryStrToFloat64WS: AUtils_TryStrToFloat64WS_Proc;
  AUtils_TryStrToIntWS: AUtils_TryStrToIntWS_Proc;
  AUtils_UpperString: AUtils_UpperString_Proc; // Use AString_ToUpper()
  AUtils_UpperStringWS: AUtils_UpperStringWS_Proc;
  {$endif}

implementation

end.
 