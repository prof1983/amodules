{**
@Abstract AUiListBox
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit AUiListBox;

{$define AStdCall}

interface

uses
  ABase, AStrings,
  AUiBase, AUiProcVars;

function AUiListBox_Add(ListBox: AControl; const Text: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiListBox_AddP(ListBox: AControl; const Text: APascalString): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AUiListBox_Clear(ListBox: AControl): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiListBox_New(Parent: AControl): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiListBox_Add(ListBox: AControl; const Text: AString_Type): AInt;
begin
  if not(Assigned(AUiProcVars.AUiListBox_Add)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiListBox_Add(ListBox, Text);
end;

function AUiListBox_AddP(ListBox: AControl; const Text: APascalString): AInt;
var
  S: AString_Type;
begin
  AString_AssignP(S, Text);
  Result := AUiListBox_Add(ListBox, S);
end;

function AUiListBox_Clear(ListBox: AControl): AError;
begin
  if not(Assigned(AUiProcVars.AUiListBox_Clear)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiListBox_Clear(ListBox);
end;

function AUiListBox_New(Parent: AControl): AControl;
begin
  if not(Assigned(AUiProcVars.AUiListBox_New)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiListBox_New(Parent);
end;

end.
