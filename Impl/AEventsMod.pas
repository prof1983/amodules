{**
@Abstract AEvents
@Author Prof1983 <prof1983@ya.ru>
@Created 27.05.2011
@LastMod 06.08.2012
}
unit AEventsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, AEvents, AEventsBase, {$IFDEF ADepr}AEventsProcRec,{$ENDIF} ARuntime, ARuntimeBase, AStrings;

function AEventsMod_Boot(): AError; stdcall;

function AEventsMod_Fin(): AError; stdcall;

function AEventsMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  EventsProcs: AEventsProcs_Type = (
    Event_Clear: AEvents.Event_Clear;                           // 00
    Event_Connect: AEvents.Event_Connect;                       // 01
    Event_Disconnect: AEvents.Event_Disconnect;                 // 02
    Event_Free: AEvents.Event_Free;                             // 03
    Event_GetListenersCount: AEvents.Event_GetListenersCount;   // 04
    Event_GetName: AEvents.Event_GetName;                       // 05
    Event_Invoke: AEvents.Event_Invoke;                         // 06
    Event_New: AEvents.Event_New;                               // 07

    Event_NewA: AEvents.Event_NewA;                             // 08
    Event_NewP: AEvents.Event_NewP;                             // 09
    Event_NewW: AEvents.Event_NewW;                             // 10
    Event_GetNameA: AEvents.Event_GetNameA;                     // 11
    Event_GetNameP: AEvents.Event_GetNameP;                     // 12
    Event_GetNameW: AEvents.Event_GetNameW;                     // 13
    Init: AEventsMod_Init;                                      // 14
    Fin: AEventsMod_Fin;                                        // 15

    Event_NewWS: AEvents.Event_NewWS;                           // 16
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
{$ENDIF ADepr}

implementation

const
  AEvents_Version = $00040000;

const
  EventsModule: AModule_Type = (
    Version: AEvents_Version;
    Uid: AEvents_Uid;
    Name: AEvents_Name;
    Description: nil;
    Init: AEventsMod_Init;
    Fin: AEventsMod_Fin;
    GetProc: nil;
    Procs: {$IFDEF ADepr}Addr(EventsProcs){$ELSE}nil{$ENDIF};
    );

// --- AEventsMod ---

function AEventsMod_Boot(): AError;
begin
  if (ARuntime.Modules_FindByUid(AEvents_Uid) >= 0) then
  begin
    Result := -2;
    Exit;
  end;

  if (ARuntime.Modules_FindByName(AEvents_Name) >= 0) then
  begin
    Result := -3;
    Exit;
  end;

  Result := AModule_Register(EventsModule);
end;

function AEventsMod_Fin(): AError;
begin
  Result := 0;
end;

function AEventsMod_Init(): AError;
begin
  Result := 0;
end;

end.
