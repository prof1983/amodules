{**
@Abstract User Interface window functions
@Author Prof1983 <prof1983@ya.ru>
@Created 21.08.2012
@LastMod 15.11.2012
}
unit AUiWindows;

interface

uses
  ABase, AUiBase, AUiProcVars;

// --- AUiWindow ---

{
function AUi_Window_Add(Window: AWindow): AError;

function AUi_Window_Free(Window: AWindow): AError;

function AUi_Window_FreeAndNil(var Window: AWindow): AError;

function AUi_Window_GetMenu(Window: AWindow): AMenu;

function AUi_Window_New(): AControl;

function AUi_Window_SetBorderStyle(Window: AWindow; BorderStyle: AInt): AError;

function AUi_Window_SetFormStyle(Window: AWindow; FormStyle: AInt): AError;

function AUi_Window_SetPosition(Window: AWindow; Position: AInt): AError;

function AUi_Window_SetState(Window: AWindow; State: AInt): AError;

function AUi_Window_ShowModal(Window: AWindow): ABoolean;
}

implementation

// --- AUi_Window ---

{
function AUi_Window_Add(Window: AWindow): AError;
begin
  AUiProcVars.
end;
}

end.
 