{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 23.04.2013
}
unit AUiModClient;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ARuntimeBase, ARuntimeMain,
  AUiBase,
  AUiProcSet,
  AUiProcVars;

// --- AUi ---

function AUi_Boot(): AError;

// ---

function Ui_Boot(): AError; deprecated; // Use AUi_Boot()

implementation

{ Module }

function AUi_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(AUI_Uid, Module) < 0) then
  begin
    Result := -3;
    Exit;
  end;

  AUiProcVars.AUi_Init := Module.Init;
  AUiProcVars.AUi_Fin := Module.Fin;
  if Assigned(Module.GetProc) then
  begin
    Result := AUi_SetProcs(Module.GetProc);
    Exit;
  end;

  {$ifdef ADepr}
  if not(Ui_SetProcsP(Module.Procs, Module.Init, Module.Fin)) then
  begin
    Result := -4;
    Exit;
  end;
  {$endif}
  Result := 0;
end;

function Ui_Boot(): AError;
begin
  Result := AUi_Boot();
end;

end.
 