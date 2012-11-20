{**
@Abstract AUiWorkbench procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 20.11.2012
}
unit AUiWorkbenchProcTypes;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, AUiBase;

type
  AUiWorkbench_AddPage_Proc = function(const Name, Text: AString_Type): AControl; stdcall;
  {$ifdef ADepr}
  { Создает новую вкладку в главном окне программы. Возврашает:
    0 - если произошла ошибка, иначе идентификатор новой вкладки (если операция прошла успешно) }
  AUiWorkbench_AddPageWS_Proc = function(const Name, Text: AWideString): AControl; stdcall;
  {$endif}
  AUiWorkbench_Fin_Proc = function(): AError; stdcall;
  AUiWorkbench_Init_Proc = function(): AError; stdcall;

implementation

end.

