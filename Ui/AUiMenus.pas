{**
@Abstract AUi Menus
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 22.04.2013
}
unit AUiMenus;

{$define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiProcVars;

// --- AUiMenu ---

function AUiMenu_AddItem0(Parent: AMenuItem; MenuItem: AMenuItem;
    Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMenu_AddItem1(Menu: AMenu; const Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMenu_AddItem1P(Menu: AMenu; const Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMenu_AddItem2(Parent: AMenuItem; const Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMenu_AddItem2P(ParentMenuItem: AMenuItem; const Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: Integer): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiMenu ---

function AUiMenu_AddItem0(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem;
begin
  if not(Assigned(AUiProcVars.AUiMenu_AddItem0)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMenu_AddItem0(Parent, MenuItem, Weight);
end;

function AUiMenu_AddItem1(Menu: AMenu; const Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
begin
  if not(Assigned(AUiProcVars.AUiMenu_AddItem1)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMenu_AddItem1(Menu, Name, Text, OnClick, ImageId, Weight);
end;

function AUiMenu_AddItem1P(Menu: AMenu; const Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  AString_AssignP(SName, Name);
  AString_AssignP(SText, Text);
  Result := AUiMenu_AddItem1(Menu, SName, SText, OnClick, ImageId, Weight);
end;

function AUiMenu_AddItem2(Parent: AMenuItem; const Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
begin
  if not(Assigned(AUiProcVars.AUiMenu_AddItem2)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMenu_AddItem2(Parent, Name, Text, OnClick, ImageId, Weight);
end;

function AUiMenu_AddItem2P(ParentMenuItem: AMenuItem; const Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: Integer): AMenuItem;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  if Assigned(AUiProcVars.AUiMenu_AddItem2) then
  begin
    AString_AssignP(SName, Name);
    AString_AssignP(SText, Text);
    Result := AUiMenu_AddItem2(ParentMenuItem, SName, SText, OnClick, ImageId, Weight);
    Exit;
  end;
  if Assigned(AUiProcVars.Menu_AddItem2WS) then
  begin
    Result := AUiProcVars.Menu_AddItem2WS(ParentMenuItem, Name, Text, OnClick, ImageId, Weight);
    Exit;
  end;
  Result := 0;
end;

end.
 