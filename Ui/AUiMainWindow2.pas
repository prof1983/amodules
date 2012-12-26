{**
@Abstract AUiMainWindow
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 26.12.2012
}
unit AUiMainWindow2;

{$define AStdCall}

interface

uses
  ABase, AStrings, AUiBase, AUiProcVars;

function AUiMainWindow_AddMenuItem(const ParentItemName, Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text: AStr;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMainWindow_AddMenuItemP(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMainWindow_GetMainContainer(): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiMainWindow_AddMenuItem(const ParentItemName, Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
begin
  if not(Assigned(AUiProcVars.MainWindow_AddMenuItem)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMainWindow_AddMenuItem(ParentItemName, Name, Text, OnClick, ImageId, Weight);
end;

function AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text: AStr;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
var
  SParentName: AString_Type;
  SName: AString_Type;
  SText: AString_Type;
begin
  if Assigned(AUiProcVars.AUiMainWindow_AddMenuItemA) then
  begin
    Result := AUiProcVars.AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text, OnClick, ImageId, Weight);
    Exit;
  end;
  AString_AssignA(SParentName, ParentItemName);
  AString_AssignA(SName, Name);
  AString_AssignA(SText, Text);
  Result := AUiMainWindow_AddMenuItem(SParentName, SName, SText, OnClick, ImageId, Weight);
end;

function AUiMainWindow_AddMenuItemP(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
var
  SParentName: AString_Type;
  SName: AString_Type;
  SText: AString_Type;
begin
  if Assigned(AUiProcVars.MainWindow_AddMenuItem) then
  begin
    Result := AUiProcVars.MainWindow_AddMenuItem(ParentItemName, Name, Text, OnClick, ImageId, Weight);
    Exit;
  end;
  AString_AssignP(SParentName, ParentItemName);
  AString_AssignP(SName, Name);
  AString_AssignP(SText, Text);
  Result := AUiMainWindow_AddMenuItem(SParentName, SName, SText, OnClick, ImageId, Weight);
end;

function AUiMainWindow_GetMainContainer(): AControl;
begin
  if not(Assigned(AUiProcVars.AUiMainWindow_GetMainContainer)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMainWindow_GetMainContainer();
end;

end.
 