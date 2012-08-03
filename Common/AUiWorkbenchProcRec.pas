{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit AUiWorkbenchProcRec;

{DEFINE A01}
{DEFINE A02}

interface

uses
  ABase, AUiWorkbenchProcTypes;

type
  AUiWorkbenchProcs_Type = packed record // A02-8x4; A03-16x4
    AddPageWS: AUiWorkbench_AddPageWS_Proc;
    {$IFDEF A01}
      Reserved01: Integer;
      Reserved02: Integer;
    {$ELSE}
      Init: AUiWorkbench_Init_Proc;
      Fin: AUiWorkbench_Fin_Proc;
    {$ENDIF A01}
    Reserved03: Integer;
    Reserved04: Integer;
    Reserved05: Integer;
    Reserved06: Integer;
    Reserved07: Integer;
    {$IFDEF A01}
    {$ELSE}
      {$IFDEF A02}
      {$ELSE}
      Reserved08: AInteger;
      Reserved09: AInteger;
      Reserved10: AInteger;
      Reserved11: AInteger;
      Reserved12: AInteger;
      Reserved13: AInteger;
      Reserved14: AInteger;
      Reserved15: AInteger;
      {$ENDIF A02}
    {$ENDIF A01}
  end;

implementation

end.
 
