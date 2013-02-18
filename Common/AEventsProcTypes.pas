{**
@Abstract AEvents - Procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 18.02.2013
}
unit AEventsProcTypes;

interface

uses
  ABase;

type
  AEvent_Clear_Proc = function(Event: AEvent): AError; stdcall;
  AEvent_Connect_Proc = function(Event: AEvent; Callback: ACallbackProc; Weight: AInt): AInt; stdcall;
  AEvent_Disconnect_Proc = function(Event: AEvent; Callback: ACallbackProc): AInt; stdcall;
  AEvent_Free_Proc = function(Event: AEvent): AError; stdcall;
  AEvent_GetListenersCount_Proc = function(Event: AEvent): AInt; stdcall;
  AEvent_GetName_Proc = function(Event: AEvent; out Value: AString_Type): AInt; stdcall;
  AEvent_GetNameA_Proc = function(Event: AEvent; Value: AStr; MaxLen: AInt): AInt; stdcall;
  AEvent_Invoke_Proc = function(Event: AEvent; Data: AInt): AInt; stdcall;
  AEvent_New_Proc = function(Obj: Integer; const Name: AString_Type): AEvent; stdcall;
  AEvent_NewA_Proc = function(Obj: Integer; Name: AStr): AEvent; stdcall;
  AEvents_Fin_Proc = function(): AError; stdcall;
  AEvents_Init_Proc = function(): AError; stdcall;

implementation

end.
 