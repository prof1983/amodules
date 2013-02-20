{**
@Abstract AUi dialogs
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 20.02.2013
}
unit AUiDialogs;

{define AStdCall}

interface

uses
  ABase,
  ABaseTypes,
  AUiBase,
  AUiProcVars;

// --- AUi ---

function AUi_ExecuteMessageDialog1(const Text, Caption: AString_Type;
    Flags: AMessageBoxFlags): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

function AUi_ExecuteMessageDialog1A(Text, Caption: AStr;
    Flags: AMessageBoxFlags): ADialogBoxCommands; {$ifdef AStdCall}stdcall;{$endif}

// --- AUiDialog ---

function AUiDialog_AddButton1(Dialog: ADialog; Left, Width: AInt;
      const Text: AString_Type; OnClick: ACallbackProc): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_Free(Dialog: ADialog): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_GetButtonsBox(Dialog: ADialog): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_GetWindow(Dialog: ADialog): AWindow; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_New(Buttons: AUiWindowButtons): ADialog; {$ifdef AStdCall}stdcall;{$endif}

function AUiDialog_ShowModal(Dialog: ADialog): ABool; {$ifdef AStdCall}stdcall;{$endif}


implementation

// --- AUi ---

function AUi_ExecuteMessageDialog1(const Text, Caption: AString_Type;
    Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  if not(Assigned(AUiProcVars.AUi_ExecuteMessageDialog1)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_ExecuteMessageDialog1(Text, Caption, Flags);
end;

function AUi_ExecuteMessageDialog1A(Text, Caption: AStr;
    Flags: AMessageBoxFlags): ADialogBoxCommands;
begin
  if not(Assigned(AUiProcVars.AUi_ExecuteMessageDialog1A)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_ExecuteMessageDialog1A(Text, Caption, Flags);
end;

// --- AUiDialog ---

function AUiDialog_AddButton1(Dialog: ADialog; Left, Width: AInt;
      const Text: AString_Type; OnClick: ACallbackProc): AControl;
begin
  if not(Assigned(AUiProcVars.AUiDialog_AddButton1)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_AddButton1(Dialog, Left, Width, Text, OnClick);
end;

function AUiDialog_Free(Dialog: ADialog): AError;
begin
  if not(Assigned(AUiProcVars.AUiDialog_Free)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_Free(Dialog);
end;

function AUiDialog_GetButtonsBox(Dialog: ADialog): AControl;
begin
  if not(Assigned(AUiProcVars.AUiDialog_GetButtonsBox)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_GetButtonsBox(Dialog);
end;

function AUiDialog_GetWindow(Dialog: ADialog): AWindow;
begin
  if not(Assigned(AUiProcVars.AUiDialog_GetWindow)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_GetWindow(Dialog);
end;

function AUiDialog_New(Buttons: AUiWindowButtons): ADialog;
begin
  if not(Assigned(AUiProcVars.AUiDialog_New)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_New(Buttons);
end;

function AUiDialog_ShowModal(Dialog: ADialog): ABool;
begin
  if not(Assigned(AUiProcVars.AUiDialog_ShowModal)) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUiProcVars.AUiDialog_ShowModal(Dialog);
end;

end.
 