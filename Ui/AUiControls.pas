{**
Abstract AUiControl functions
Author Prof1983 <prof1983@ya.ru>
Created 16.11.2012
LastMod 11.12.2012
}
unit AUiControls;

{$ifdef A04}{$define AStdCall}{$endif}

interface

uses
  ABase, AStrings,
  AUiBase, AUiProcVars;

function AUiControl_Free(Control: AControl): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_GetText(Control: AControl; out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_GetTextP(Control: AControl): APascalString; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetAlign(Control: AControl; Align: TUiAlign): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetClientSize(Control: AControl; ClientWidth, ClientHeight: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetColor(Control: AControl; Color: AColor): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Set font
    @param FontName - (const) }
function AUiControl_SetFont1A(Control: AControl; FontName: AStr;
    FontSize: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetPosition(Control: AControl; Left, Top: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetSize(Control: AControl; Width, Height: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetText(Control: AControl; const Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetTextP(Control: AControl; const Value: APascalString): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetVisible(Control: AControl; Value: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiControl_Free(Control: AControl): AError;
begin
  if Assigned(AUiProcVars.AUiControl_Free) then
  begin
    Result := AUiProcVars.AUiControl_Free(Control);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_Free) then
  begin
    AUiProcVars.UI_Control_Free(Control);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiControl_GetText(Control: AControl; out Value: AString_Type): AError;
begin
  if not(Assigned(AUiProcVars.AUiControl_GetText)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiControl_GetText(Control, Value);
end;

function AUiControl_GetTextP(Control: AControl): APascalString;
var
  S: AString_Type;
begin
  if (AUiControl_GetText(Control, S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function AUiControl_SetAlign(Control: AControl; Align: TUiAlign): AError;
begin
  if Assigned(AUiProcVars.AUiControl_SetAlign) then
  begin
    Result := AUiProcVars.AUiControl_SetAlign(Control, Align);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_SetAlign) then
  begin
    AUiProcVars.UI_Control_SetAlign(Control, Align);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiControl_SetClientSize(Control: AControl; ClientWidth, ClientHeight: AInt): AError;
begin
  if Assigned(AUiProcVars.AUiControl_SetClientSize) then
  begin
    Result := AUiProcVars.AUiControl_SetClientSize(Control, ClientWidth, ClientHeight);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_SetClientSize) then
  begin
    AUiProcVars.UI_Control_SetClientSize(Control, ClientWidth, ClientHeight);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiControl_SetColor(Control: AControl; Color: AColor): AError;
begin
  if Assigned(AUiProcVars.AUiControl_SetColor) then
  begin
    Result := AUiProcVars.AUiControl_SetColor(Control, Color);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_SetColor) then
  begin
    AUiProcVars.UI_Control_SetColor(Control, Color);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiControl_SetFont1A(Control: AControl; FontName: AStr; FontSize: AInt): AError;
var
  S: AString_Type;
begin
  if Assigned(AUiProcVars.AUiControl_SetFont1A) then
  begin
    Result := AUiProcVars.AUiControl_SetFont1A(Control, FontName, FontSize);
    Exit;
  end;
  if Assigned(AUiProcVars.AUiControl_SetFont1) then
  begin
    AString_AssignA(S, FontName);
    AUiProcVars.AUiControl_SetFont1(Control, S, FontSize);
    Result := 0;
    Exit;
  end;
  Result := -1;
end;

function AUiControl_SetPosition(Control: AControl; Left, Top: AInt): AError;
begin
  if not(Assigned(AUiProcVars.AUiControl_SetPosition)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiControl_SetPosition(Control, Left, Top);
end;

function AUiControl_SetSize(Control: AControl; Width, Height: AInt): AError;
begin
  if not(Assigned(AUiProcVars.AUiControl_SetSize)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiControl_SetSize(Control, Width, Height);
end;

function AUiControl_SetText(Control: AControl; const Value: AString_Type): AError;
begin
  if not(Assigned(AUiProcVars.AUiControl_SetText)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiControl_SetText(Control, Value);
end;

function AUiControl_SetTextP(Control: AControl; const Value: APascalString): AError;
var
  S: AString_Type;
begin
  if Assigned(AUiProcVars.AUiControl_SetText) then
  begin
    AString_AssignP(S, Value);
    Result := AUiControl_SetText(Control, S);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_SetTextWS) then
  begin
    AUiProcVars.UI_Control_SetTextWS(Control, Value);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiControl_SetVisible(Control: AControl; Value: ABoolean): AError;
begin
  if Assigned(AUiProcVars.AUiControl_SetVisible) then
  begin
    AUiProcVars.AUiControl_SetVisible(Control, Value);
    Result := 0;
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_Control_SetVisible) then
  begin
    AUiProcVars.UI_Control_SetVisible(Control, Value);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

end.
