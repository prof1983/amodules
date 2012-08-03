{**
@Abstract AStringsModule
@Author Prof1983 <prof1983@ya.ru>
@Created 03.06.2011
@LastMod 03.08.2012
}
unit AStringsMod;

interface

uses
  ABase, AStrings, AStringsProcRec;

function AStringsModule_Boot(): AError; stdcall;

function AStringsModule_Fin(): AError; stdcall;

function AStringsModule_Init(): AError; stdcall;

const
  StringsProcs: AStringsProcs_Type = (
    String_Assign: AString_Assign;                              // 00
    String_AssignA: AString_AssignA;                            // 01
    String_Copy: AString_Copy;                                  // 02
    String_Clear: AString_Clear;                                // 03
    String_Length: AString_GetLength;                           // 04
    String_AssignWS: AString_AssignWS;                          // 05
    String_ToWideString: AString_ToWideString;                  // 06
    String_AssignP: AString_AssignP;                            // 07
    String_ToPascalString: AString_ToPascalString;              // 08
    Init: AStringsModule_Init;                                  // 09
    Reserved10: 0;
    Reserved11: 0;
    Reserved12: 0;
    Reserved13: 0;
    Reserved14: 0;
    Reserved15: 0;
    Reserved16: 0;
    Reserved17: 0;
    Reserved18: 0;
    Reserved19: 0;
    Reserved20: 0;
    Reserved21: 0;
    Reserved22: 0;
    Reserved23: 0;
    Reserved24: 0;
    Reserved25: 0;
    Reserved26: 0;
    Reserved27: 0;
    Reserved28: 0;
    Reserved29: 0;
    Reserved30: 0;
    Reserved31: 0;
    );

implementation

function AStringsModule_Boot(): AError;
begin
  Result := 0;
end;

function AStringsModule_Fin(): AError;
begin
  Result := 0;
end;

function AStringsModule_Init(): AError;
begin
  Result := 0;
end;

end.
