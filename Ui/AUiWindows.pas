{**
@Abstract User Interface window functions
@Author Prof1983 <prof1983@ya.ru>
@Created 21.08.2012
@LastMod 21.11.2012
}
unit AUiWindows;

interface

uses
  ABase, AUiBase, AUiProcVars;

// --- AUiWindow ---

{
function AUi_Window_Add(Window: AWindow): AError;
}

function AUiWindow_Free(Window: AWindow): AError; {$ifdef AStdCall}stdcall;{$endif}

{
function AUi_Window_FreeAndNil(var Window: AWindow): AError;

function AUi_Window_GetMenu(Window: AWindow): AMenu;
}

function AUiWindow_New(): AControl; stdcall;

function AUiWindow_SetBorderStyle(Window: AWindow; BorderStyle: AInt): AError;

{
function AUi_Window_SetFormStyle(Window: AWindow; FormStyle: AInt): AError;

function AUi_Window_SetPosition(Window: AWindow; Position: AInt): AError;

function AUi_Window_SetState(Window: AWindow; State: AInt): AError;
}

function AUiWindow_ShowModal(Window: AWindow): ABoolean; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiWindow ---

function AUiWindow_Free(Window: AWindow): AError;
begin
  if not(Assigned(AUiProcVars.AUiWindow_Free)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiWindow_Free(Window);
end;

function AUiWindow_New(): AControl;
begin
  if Assigned(AUiProcVars.AUiWindow_New) then
  begin
    Result := AUiProcVars.AUiWindow_New();
    Exit;
  end;
  if Assigned(AUiProcVars.UI_Window_New) then
  begin
    Result := AUiProcVars.UI_Window_New();
    Exit;
  end;
  Result := 0;
end;

function AUiWindow_SetBorderStyle(Window: AWindow; BorderStyle: AInt): AError;
begin
  if Assigned(AUiProcVars.UI_Window_SetBorderStyle) then
  begin
    AUiProcVars.UI_Window_SetBorderStyle(Window, BorderStyle);
    Result := 0;
    Exit;
  end;
  if Assigned(AUiProcVars.AUiWindow_SetBorderStyle) then
  begin
    Result := AUiProcVars.AUiWindow_SetBorderStyle(Window, BorderStyle);
    Exit;
  end;
  Result := -1;
end;

function AUiWindow_ShowModal(Window: AWindow): ABoolean;
begin
  if Assigned(AUiProcVars.AUiWindow_ShowModal) then
  begin
    Result := AUiProcVars.AUiWindow_ShowModal(Window);
    Exit;
  end;

  if Assigned(AUiProcVars.AUiWindow_ShowModal) then
  begin
    Result := AUiProcVars.AUiWindow_ShowModal(Window);
    Exit;
  end;
  Result := False;
end;

end.
 