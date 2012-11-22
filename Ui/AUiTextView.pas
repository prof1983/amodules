{**
@Abstract AUi text view
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 22.11.2012
}
unit AUiTextView;

{$define AStdCall}

interface

uses
  ABase, AStrings, AUiBase, AUiProcVars;

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt;
begin
  if Assigned(AUiProcVars.UI_TextView_AddLine) then
  begin
    Result := AUiProcVars.UI_TextView_AddLine(TextView, AString_ToPascalString(Text));
    Exit;
  end;
  Result := 0;
end;

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt;
begin
  if Assigned(AUiProcVars.UI_TextView_AddLine) then
  begin
    Result := AUiProcVars.UI_TextView_AddLine(TextView, Text);
    Exit;
  end;
  Result := 0;
end;

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl;
begin
  if Assigned(AUiProcVars.UI_TextView_New) then
  begin
    Result := AUiProcVars.UI_TextView_New(Parent, ViewType);
    Exit;
  end;
  Result := 0;
end;

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError;
begin
  if Assigned(AUiProcVars.UI_TextView_SetReadOnly) then
  begin
    AUiProcVars.UI_TextView_SetReadOnly(TextView, ReadOnly);
    Result := 0;
    Exit;
  end;
  Result := -1;
end;

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError;
begin
  if Assigned(AUiProcVars.UI_TextView_SetScrollBars) then
  begin
    AUiProcVars.UI_TextView_SetScrollBars(TextView, ScrollBars);
    Result := 0;
    Exit;
  end;
  Result := -1;
end;

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError;
begin
  if Assigned(AUiProcVars.UI_TextView_SetWordWrap) then
  begin
    AUiProcVars.UI_TextView_SetWordWrap(TextView, Value);
    Result := 0;
    Exit;
  end;
  Result := -1;
end;

end.
