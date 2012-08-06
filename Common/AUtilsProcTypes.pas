{**
@Abstract AUtils proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 30.09.2009
@LastMod 06.08.2012
}
unit AUtilsProcTypes;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase;

// --- Procs type ---

type
  {$IFDEF ADepr}AUtils_ChangeFileExtWS_Proc = function(const FileName, Extension: AWideString): AWideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_DateToStrWS_Proc = function(Value: TDateTime): AWideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_DeleteFileWS_Proc = function(const FileName: AWideString): AError; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_ExpandFileNameWS_Proc = function(const FileName: AWideString): AWideString; stdcall;{$ENDIF}
  AUtils_ExtractFileExt_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_ExtractFileExtWS_Proc = function(const FileName: AWideString): AWideString; stdcall;{$ENDIF}
  AUtils_ExtractFilePath_Proc = function(const FileName: AString_Type; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_ExtractFilePathWS_Proc = function(const FileName: AWideString): AWideString; stdcall;{$ENDIF}
  AUtils_FileExists_Proc = function(const FileName: AString_Type): ABoolean; stdcall;
  {$IFDEF ADepr}AUtils_FileExistsWS_Proc = function(const FileName: AWideString): ABoolean; stdcall;{$ENDIF}
  // Преобразует число в строку с максимальным кол-вом знаков после запятой
  {$IFDEF ADepr}AUtils_FloatToStr_Proc = function(Value: AFloat): AWideString; stdcall;{$ENDIF}
  // Преобразует число в строку (c двумя знаками после запятой)
  {$IFDEF ADepr}AUtils_FloatToStrA_Proc = function(Value: AFloat; Digits: AInteger = 2): AWideString; stdcall;{$ENDIF}
  // Преобразует число в строку для записи в БД (SQL). Для SQL необходим разделитель - точка.
  {$IFDEF ADepr}AUtils_FloatToStrB_Proc = function(Value: AFloat; Digits: AInteger = 2): AWideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_FloatToStrC_Proc = function(Value: AFloat; Digits: AInteger = 2): AWideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_FloatToStrD_Proc = function(Value: AFloat): AWideString; stdcall;{$ENDIF}
  AUtils_Fin_Proc = function(): AError; stdcall;
  AUtils_FormatFloat_Proc = function(Value: AFloat; Count, Digits: AInt; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_FormatFloatWS_Proc = function(Value: AFloat; Count, Digits: AInteger): AWideString; stdcall;{$ENDIF}
  AUtils_FormatInt_Proc = function(Value, Count: AInt; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_FormatIntWS_Proc = function(Value, Count: AInteger): AWideString; stdcall;{$ENDIF}
  AUtils_FormatStr_Proc = function(const Value: AString_Type; Len: AInt; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_FormatStrWS_Proc = function(const Value: AWideString; Len: AInteger): AWideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_FormatStrStrWS_Proc = function(const FormatStr, S: AWideString): AWideString; stdcall;{$ENDIF}
  AUtils_Init_Proc = function(): AError; stdcall;
  AUtils_IntToStr_Proc = function(Value: AInt; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_IntToStrWS_Proc = function(Value: AInteger): AWideString; stdcall;{$ENDIF}
  AUtils_NormalizeFloat_Proc = function(Value: AFloat): AFloat; stdcall;
  AUtils_NormalizeStr_Proc = function(const Value: AString_Type; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_NormalizeStrSpaceWS_Proc = function(const Value: AWideString): AWideString; stdcall;{$ENDIF}
  // Заменяет не отображаемые символы строки на #
  {$IFDEF ADepr}AUtils_NormalizeStrWS_Proc = function(const Value: AWideString): AWideString; stdcall;{$ENDIF}
  // Возведение числа Base в степень Exponent
  AUtils_Power_Proc = function(Base, Exponent: AFloat): AFloat; stdcall;
  { Заменяет все точки на запятые или все запятые на точки в зависимости от региональных настроек.
    Если параметр DecimalSeparator указан, то региональные настройки игнорируются. }
  AUtils_ReplaceComma_Proc = function(const S: AString_Type; DecimalSeparator: AChar {= #0}; ClearSpace: ABoolean {= True}; out Res: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_ReplaceCommaWS_Proc = function(const S: AWideString; DecimalSeparator: AChar = #0; ClearSpace: ABoolean = True): AWideString; stdcall;{$ENDIF}
  AUtils_Sleep_Proc = procedure(Milliseconds: AUInt); stdcall;
  AUtils_StrToDate_Proc = function(const Value: AString_Type): TDateTime; stdcall;
  {$IFDEF ADepr}AUtils_StrToDateWS_Proc = function(const Value: AWideString): TDateTime; stdcall;{$ENDIF}
  AUtils_StrToFloat_Proc = function(const Value: AString_Type): AFloat; stdcall;
  AUtils_StrToFloatDef_Proc = function(const S: AString_Type; DefValue: AFloat): AFloat; stdcall;
  {$IFDEF ADepr}AUtils_StrToFloatDefWS_Proc = function(const S: AWideString; DefValue: AFloat = 0): AFloat; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_StrToFloatWS_Proc = function(const Value: AWideString): AFloat; stdcall;{$ENDIF}
  AUtils_StrToInt_Proc = function(const Value: AString_Type): AInt; stdcall;
  {$IFDEF ADepr}AUtils_StrToIntDefWS_Proc{A_Utils_StrToInt1_Proc} = function(const S: AWideString; DefValue: AInteger {= 0}): AInteger; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_StrToIntWS_Proc = function(const Value: AWideString): AInteger; stdcall;{$ENDIF}
  AUtils_Time_Now_Proc = function(): TDateTime; stdcall;
  AUtils_Trim_Proc = function(var S: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_TrimWS_Proc = function(const S: AWideString): AWideString; stdcall;{$ENDIF}
  AUtils_TryStrToDate_Proc = function(const S: AString_Type; var Value: TDateTime): AError; stdcall;
  {$IFDEF ADepr}AUtils_TryStrToDateWS_Proc = function(const S: AWideString; var Value: TDateTime): ABoolean; stdcall;{$ENDIF}
  AUtils_TryStrToFloat32_Proc = function(const S: AString_Type; var Value: AFloat32): AError; stdcall;
  AUtils_TryStrToFloat64_Proc = function(const S: AString_Type; var Value: AFloat64): AError; stdcall;
  {$IFDEF ADepr}AUtils_TryStrToFloat32WS_Proc = function(const S: AWideString; var Value: AFloat32): ABoolean; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_TryStrToFloat64WS_Proc = function(const S: AWideString; var Value: AFloat64): ABoolean; stdcall;{$ENDIF}
  {$IFDEF ADepr}AUtils_TryStrToFloatWS_Proc = function(const S: AWideString; var Value: AFloat): ABoolean; stdcall;{$ENDIF}
  AUtils_TryStrToInt_Proc = function(const S: AString_Type; var Value: AInt): AError; stdcall;
  {$IFDEF ADepr}AUtils_TryStrToIntWS_Proc = function(const S: AWideString; var Value: AInteger): ABoolean; stdcall;{$ENDIF}
  AUtils_UpperString_Proc = function(var S: AString_Type): AError; stdcall;
  {$IFDEF ADepr}AUtils_UpperStringWS_Proc = function(const S: AWideString): AWideString; stdcall;{$ENDIF}

implementation

end.

