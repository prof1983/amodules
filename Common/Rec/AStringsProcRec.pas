{**
@Abstract AStrings
@Author Prof1983 <prof1983@ya.ru>
@Created 01.09.2011
@LastMod 01.08.2012
}
unit AStringsProcRec;

interface

uses
  ABase, AStringsProcTypes;

type
  AStringsProcs_Type = packed record
    String_Assign: AString_Assign_Proc;                         // 00
    String_AssignA: AString_AssignA_Proc;                       // 01
    String_Copy: AString_Copy_Proc;                             // 02
    String_Clear: AString_Clear_Proc;                           // 03
    String_Length: AString_GetLength_Proc;                      // 04
    String_AssignWS: AString_AssignWS_Proc;                     // 05
    String_ToWideString: AString_ToWideString_Proc;             // 06
    String_AssignP: AString_AssignP_Proc;                       // 07
    String_ToPascalString: AString_ToPascalString_Proc;         // 08
    Init: AStrings_Init_Proc;                                   // 09
    Reserved10: AInteger;
    Reserved11: AInteger;
    Reserved12: AInteger;
    Reserved13: AInteger;
    Reserved14: AInteger;
    Reserved15: AInteger;
    Reserved16: AInteger;
    Reserved17: AInteger;
    Reserved18: AInteger;
    Reserved19: AInteger;
    Reserved20: AInteger;
    Reserved21: AInteger;
    Reserved22: AInteger;
    Reserved23: AInteger;
    Reserved24: AInteger;
    Reserved25: AInteger;
    Reserved26: AInteger;
    Reserved27: AInteger;
    Reserved28: AInteger;
    Reserved29: AInteger;
    Reserved30: AInteger;
    Reserved31: AInteger;
  end;

implementation

end.
 