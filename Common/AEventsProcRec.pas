{**
@Abstract AEvents - Procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit AEventsProcRec;

interface

uses
  ABase, AEventsProcTypes;

type
  AEventsProcs_Type = packed record
    Event_Clear: A_Event_Clear_Proc;                            // 00
    Event_Connect: A_Event_Connect_Proc;                        // 01
    Event_Disconnect: A_Event_Disconnect_Proc;                  // 02
    Event_Free: A_Event_Free_Proc;                              // 03
    Event_GetListenersCount: A_Event_GetListenersCount_Proc;    // 04
    Event_GetName: A_Event_GetName_Proc;                        // 05
    Event_Invoke: A_Event_Invoke_Proc;                          // 06
    Event_New: A_Event_New_Proc;                                // 07

    Event_NewA: A_Event_NewA_Proc;                              // 08
    Event_NewP: A_Event_NewP_Proc;                              // 09
    Event_NewW: A_Event_NewW_Proc;                              // 10
    Event_GetNameA: A_Event_GetNameA_Proc;                      // 11
    Event_GetNameP: A_Event_GetNameP_Proc;                      // 12
    Event_GetNameW: A_Event_GetNameW_Proc;                      // 13
    Init: A_Events_Init_Proc;                                   // 14
    Fin: A_Events_Fin_Proc;                                     // 15

    Event_NewWS: A_Event_NewWS_Proc;                            // 16
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

    {$IFDEF A03}
    Reserved32: AInteger;
    Reserved33: AInteger;
    Reserved34: AInteger;
    Reserved35: AInteger;
    Reserved36: AInteger;
    Reserved37: AInteger;
    Reserved38: AInteger;
    Reserved39: AInteger;
    Reserved40: AInteger;
    Reserved41: AInteger;
    Reserved42: AInteger;
    Reserved43: AInteger;
    Reserved44: AInteger;
    Reserved45: AInteger;
    Reserved46: AInteger;
    Reserved47: AInteger;
    {$ENDIF A03}
  end;

implementation

end.
 