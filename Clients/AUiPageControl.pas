{**
@Abstract AUi PageControl
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit AUiPageControl;

{$define AStdCall}

interface

uses
  ABase, AStrings,
  AUiBase, AUiProcVars;

function AUiPageControl_AddPage(PageControl: AControl; const Name, Text: AString_Type): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiPageControl_AddPageA(PageControl: AControl; Name, Text: AStr): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiPageControl_AddPageP(PageControl: AControl; const Name, Text: APascalString): AControl; {$ifdef AStdCall}stdcall;{$endif}

function AUiPageControl_New(Parent: AControl): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiPageControl_AddPage(PageControl: AControl; const Name, Text: AString_Type): AControl;
begin
  if not(Assigned(AUiProcVars.AUiPageControl_AddPage)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiPageControl_AddPage(PageControl, Name, Text);
end;

function AUiPageControl_AddPageA(PageControl: AControl; Name, Text: AStr): AControl;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  AString_AssignA(SName, Name);
  AString_AssignA(SText, Text);
  Result := AUiPageControl_AddPage(PageControl, SName, SText);
end;

function AUiPageControl_AddPageP(PageControl: AControl; const Name, Text: APascalString): AControl;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  AString_AssignP(SName, Name);
  AString_AssignP(SText, Text);
  Result := AUiPageControl_AddPage(PageControl, SName, SText);
end;

function AUiPageControl_New(Parent: AControl): AControl;
begin
  if not(Assigned(AUiProcVars.AUiPageControl_New)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiPageControl_New(Parent);
end;

end.
