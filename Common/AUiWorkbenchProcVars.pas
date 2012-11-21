{**
@Abstract AUiWorkbench procs
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 21.11.2012
}
unit AUiWorkbenchProcVars;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  AUiWorkbenchProcTypes;

var
  AUiWorkbench_AddPage: AUiWorkbench_AddPage_Proc = nil;
  {$ifdef ADepr}
  AUiWorkbench_AddPageWS: AUiWorkbench_AddPageWS_Proc = nil;
  {$endif}
  AUiWorkbench_Fin: AUiWorkbench_Fin_Proc = nil;
  AUiWorkbench_Init: AUiWorkbench_Init_Proc = nil;

implementation

end.
 