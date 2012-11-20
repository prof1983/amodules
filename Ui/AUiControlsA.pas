{**
Abstract AUiControls
Author Prof1983 <prof1983@ya.ru>
Created 20.11.2012
LastMod 20.11.2012
}
unit AUiControlsA;

{$define AStdCall}

interface

uses
  ABase, AUiBase, AUiProcVars;

function AUiControl_SetOnChange(Control: AControl; OnChange: ACallbackProc): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiControl_SetOnChange(Control: AControl; OnChange: ACallbackProc): AError;
begin
  if not(Assigned(AUiProcVars.AUi_Control_SetOnChange)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUi_Control_SetOnChange(Control, OnChange);
end;

end.
 