{**
@Abstract AEvents - Procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit AEventsProcTypes;

interface

uses
  ABase;

type
  A_Event_New_Proc = function(Obj: Integer; const Name: AString_Type): AEvent; stdcall;
  A_Event_NewA_Proc = function(Obj: Integer; {const} Name: PAnsiChar): AEvent; stdcall;
  A_Event_NewP_Proc = function(Obj: Integer; const Name: APascalString): AEvent; stdcall;
  A_Event_NewW_Proc = function(Obj: Integer; {const} Name: PWideChar): AEvent; stdcall;
  A_Event_NewWS_Proc = function(Obj: Integer; const Name: AWideString): AEvent; stdcall;
  A_Event_Free_Proc = function(Event: AEvent): AError; stdcall;
  A_Event_Clear_Proc = function(Event: AEvent): AError; stdcall;
  A_Event_GetListenersCount_Proc = function(Event: AEvent): AInteger; stdcall;

  A_Event_GetName_Proc = function(Event: AEvent; out Value: AString_Type): AInteger; stdcall;
  // MaxLen = SizeOf - 1
  A_Event_GetNameA_Proc = function(Event: AEvent; {out} Value: PAnsiChar; MaxLen: AInteger): AInteger; stdcall;
  A_Event_GetNameP_Proc = function(Event: AEvent): APascalString; stdcall;
  // MaxLen = (SizeOf div 2) - 1
  A_Event_GetNameW_Proc = function(Event: AEvent; {out} Value: PWideChar; MaxLen: AInteger): AInteger; stdcall;

  A_Event_Connect_Proc = function(Event: AEvent; Callback: ACallbackProc; Weight: AInteger = High(AInteger)): AInteger; stdcall;
  A_Event_Disconnect_Proc = function(Event: AEvent; Callback: ACallbackProc): AInteger; stdcall;
  // Вызывает событие. Возврящает кол-во успешно выполненных вызовов (>0) или ошибку (<0).
  A_Event_Invoke_Proc = function(Event: AEvent; Data: Integer): AInteger; stdcall;

  {** Finalize }
  A_Events_Fin_Proc = function(): AError; stdcall;

  {** Initialize }
  A_Events_Init_Proc = function(): AError; stdcall;

implementation

end.
 