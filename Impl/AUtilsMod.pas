{**
@Abstract AUtils04
@Author Prof1983 <prof1983@ya.ru>
@Created 30.09.2009
@LastMod 15.11.2012
}
unit AUtilsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ABaseUtils, ARuntime, ARuntimeBase,
  AUtils, AUtilsBase, AUtilsMain{$IFDEF ADepr}, AUtilsProcRec{$ENDIF};

// --- AUtilsMod ---

function AUtilsMod_Boot(): AError; stdcall;

function AUtilsMod_Fin(): AError; stdcall;

function AUtilsMod_GetProc(ProcName: AStr): Pointer; stdcall;

function AUtilsMod_Init(): AError; stdcall;

function AUtilsMod_Register(): AError; stdcall;

{$IFDEF ADepr}
const
  UtilsProcs: AUtilsProcs_Type = (
    FloatToStrAWS: AUtils.FloatToStrAWS;                        // 00
    FloatToStrBWS: AUtils.FloatToStrBWS;                        // 01
    FloatToStrCWS: AUtils.FloatToStrCWS;                        // 02
    FloatToStrD: AUtils.FloatToStrDWS;                          // 03
    NormalizeFloat: AUtils.NormalizeFloat;                      // 04
    NormalizeStrWS: AUtils.NormalizeStrWS;                      // 05

    FileExistsWS: AUtils.FileExistsWS;                          // 06
    Sleep: AUtils.Sleep02;                                      // 07
    Time_Now: AUtils.Time_Now;                                  // 08
    IntToStrWS: AUtils.IntToStrWS;                              // 09
    StrToFloatWS: AUtils.StrToFloatWS;                          // 10
    StrToIntWS: AUtils.StrToIntWS;                              // 11
    ExtractFilePathWS: AUtils.ExtractFilePathWS;                // 12
    Power: Utils_Power;                                         // 13
    ReplaceCommaWS: AUtils.ReplaceCommaWS;                      // 14
    StrToFloatDefWS: AUtils.StrToFloatDefWS;                    // 15
    StrToIntDefWS: AUtils.StrToIntDefWS;                        // 16
    TryStrToFloatWS: AUtils.TryStrToFloatWS;                    // 17
    TryStrToFloat32WS: AUtils.TryStrToFloat32WS;                // 18
    TryStrToFloat64WS: AUtils.TryStrToFloat64WS;                // 19
    TryStrToDateWS: AUtils.TryStrToDateWS;                      // 20
    TryStrToIntWS: AUtils.TryStrToIntWS;                        // 21

    FloatToStr: AUtils.FloatToStrWS;                            // 22
    TrimWS: AUtils.TrimWS;                                      // 23
    UpperStringWS: AUtils.String_ToUpperWS;                     // 24 - String_ToUpperWS
    ExtractFileExtWS: AUtils.ExtractFileExtWS;                  // 25

    FormatFloatWS: AUtils.FormatFloatWS;                        // 26
    FormatIntWS: Utils_FormatInt;                               // 27
    StrToDateWS: Utils_StrToDate;                               // 28

    FormatStrWS: Utils_FormatStr;                               // 29
    NormalizeStrSpaceWS: AUtils.NormalizeStrSpaceWS;            // 30
    Reserved31: 0; //Strings_Clear: Strings_Clear;

    Init: AUtilsMod_Init;                                       // 32
    Fin: AUtilsMod_Fin;                                         // 33
    FormatStrStrWS: AUtils.FormatStrStrWS;                      // 34
    ExpandFileNameWS: AUtils.ExpandFileNameWS;                  // 35
    ChangeFileExtWS: AUtils.ChangeFileExtWS;                    // 36
    DeleteFileWS: AUtils.DeleteFileWS;                          // 37
    DateToStrWS: AUtils.DateToStrWS;                            // 38
    Reserved39: 0;
    Reserved40: 0;
    Reserved41: 0;
    Reserved42: 0;
    Reserved43: 0;
    Reserved44: 0;
    Reserved45: 0;
    Reserved46: 0;
    Reserved47: 0;

    Reserved48: 0;
    Reserved49: 0;
    Reserved50: 0;
    Reserved51: 0;
    Reserved52: 0;
    Reserved53: 0;
    Reserved54: 0;
    Reserved55: 0;
    Reserved56: 0;
    Reserved57: 0;
    Reserved58: 0;
    Reserved59: 0;
    Reserved60: 0;
    Reserved61: 0;
    Reserved62: 0;
    Reserved63: 0;
    );
{$ENDIF ADepr}

implementation

const
  AUtils_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AUtils_Version;
    Uid: AUtils_Uid;
    Name: AUtils_Name;
    Description: nil;
    Init: AUtilsMod_Init;
    Fin: AUtilsMod_Fin;
    GetProc: AUtilsMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(UtilsProcs){$ELSE}nil{$ENDIF};
    );

// --- AUtilsMod ---

function AUtilsMod_Boot(): AError;
begin
  Result := AUtilsMod_Register();
end;

function AUtilsMod_Fin(): AError;
begin
  Result := AUtils_Fin();
end;

function AUtilsMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function AUtilsMod_Init(): AError;
begin
  Result := AUtils_Init();
end;

function AUtilsMod_Register(): AError;
begin
  Result := AModule_Register(Module);
end;

end.

