{**
@Abstract AUtils04
@Author Prof1983 <prof1983@ya.ru>
@Created 30.09.2009
@LastMod 03.08.2012
}
unit AUtilsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ABaseUtils, ARuntime, ARuntimeBase,
  AUtils, AUtilsBase{$IFDEF ADepr}, AUtilsProcRec{$ENDIF};

{ Module }

function Utils_Boot(): AInteger; stdcall;

function Utils_Fin(): AError; stdcall;

function Utils_GetProc(ProcName: AStr): Pointer; stdcall;

function Utils_Init(): AError; stdcall;

function Utils_Register(): AInteger; stdcall;

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
    TryStrToFloat: AUtils.TryStrToFloatWS;                      // 17
    TryStrToFloat32WS: AUtils.TryStrToFloat32WS;                // 18
    TryStrToFloat64WS: AUtils.TryStrToFloat64WS;                // 19
    TryStrToDateWS: AUtils.TryStrToDateWS;                      // 20
    TryStrToIntWS: AUtils.TryStrToIntWS;                        // 21

    FloatToStr: AUtils.FloatToStrWS;                            // 22
    TrimWS: AUtils.TrimWS;                                      // 23
    String_ToUpperWS: AUtils.String_ToUpperWS;                  // 24 - UpperString
    ExtractFileExtWS: AUtils.ExtractFileExtWS;                  // 25

    FormatFloatWS: AUtils.FormatFloatWS;                        // 26
    FormatIntWS: Utils_FormatInt;                               // 27
    StrToDateWS: Utils_StrToDate;                               // 28

    FormatStrWS: Utils_FormatStr;                               // 29
    NormalizeStrSpaceWS: AUtils.NormalizeStrSpaceWS;            // 30
    Reserved31: 0; //Strings_Clear: Strings_Clear;

    Init: Utils_Init;                                           // 32
    Done: Utils_Fin;                                            // 33
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
    Init: Utils_Init;
    Fin: Utils_Fin;
    GetProc: Utils_GetProc;
    Procs: {$IFDEF ADepr}Addr(UtilsProcs){$ELSE}nil{$ENDIF};
    );

var
  FInitialized: Boolean;

{ Modules }

function Utils_Boot(): AInteger;
begin
  Result := Utils_Register();
end;

function Utils_Fin(): AError;
begin
  Result := AUtils_Fin();
end;

function Utils_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function Utils_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  Result := AUtils_Init();
end;

function Utils_Register(): AInteger;
begin
  Result := AModule_Register(Module);
end;

end.

