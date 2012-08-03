{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit ACollectionsProcRec;

interface

uses
  ABase, ACollectionsProcTypes;

type
  PCollectionsProcs = ^ACollectionsProcs_Type;
  ACollectionsProcs_Type = packed record
    StringList_Add: A_Collections_StringList_Add_Proc;          // 00
    StringList_AddP: A_Collections_StringList_AddP_Proc;        // 01
    StringList_Clear: A_Collections_StringList_Clear_Proc;      // 02
    StringList_Count: A_Collections_StringList_Count_Proc;      // 03
    StringList_Delete: A_Collections_StringList_Delete_Proc;    // 04
    StringList_Insert: A_Collections_StringList_Insert_Proc;    // 05
    StringList_InsertP: A_Collections_StringList_InsertP_Proc;  // 06
    StringList_New: A_Collections_StringList_New_Proc;          // 07
    StringList_RemoveAt: A_Collections_StringList_RemoveAt_Proc;// 08
    Init: A_Collections_Init_Proc;                              // 09
    Fin: A_Collections_Fin_Proc;                                // 10

    {$IFDEF A01}
      Reserved11: AInteger;
      Reserved12: AInteger;
      Reserved13: AInteger;
      Reserved14: AInteger;
      Reserved15: AInteger;
    {$ELSE}
      {$IFDEF A02}
        Reserved11: AInteger;
        Reserved12: AInteger;
        Reserved13: AInteger;
        Reserved14: AInteger;
        Reserved15: AInteger;
      {$ELSE}
        StringList_AddA: A_Collections_StringList_AddA_Proc;    // 11
        Reserved12: AInteger;
        Reserved13: AInteger;
        Reserved14: AInteger;
        Reserved15: AInteger;
      {$ENDIF A02}
    {$ENDIF A01}

    Reserved16: AInteger; {16}
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
 