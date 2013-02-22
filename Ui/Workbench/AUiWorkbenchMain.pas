{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 22.02.2013
}
unit AUiWorkbenchMain;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiWorkbenchProcVars;

// --- AUiWorkbench ---

{** Creates a new tab in the main window of the program
    @return 0 - error, else identifier new page }
function AUiWorkbench_AddPage(const Name, Text: AString_Type): AControl; {$ifdef AStdCall}stdcall;{$endif}

{** Creates a new tab in the main window of the program
    @return 0 - error, else identifier new page }
function AUiWorkbench_AddPageP(const Name, Text: APascalString): AControl;

{** Finalize workbench }
function AUiWorkbench_Fin(): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Initialize workbench }
function AUiWorkbench_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Set OnChange event listener }
function AUiWorkbench_SetOnChange(OnChange: ACallbackProc): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiWorkbench ---

function AUiWorkbench_AddPage(const Name, Text: AString_Type): AControl;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_AddPage)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_AddPage(Name, Text);
end;

function AUiWorkbench_AddPageP(const Name, Text: APascalString): AControl;
var
  SName: AString_Type;
  SText: AString_Type;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_AddPage)) then
  begin
    Result := 0;
    Exit;
  end;
  AString_SetP(SName, Name);
  AString_SetP(SText, Text);
  Result := AUiWorkbench_AddPage(SName, SText);
end;

function AUiWorkbench_Fin(): AError;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_Fin();
end;

function AUiWorkbench_Init(): AError;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_Init();
end;

function AUiWorkbench_SetOnChange(OnChange: ACallbackProc): AError;
begin
  if not(Assigned(AUiWorkbenchProcVars.AUiWorkbench_SetOnChange)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUiWorkbenchProcVars.AUiWorkbench_SetOnChange(OnChange);
end;

end.
 