{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 06.08.2012
}
unit AUtilsProcVars;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  AUtilsProcTypes;

var
  {$IFDEF ADepr}AUtils_ChangeFileExtWS: AUtils_ChangeFileExtWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_DateToStrWS: AUtils_DateToStrWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_DeleteFileWS: AUtils_DeleteFileWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_ExpandFileNameWS: AUtils_ExpandFileNameWS_Proc;{$ENDIF}
  AUtils_ExtractFileExt: AUtils_ExtractFileExt_Proc;
  {$IFDEF ADepr}AUtils_ExtractFileExtWS: AUtils_ExtractFileExtWS_Proc;{$ENDIF}
  AUtils_ExtractFilePath: AUtils_ExtractFilePath_Proc;
  {$IFDEF ADepr}AUtils_ExtractFilePathWS: AUtils_ExtractFilePathWS_Proc;{$ENDIF}
  AUtils_FileExists: AUtils_FileExists_Proc;
  {$IFDEF ADepr}AUtils_FileExistsWS: AUtils_FileExistsWS_Proc;{$ENDIF}
  AUtils_Fin: AUtils_Fin_Proc;
  {$IFDEF ADepr}AUtils_FloatToStr: AUtils_FloatToStr_Proc;{$ENDIF}
  AUtils_FormatFloat: AUtils_FormatFloat_Proc;
  {$IFDEF ADepr}AUtils_FormatFloatWS: AUtils_FormatFloatWS_Proc;{$ENDIF}
  AUtils_FormatInt: AUtils_FormatInt_Proc;
  {$IFDEF ADepr}AUtils_FormatIntWS: AUtils_FormatIntWS_Proc;{$ENDIF}
  AUtils_FormatStr: AUtils_FormatStr_Proc;
  {$IFDEF ADepr}AUtils_FormatStrWS: AUtils_FormatStrWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_FormatStrStrWS: AUtils_FormatStrStrWS_Proc;{$ENDIF}
  AUtils_Init: AUtils_Init_Proc;
  AUtils_IntToStr: AUtils_IntToStr_Proc;
  {$IFDEF ADepr}AUtils_IntToStrWS: AUtils_IntToStrWS_Proc;{$ENDIF}
  AUtils_NormalizeFloat: AUtils_NormalizeFloat_Proc;
  AUtils_NormalizeStr: AUtils_NormalizeStr_Proc;
  {$IFDEF ADepr}AUtils_NormalizeStrWS: AUtils_NormalizeStrWS_Proc;{$ENDIF}
  AUtils_Power: AUtils_Power_Proc;
  AUtils_ReplaceComma: AUtils_ReplaceComma_Proc;
  {$IFDEF ADepr}AUtils_ReplaceCommaWS: AUtils_ReplaceCommaWS_Proc;{$ENDIF}
  AUtils_Sleep: AUtils_Sleep_Proc;
  AUtils_StrToDate: AUtils_StrToDate_Proc;
  {$IFDEF ADepr}AUtils_StrToDateWS: AUtils_StrToDateWS_Proc;{$ENDIF}
  AUtils_StrToFloat: AUtils_StrToFloat_Proc;
  {$IFDEF ADepr}AUtils_StrToFloatWS: AUtils_StrToFloatWS_Proc;{$ENDIF}
  AUtils_StrToFloatDef: AUtils_StrToFloatDef_Proc;
  {$IFDEF ADepr}AUtils_StrToFloatDefWS: AUtils_StrToFloatDefWS_Proc;{$ENDIF} // AUtils_StrToFloat1
  AUtils_StrToInt: AUtils_StrToInt_Proc;
  {$IFDEF ADepr}AUtils_StrToIntWS: AUtils_StrToIntWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_StrToIntDefWS: AUtils_StrToIntDefWS_Proc;{$ENDIF} // AUtils_StrToInt1
  AUtils_Time_Now: AUtils_Time_Now_Proc;
  AUtils_Trim: AUtils_Trim_Proc;
  {$IFDEF ADepr}AUtils_TrimWS: AUtils_TrimWS_Proc;{$ENDIF}
  AUtils_TryStrToDate: AUtils_TryStrToDate_Proc;
  {$IFDEF ADepr}AUtils_TryStrToDateWS: AUtils_TryStrToDateWS_Proc;{$ENDIF}
  {$IFDEF ADepr}AUtils_TryStrToFloatWS: AUtils_TryStrToFloatWS_Proc;{$ENDIF}
  AUtils_TryStrToFloat32: AUtils_TryStrToFloat32_Proc;
  {$IFDEF ADepr}AUtils_TryStrToFloat32WS: AUtils_TryStrToFloat32WS_Proc;{$ENDIF}
  AUtils_TryStrToFloat64: AUtils_TryStrToFloat64_Proc;
  {$IFDEF ADepr}AUtils_TryStrToFloat64WS: AUtils_TryStrToFloat64WS_Proc;{$ENDIF}
  AUtils_TryStrToInt: AUtils_TryStrToInt_Proc;
  {$IFDEF ADepr}AUtils_TryStrToIntWS: AUtils_TryStrToIntWS_Proc;{$ENDIF}
  AUtils_UpperString: AUtils_UpperString_Proc; // Use AString_ToUpper()
  {$IFDEF ADepr}AUtils_UpperStringWS: AUtils_UpperStringWS_Proc;{$ENDIF} // Use AString_ToUpper()

implementation

end.
 