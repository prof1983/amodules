{**
Author Prof1983 <prof1983@ya.ru>
Created 16.11.2012
LastMod 16.11.2012
}
unit AUiControls;

{$ifdef A04}{$define AStdCall}{$endif}

interface

uses
  ABase, AStrings,
  AUiBase, AUiProcVars;

function AUiControl_GetText(Control: AControl; out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_GetTextP(Control: AControl): APascalString; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetPosition(Control: AControl; Left, Top: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetSize(Control: AControl; Width, Height: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetText(Control: AControl; const Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiControl_SetTextP(Control: AControl; const Value: APascalString): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

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
  AString_AssignP(S, Value);
  Result := AUiControl_SetText(Control, S);
end;

end.
