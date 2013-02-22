{**
@Abstract AUi text view
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 22.02.2013
}
unit AUiTextView;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiProcVars;

// --- AUiTextView ---

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt;

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetFont(TextView: AControl; const FontName: AString_Type; FontSize: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetFontP(TextView: AControl; const FontName: APascalString; FontSize: AInt): AError;

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiTextView ---

function AUiTextView_AddLine(TextView: AControl; const Text: AString_Type): AInt;
begin
  if not(Assigned(AUiProcVars.AUiTextView_AddLine)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_AddLine(TextView, Text);
end;

function AUiTextView_AddLineP(TextView: AControl; const Text: APascalString): AInt;
var
  SText: AString_Type;
begin
  AString_SetP(SText, Text);
  Result := AUiTextView_AddLine(TextView, SText);
end;

function AUiTextView_New(Parent: AControl; ViewType: AInt): AControl;
begin
  if not(Assigned(AUiProcVars.AUiTextView_New)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_New(Parent, ViewType);
end;

function AUiTextView_SetFont(TextView: AControl; const FontName: AString_Type; FontSize: AInt): AError;
begin
  if not(Assigned(AUiProcVars.AUiTextView_SetFont)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_SetFont(TextView, FontName, FontSize);
end;

function AUiTextView_SetFontP(TextView: AControl; const FontName: APascalString; FontSize: AInt): AError;
var
  SFontName: AString_Type;
begin
  AString_SetP(SFontName, FontName);
  Result := AUiTextView_SetFont(TextView, SFontName, FontSize);
end;

function AUiTextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError;
begin
  if not(Assigned(AUiProcVars.AUiTextView_SetReadOnly)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_SetReadOnly(TextView, ReadOnly);
end;

function AUiTextView_SetScrollBars(TextView: AControl; ScrollBars: AInt): AError;
begin
  if not(Assigned(AUiProcVars.AUiTextView_SetScrollBars)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_SetScrollBars(TextView, ScrollBars);
end;

function AUiTextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError;
begin
  if not(Assigned(AUiProcVars.AUiTextView_SetWordWrap)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiProcVars.AUiTextView_SetWordWrap(TextView, Value);
end;

end.
