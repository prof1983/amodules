{**
@Abstract AUtils proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 30.09.2009
@LastMod 06.08.2012
}
unit AUtilsProcRec;

{$IFNDEF A01}
  {$IFNDEF A02}
    {$DEFINE A03}
  {$ENDIF}
{$ENDIF}

{$IFDEF A03} {$DEFINE A03UP} {$ENDIF}
{$IFDEF A04} {$DEFINE A03UP} {$ENDIF}

interface

uses
  ABase, AUtilsProcTypes;

// --- Module ---

type
  PUtilsProcs = ^AUtilsProcs_Type;
  AUtilsProcs_Type = packed record {32x4} {64x4}
    FloatToStrAWS: AUtils_FloatToStrA_Proc;                     // 00
    FloatToStrBWS: AUtils_FloatToStrB_Proc;                     // 01
    FloatToStrCWS: AUtils_FloatToStrC_Proc;                     // 02
    FloatToStrD: AUtils_FloatToStrD_Proc;                       // 03
    NormalizeFloat: AUtils_NormalizeFloat_Proc;                 // 04
    NormalizeStrWS: AUtils_NormalizeStrWS_Proc;                 // 05
    FileExistsWS: AUtils_FileExistsWS_Proc;                     // 06
    Sleep: AUtils_Sleep_Proc;                                   // 07
    Time_Now: AUtils_Time_Now_Proc;                             // 08
    IntToStrWS: AUtils_IntToStrWS_Proc;                         // 09
    StrToFloatWS: AUtils_StrToFloatWS_Proc;                     // 10
    StrToIntWS: AUtils_StrToIntWS_Proc;                         // 11
    ExtractFilePathWS: AUtils_ExtractFilePathWS_Proc;           // 12
    Power: AUtils_Power_Proc;                                   // 13
    ReplaceCommaWS: AUtils_ReplaceCommaWS_Proc;                 // 14
    StrToFloatDefWS: AUtils_StrToFloatDefWS_Proc;               // 15 - StrToFloat1

    StrToIntDefWS: AUtils_StrToIntDefWS_Proc;                   // 16 - StrToInt1
    TryStrToFloatWS: AUtils_TryStrToFloatWS_Proc;               // 17
    TryStrToFloat32WS: AUtils_TryStrToFloat32WS_Proc;           // 18
    TryStrToFloat64WS: AUtils_TryStrToFloat64WS_Proc;           // 19
    TryStrToDateWS: AUtils_TryStrToDateWS_Proc;                 // 20
    TryStrToIntWS: AUtils_TryStrToIntWS_Proc;                   // 21
    FloatToStr: AUtils_FloatToStr_Proc;                         // 22
    TrimWS: AUtils_TrimWS_Proc;                                 // 23
    UpperStringWS: AUtils_UpperStringWS_Proc;                   // 24 - String_ToUpperWS
    ExtractFileExtWS: AUtils_ExtractFileExtWS_Proc;             // 25
    FormatFloatWS: AUtils_FormatFloatWS_Proc;                   // 26
    FormatIntWS: AUtils_FormatIntWS_Proc;                       // 27
    StrToDateWS: AUtils_StrToDateWS_Proc;                       // 28
    FormatStrWS: AUtils_FormatStrWS_Proc;                       // 29
    NormalizeStrSpaceWS: AUtils_NormalizeStrSpaceWS_Proc;       // 30 - Strings_Add: A_Strings_Add_Proc;
    Reserved31: AInt;                                           // 31 - Strings_Clear: A_Strings_Clear_Proc;

    {$IFDEF A03UP}
      Init: AUtils_Init_Proc;                                   // 32
      Fin: AUtils_Fin_Proc;                                     // 33
      FormatStrStrWS: AUtils_FormatStrStrWS_Proc;               // 34
      ExpandFileNameWS: AUtils_ExpandFileNameWS_Proc;           // 35
      ChangeFileExtWS: AUtils_ChangeFileExtWS_Proc;             // 36
      DeleteFileWS: AUtils_DeleteFileWS_Proc;                   // 37
      DateToStrWS: AUtils_DateToStrWS_Proc;                     // 38
      Reserved39: AInt;
      Reserved40: AInt;
      Reserved41: AInt;
      Reserved42: AInt;
      Reserved43: AInt;
      Reserved44: AInt;
      Reserved45: AInt;
      Reserved46: AInt;
      Reserved47: AInt;

      Reserved48: AInt;
      Reserved49: AInt;
      Reserved50: AInt;
      Reserved51: AInt;
      Reserved52: AInt;
      Reserved53: AInt;
      Reserved54: AInt;
      Reserved55: AInt;
      Reserved56: AInt;
      Reserved57: AInt;
      Reserved58: AInt;
      Reserved59: AInt;
      Reserved60: AInt;
      Reserved61: AInt;
      Reserved62: AInt;
      Reserved63: AInt;
    {$ENDIF A03UP}
  end;

implementation

end.

