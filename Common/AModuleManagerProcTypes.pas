{**
@Abstract AModuleManager proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 23.07.2010
@LastMod 20.02.2013
}
unit AModuleManagerProcTypes;

interface

uses
  ABase;

type
  AModuleManager_Fin_Proc = function(): AError; stdcall;
  AModuleManager_Init_Proc = function(): AError; stdcall;

implementation

end.
 