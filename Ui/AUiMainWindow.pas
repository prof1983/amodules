{**
@Abstract AUiMainWindow
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 19.02.2013
}
unit AUiMainWindow;

{define AStdCall}

interface

uses
  ABase,
  AUiBase,
  AUiProcVars;

// --- AUiMainWindow ---

function AUiMainWindow_GetMainContainer(): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiMainWindow ---

function AUiMainWindow_GetMainContainer(): AControl;
begin
  if not(Assigned(AUiProcVars.AUiMainWindow_GetMainContainer)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMainWindow_GetMainContainer();
end;

end.
 