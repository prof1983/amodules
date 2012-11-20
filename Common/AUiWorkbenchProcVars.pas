{**
@Abstract AUiWorkbench procs
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit AUiWorkbenchProcVars;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  AUiWorkbenchProcTypes;

var
  AUiWorkbench_AddPage: AUiWorkbench_AddPage_Proc;
  {$ifdef ADepr}
  AUiWorkbench_AddPageWS: AUiWorkbench_AddPageWS_Proc;
  {$endif}
  AUiWorkbench_Fin: AUiWorkbench_Fin_Proc;
  AUiWorkbench_Init: AUiWorkbench_Init_Proc;

implementation

end.
 