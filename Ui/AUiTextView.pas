{**
@Abstract AUi text view
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 23.04.2013
}
unit AUiTextView;

{$define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiProcVars;

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt;
begin
  if Assigned(AUiProcVars.AUiTextView_AddLine) then
  begin
    Result := AUiProcVars.AUiTextView_AddLine(TextView, Text);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_TextView_AddLine) then
  begin
    Result := AUiProcVars.UI_TextView_AddLine(TextView, AString_ToPascalString(Text));
    Exit;
  end;
  {$endif}
  Result := 0;
end;

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt;
var
  S: AString_Type;
begin
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_TextView_AddLine) then
  begin
    Result := AUiProcVars.UI_TextView_AddLine(TextView, Text);
    Exit;
  end;
  Result := 0;
  {$else}
  if (AString_SetP(S, Text) <> 0) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiTextView_AddLine(TextView, S);
  {$endif}
end;

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl;
begin
  if Assigned(AUiProcVars.AUiTextView_New) then
  begin
    Result := AUiProcVars.AUiTextView_New(Parent, ViewType);
    Exit;
  end;
  Result := 0;
end;

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError;
begin
  if Assigned(AUiProcVars.AUiTextView_SetReadOnly) then
  begin
    AUiProcVars.AUiTextView_SetReadOnly(TextView, ReadOnly);
    Result := 0;
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_TextView_SetReadOnly) then
  begin
    AUiProcVars.UI_TextView_SetReadOnly(TextView, ReadOnly);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError;
begin
  if Assigned(AUiProcVars.AUiTextView_SetScrollBars) then
  begin
    AUiProcVars.AUiTextView_SetScrollBars(TextView, ScrollBars);
    Result := 0;
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_TextView_SetScrollBars) then
  begin
    AUiProcVars.UI_TextView_SetScrollBars(TextView, ScrollBars);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError;
begin
  if Assigned(AUiProcVars.AUiTextView_SetWordWrap) then
  begin
    AUiProcVars.AUiTextView_SetWordWrap(TextView, Value);
    Result := 0;
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUiProcVars.UI_TextView_SetWordWrap) then
  begin
    AUiProcVars.UI_TextView_SetWordWrap(TextView, Value);
    Result := 0;
    Exit;
  end;
  {$endif}
  Result := -1;
end;

end.
