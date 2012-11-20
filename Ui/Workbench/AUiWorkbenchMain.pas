{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit AUiWorkbenchMain;

interface

uses
  ABase, AStrings, AUiBase, AUiWorkbenchProcVars;

function AUiWorkbench_AddPage(const Name, Text: AString_Type): AControl; stdcall;

{** Creates a new tab in the main window of the program
    @return 0 - error, else identifier new page }
function AUiWorkbench_AddPageP(const Name, Text: APascalString): AControl; stdcall;

{** Creates a new tab in the main window of the program
    @return 0 - error, else identifier new page }
function AUiWorkbench_AddPageWS(const Name, Text: AWideString): AControl; stdcall;

{** Finalize workbench }
function AUiWorkbench_Fin(): AError; stdcall;

{** Initialize workbench }
function AUiWorkbench_Init(): AError; stdcall;

implementation

function AUiWorkbench_AddPage(const Name, Text: AString_Type): AControl;
begin
  if Assigned(AUiWorkbenchProcVars.AUiWorkbench_AddPage) then
  begin
    Result := AUiWorkbenchProcVars.AUiWorkbench_AddPage(Name, Text);
    Exit;
  end;
  if Assigned(AUiWorkbenchProcVars.AUiWorkbench_AddPageWS) then
  begin
    Result := AUiWorkbenchProcVars.AUiWorkbench_AddPageWS(AString_ToWideString(Name), AString_ToWideString(Text));
    Exit;
  end;
  Result := -1;
end;

function AUiWorkbench_AddPageP(const Name, Text: APascalString): AControl;
begin
  Result := AUiWorkbench_AddPageWS(Name, Text);
end;

function AUiWorkbench_AddPageWS(const Name, Text: AWideString): AControl;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  if Assigned(AUiWorkbenchProcVars.AUiWorkbench_AddPageWS) then
  begin
    Result := AUiWorkbenchProcVars.AUiWorkbench_AddPageWS(Name, Text);
    Exit;
  end;
  AString_AssignWS(SName, Name);
  AString_AssignWS(SText, Text);
  Result := AUiWorkbench_AddPage(SName, SText);
end;

function AUiWorkbench_Fin(): AError;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_Fin)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_Fin();
end;

function AUiWorkbench_Init(): AError;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_Init();
end;

end.
 