{**
@Abstract AUi dialogs
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 23.04.2013
}
unit AUiDialogs;

{$define AStdCall}

interface

uses
  ABase, AUiBase, AUiProcVars;

{$ifdef ADepr}
function AUiDialog_AddButton02(Win: AWindow; Left, Width: AInteger; const Text: AWideString;
    OnClick: ACallbackProc02): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_AddButtonP(Win: AWindow; Left, Width: AInt; const Text: APascalString;
    OnClick: ACallbackProc): AControl; {$ifdef AStdCall}stdcall;{$endif}
{$endif}

function AUiDialog_GetWindow(Dialog: ADialog): AWindow; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_New(Buttons: AUiWindowButtons): ADialog; {$ifdef AStdCall}stdcall;{$endif}

implementation

{$ifdef ADepr}
function AUiDialog_AddButton02(Win: AWindow; Left, Width: AInteger; const Text: AWideString;
    OnClick: ACallbackProc02): AControl;
begin
  if Assigned(AUiProcVars.UI_Dialog_AddButton) then
  begin
    Result := AUiProcVars.UI_Dialog_AddButton(Win, Left, Width, Text, OnClick);
    Exit;
  end;
  Result := 0;
end;
{$endif}

{$ifdef ADepr}
function AUiDialog_AddButtonP(Win: AWindow; Left, Width: AInt; const Text: APascalString;
    OnClick: ACallbackProc): AControl;
begin
  Result := AUiDialog_AddButton02(Win, Left, Width, Text, nil);
end;
{$endif}

function AUiDialog_GetWindow(Dialog: ADialog): AWindow;
begin
  if Assigned(AUiProcVars.AUiDialog_GetWindow) then
  begin
    Result := AUiProcVars.AUiDialog_GetWindow(Dialog);
    Exit;
  end;
  Result := 0;
end;

function AUiDialog_New(Buttons: AUiWindowButtons): ADialog;
begin
  if Assigned(AUiProcVars.AUiDialog_New) then
  begin
    Result := AUiProcVars.AUiDialog_New(Buttons);
    Exit;
  end;
  Result := 0;
end;

end.
 