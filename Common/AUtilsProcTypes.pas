{**
@Abstract AUtils proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 30.09.2009
@LastMod 18.02.2013
}
unit AUtilsProcTypes;

interface

uses
  ABase;

// --- Procs type ---

type
  AUtils_ChangeFileExt_Proc = function(const FileName, Extension: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_DateToStr_Proc = function(Value: TDateTime; out Res: AString_Type): AError; stdcall;
  AUtils_DeleteFile_Proc = function(const FileName: AString_Type): AError; stdcall;
  AUtils_DirectoryExists_Proc = function(const Directory: AString_Type): ABool; stdcall;
  AUtils_ExpandFileName_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_ExtractFileExt_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_ExtractFileName_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_ExtractFilePath_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_FileExists_Proc = function(const FileName: AString_Type): ABoolean; stdcall;
  AUtils_Fin_Proc = function(): AError; stdcall;
  AUtils_FloatToStr_Proc = function(Value: AFloat; out Res: AString_Type): AInt; stdcall;
  AUtils_FloatToStr2_Proc = function(Value: AFloat; DigitsAfterComma: AInt; ReplaceComma, Delimer: ABool; out Res: AString_Type): AError; stdcall;
  AUtils_FormatFloat_Proc = function(Value: AFloat; Count, Digits: AInt; out Res: AString_Type): AError; stdcall;
  AUtils_FormatInt_Proc = function(Value, Count: AInt; out Res: AString_Type): AError; stdcall;
  AUtils_FormatStr_Proc = function(const Value: AString_Type; Len: AInt; out Res: AString_Type): AError; stdcall;
  AUtils_FormatStrAnsi_Proc = function(const Value: AnsiString; Len: AInt): AnsiString; stdcall;
  AUtils_GetNowDateTime_Proc = function(): TDateTime; stdcall;
  AUtils_Init_Proc = function(): AError; stdcall;
  AUtils_IntToStr_Proc = function(Value: AInt; out Res: AString_Type): AError; stdcall;
  AUtils_NormalizeFloat_Proc = function(Value: AFloat): AFloat; stdcall;
  AUtils_NormalizeStr_Proc = function(const Value: AString_Type; out Res: AString_Type): AError; stdcall;
  AUtils_NormalizeStrSpace_Proc = function(const Value: AString_Type; out Res: AString_Type): AInt; stdcall;
  AUtils_Power_Proc = function(Base, Exponent: AFloat): AFloat; stdcall;
  AUtils_ReplaceComma_Proc = function(const S: AString_Type; DecimalSeparator: AChar {= #0}; ClearSpace: ABoolean {= True}; out Res: AString_Type): AError; stdcall;
  AUtils_Round2_Proc = function(Value: AFloat; Digits1, DigitsAfterComma: AInt): AFloat; stdcall;
  AUtils_Sleep_Proc = function(Milliseconds: AUInt): AError; stdcall;
  AUtils_StrToDate_Proc = function(const Value: AString_Type): TDateTime; stdcall;
  AUtils_StrToFloat_Proc = function(const Value: AString_Type): AFloat; stdcall;
  AUtils_StrToFloatDef_Proc = function(const S: AString_Type; DefValue: AFloat): AFloat; stdcall;
  AUtils_StrToInt_Proc = function(const Value: AString_Type): AInt; stdcall;
  AUtils_StrToIntDef_Proc = function(const S: AString_Type; DefValue: AInt): AInt; stdcall;
  AUtils_Trim_Proc = function(var S: AString_Type): AError; stdcall;
  AUtils_TryStrToDate_Proc = function(const S: AString_Type; var Value: TDateTime): AError; stdcall;
  AUtils_TryStrToFloat32_Proc = function(const S: AString_Type; var Value: AFloat32): AError; stdcall;
  AUtils_TryStrToFloat64_Proc = function(const S: AString_Type; var Value: AFloat64): AError; stdcall;
  AUtils_TryStrToInt_Proc = function(const S: AString_Type; var Value: AInt): AError; stdcall;
  AUtils_UpperString_Proc = function(var S: AString_Type): AError; stdcall;

implementation

end.

