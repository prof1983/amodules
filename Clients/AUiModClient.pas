{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 14.12.2012
}
unit AUiModClient;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ARuntimeBase, ARuntimeMain,
  AUiBase, {$ifdef ADepr}AUiProcSet,{$endif} AUiProcVars;

// --- AUi ---

function AUi_Boot(): AError;

// ---

function Ui_Boot(): AError; deprecated; // Use AUi_Boot()

implementation

{ Module }

function AUi_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByUid(AUI_Uid, Module) < 0) then
  begin
    Result := -3;
    Exit;
  end;

  AUiProcVars.AUi_Init := Module.Init;
  AUiProcVars.AUi_Fin := Module.Fin;
  if Assigned(Module.GetProc) then
  begin
    // --- Main ---
    AUiProcVars.AUi_CreateMainForm := Module.GetProc('AUi_CreateMainForm');
    AUiProcVars.AUi_GetIsShowApp := Module.GetProc('AUi_GetIsShowApp');
    AUiProcVars.AUi_GetMainMenuItem := Module.GetProc('AUi_GetMainMenuItem');
    AUiProcVars.AUi_GetMainToolBar := Module.GetProc('AUi_GetMainToolBar');
    AUiProcVars.AUi_GetMainTrayIcon := Module.GetProc('AUi_GetMainTrayIcon');
    AUiProcVars.AUi_GetMainWindow := Module.GetProc('AUi_GetMainWindow');
    AUiProcVars.AUi_InitMainTrayIcon := Module.GetProc('AUi_InitMainTrayIcon');
    AUiProcVars.AUi_InitMenus := Module.GetProc('AUi_InitMenus');
    AUiProcVars.AUi_OnDone_Connect := Module.GetProc('AUi_OnDone_Connect');
    AUiProcVars.AUi_OnDone_Disconnect := Module.GetProc('AUi_OnDone_Disconnect');
    AUiProcVars.AUi_ProcessMessages := Module.GetProc('AUi_ProcessMessages');
    AUiProcVars.AUi_Run := Module.GetProc('AUi_Run');
    AUiProcVars.AUi_SetHideOnClose := Module.GetProc('AUi_SetHideOnClose');
    AUiProcVars.AUi_SetMainToolBar := Module.GetProc('AUi_SetMainToolBar');
    AUiProcVars.AUi_SetProgramState := Module.GetProc('AUi_SetProgramState');
    AUiProcVars.AUi_ShellExecute := Module.GetProc('AUi_ShellExecute');
    AUiProcVars.AUi_ShellExecuteA := Module.GetProc('AUi_ShellExecuteA');
    AUiProcVars.AUi_ShowHelp := Module.GetProc('AUi_ShowHelp');
    AUiProcVars.AUi_ShowHelp2 := Module.GetProc('AUi_ShowHelp2');
    AUiProcVars.AUi_Shutdown := Module.GetProc('AUi_Shutdown');

    // --- Dialogs ---
    AUiProcVars.AUi_ExecuteAboutDialog := Module.GetProc('AUi_ExecuteAboutDialog');
    AUiProcVars.AUi_ExecuteCalendarDialog := Module.GetProc('AUi_ExecuteCalendarDialog');
    AUiProcVars.AUi_ExecuteColorDialog := Module.GetProc('AUi_ExecuteColorDialog');
    AUiProcVars.AUi_ExecuteDateFilterDialog := Module.GetProc('AUi_ExecuteDateFilterDialog');
    AUiProcVars.AUi_ExecuteErrorDialog := Module.GetProc('AUi_ExecuteErrorDialog');
    AUiProcVars.AUi_ExecuteErrorDialogA := Module.GetProc('AUi_ExecuteErrorDialogA');
    AUiProcVars.AUi_ExecuteFontDialog := Module.GetProc('AUi_ExecuteFontDialog');
    AUiProcVars.AUi_ExecuteFontDialogA := Module.GetProc('AUi_ExecuteFontDialogA');
    AUiProcVars.AUi_ExecuteInputBox1 := Module.GetProc('AUi_ExecuteInputBox1');
    AUiProcVars.AUi_ExecuteInputBox1A := Module.GetProc('AUi_ExecuteInputBox1A');
    AUiProcVars.AUi_ExecuteInputBox2 := Module.GetProc('AUi_ExecuteInputBox2');
    AUiProcVars.AUi_ExecuteInputBox2A := Module.GetProc('AUi_ExecuteInputBox2A');
    AUiProcVars.AUi_ExecuteMessageDialog1A := Module.GetProc('AUi_ExecuteMessageDialog1A');
    AUiProcVars.AUi_ExecuteOpenFileDialog := Module.GetProc('AUi_ExecuteOpenFileDialog');
    AUiProcVars.AUi_ExecutePrinterSetupDialog := Module.GetProc('AUi_ExecutePrinterSetupDialog');
    AUiProcVars.AUi_InitAboutDialog1 := Module.GetProc('AUi_InitAboutDialog1');
    AUiProcVars.AUi_InitAboutDialog2 := Module.GetProc('AUi_InitAboutDialog2');
    AUiProcVars.AUi_NewAboutDialog := Module.GetProc('AUi_NewAboutDialog');
    AUiProcVars.AUi_NewDialog := Module.GetProc('AUi_NewDialog');
    // --- Box ---
    AUiProcVars.AUiBox_New := Module.GetProc('AUiBox_New');
    // --- Button ---
    AUiProcVars.AUiButton_New := Module.GetProc('AUiButton_New');
    AUiProcVars.AUiButton_SetKind := Module.GetProc('AUiButton_SetKind');
    // --- Calendar ---
    AUiProcVars.AUiCalendar_GetDate := Module.GetProc('AUiCalendar_GetDate');
    AUiProcVars.AUiCalendar_New := Module.GetProc('AUiCalendar_New');
    AUiProcVars.AUiCalendar_SetMonth := Module.GetProc('AUiCalendar_SetMonth');
    // --- ComboBox ---
    AUiProcVars.AUiComboBox_Add := Module.GetProc('AUiComboBox_Add');
    AUiProcVars.AUiComboBox_AddA := Module.GetProc('AUiComboBox_AddA');
    AUiProcVars.AUiComboBox_GetItemIndex := Module.GetProc('AUiComboBox_GetItemIndex');
    AUiProcVars.AUiComboBox_New := Module.GetProc('AUiComboBox_New');
    AUiProcVars.AUiComboBox_New2 := Module.GetProc('AUiComboBox_New2');
    AUiProcVars.AUiComboBox_SetItemIndex := Module.GetProc('AUiComboBox_SetItemIndex');
    // --- Control ---
    AUiProcVars.AUiControl_Free := Module.GetProc('AUiControl_Free');
    AUiProcVars.AUiControl_FreeAndNil := Module.GetProc('AUiControl_FreeAndNil');
    AUiProcVars.AUiControl_GetColor := Module.GetProc('AUiControl_GetColor');
    AUiProcVars.AUiControl_GetEnabled := Module.GetProc('AUiControl_GetEnabled');
    AUiProcVars.AUiControl_GetHeight := Module.GetProc('AUiControl_GetHeight');
    AUiProcVars.AUiControl_GetHint := Module.GetProc('AUiControl_GetHint');
    AUiProcVars.AUiControl_GetHintA := Module.GetProc('AUiControl_GetHintA');
    AUiProcVars.AUiControl_GetMenu := Module.GetProc('AUiControl_GetMenu');
    AUiProcVars.AUiControl_GetName := Module.GetProc('AUiControl_GetName');
    AUiProcVars.AUiControl_GetNameA := Module.GetProc('AUiControl_GetNameA');
    AUiProcVars.AUiControl_GetPosition := Module.GetProc('AUiControl_GetPosition');
    AUiProcVars.AUiControl_GetText := Module.GetProc('AUiControl_GetText');
    AUiProcVars.AUiControl_GetVisible := Module.GetProc('AUiControl_GetVisible');
    AUiProcVars.AUiControl_GetWidth := Module.GetProc('AUiControl_GetWidth');
    AUiProcVars.AUiControl_SetAlign := Module.GetProc('AUiControl_SetAlign');
    AUiProcVars.AUiControl_SetAnchors := Module.GetProc('AUiControl_SetAnchors');
    AUiProcVars.AUiControl_SetClientSize := Module.GetProc('AUiControl_SetClientSize');
    AUiProcVars.AUiControl_SetColor := Module.GetProc('AUiControl_SetColor');
    AUiProcVars.AUiControl_SetEnabled := Module.GetProc('AUiControl_SetEnabled');
    AUiProcVars.AUiControl_SetFocus := Module.GetProc('AUiControl_SetFocus');
    AUiProcVars.AUiControl_SetFont1A := Module.GetProc('AUiControl_SetFont1A');
    AUiProcVars.AUiControl_SetHeight := Module.GetProc('AUiControl_SetHeight');
    AUiProcVars.AUiControl_SetHint := Module.GetProc('AUiControl_SetHint');
    AUiProcVars.AUiControl_SetHintA := Module.GetProc('AUiControl_SetHintA');
    AUiProcVars.AUiControl_SetName := Module.GetProc('AUiControl_SetName');
    AUiProcVars.AUiControl_SetNameA := Module.GetProc('AUiControl_SetNameA');
    AUiProcVars.AUiControl_SetOnClick := Module.GetProc('AUiControl_SetOnClick');
    AUiProcVars.AUiControl_SetPosition := Module.GetProc('AUiControl_SetPosition');
    AUiProcVars.AUiControl_SetSize := Module.GetProc('AUiControl_SetSize');
    AUiProcVars.AUiControl_SetTabStop := Module.GetProc('AUiControl_SetTabStop');
    AUiProcVars.AUiControl_SetText := Module.GetProc('AUiControl_SetText');
    AUiProcVars.AUiControl_SetTextA := Module.GetProc('AUiControl_SetTextA');
    AUiProcVars.AUiControl_SetVisible := Module.GetProc('AUiControl_SetVisible');
    AUiProcVars.AUiControl_SetWidth := Module.GetProc('AUiControl_SetWidth');
    AUiProcVars.AUiControl_SetOnChange := Module.GetProc('AUiControl_SetOnChange');
    // --- Edit ---
    AUiProcVars.AUiEdit_CheckDate := Module.GetProc('AUiEdit_CheckDate');
    AUiProcVars.AUiEdit_CheckFloat := Module.GetProc('AUiEdit_CheckFloat');
    AUiProcVars.AUiEdit_CheckFloat32 := Module.GetProc('AUiEdit_CheckFloat32');
    AUiProcVars.AUiEdit_CheckFloat64 := Module.GetProc('AUiEdit_CheckFloat64');
    AUiProcVars.AUiEdit_CheckInt := Module.GetProc('AUiEdit_CheckInt');
    AUiProcVars.AUiEdit_New := Module.GetProc('AUiEdit_New');
    AUiProcVars.AUiEdit_NewEx := Module.GetProc('AUiEdit_NewEx');
    // --- Grid ---
    AUiProcVars.AUiGrid_Clear := Module.GetProc('AUiGrid_Clear');
    AUiProcVars.AUiGrid_Clear2 := Module.GetProc('AUiGrid_Clear2');
    AUiProcVars.AUiGrid_DeleteRow := Module.GetProc('AUiGrid_DeleteRow');
    AUiProcVars.AUiGrid_DeleteRow2 := Module.GetProc('AUiGrid_DeleteRow2');
    AUiProcVars.AUiGrid_FindInt := Module.GetProc('AUiGrid_FindInt');
    AUiProcVars.AUiGrid_New := Module.GetProc('AUiGrid_New');
    AUiProcVars.AUiGrid_RestoreColProps := Module.GetProc('AUiGrid_RestoreColProps');
    AUiProcVars.AUiGrid_RestoreColPropsA := Module.GetProc('AUiGrid_RestoreColPropsA');
    AUiProcVars.AUiGrid_RowDown := Module.GetProc('AUiGrid_RowDown');
    AUiProcVars.AUiGrid_RowUp := Module.GetProc('AUiGrid_RowUp');
    AUiProcVars.AUiGrid_SaveColProps := Module.GetProc('AUiGrid_SaveColProps');
    AUiProcVars.AUiGrid_SaveColPropsA := Module.GetProc('AUiGrid_SaveColPropsA');
    AUiProcVars.AUiGrid_SetColumnWidth := Module.GetProc('AUiGrid_SetColumnWidth');
    AUiProcVars.AUiGrid_SetColumnWidth2 := Module.GetProc('AUiGrid_SetColumnWidth2');
    AUiProcVars.AUiGrid_SetDataSource := Module.GetProc('AUiGrid_SetDataSource');
    AUiProcVars.AUiGrid_SetRowCount := Module.GetProc('AUiGrid_SetRowCount');
    // --- Image ---
    AUiProcVars.AUiImage_LoadFromFile := Module.GetProc('AUiImage_LoadFromFile');
    AUiProcVars.AUiImage_LoadFromFileA := Module.GetProc('AUiImage_LoadFromFileA');
    AUiProcVars.AUiImage_New := Module.GetProc('AUiImage_New');
    // --- Label ---
    AUiProcVars.AUiLabel_New := Module.GetProc('AUiLabel_New');
    AUiProcVars.AUiLabel_New2 := Module.GetProc('AUiLabel_New2');
    AUiProcVars.AUiLabel_SetAlignment := Module.GetProc('AUiLabel_SetAlignment');
    AUiProcVars.AUiLabel_SetAutoSize := Module.GetProc('AUiLabel_SetAutoSize');
    AUiProcVars.AUiLabel_SetWordWrap := Module.GetProc('AUiLabel_SetWordWrap');
    // --- ListBox ---
    AUiProcVars.AUiListBox_Add := Module.GetProc('AUiListBox_Add');
    AUiProcVars.AUiListBox_Clear := Module.GetProc('AUiListBox_Clear');
    AUiProcVars.AUiListBox_DeleteItem := Module.GetProc('AUiListBox_DeleteItem');
    AUiProcVars.AUiListBox_GetCount := Module.GetProc('AUiListBox_GetCount');
    AUiProcVars.AUiListBox_GetItem := Module.GetProc('AUiListBox_GetItem');
    AUiProcVars.AUiListBox_GetItemIndex := Module.GetProc('AUiListBox_GetItemIndex');
    AUiProcVars.AUiListBox_New := Module.GetProc('AUiListBox_New');
    AUiProcVars.AUiListBox_New2 := Module.GetProc('AUiListBox_New2');
    AUiProcVars.AUiListBox_SetItem := Module.GetProc('AUiListBox_SetItem');
    AUiProcVars.AUiListBox_SetItemHeight := Module.GetProc('AUiListBox_SetItemHeight');
    AUiProcVars.AUiListBox_SetItemIndex := Module.GetProc('AUiListBox_SetItemIndex');
    AUiProcVars.AUiListBox_SetOnDblClick := Module.GetProc('AUiListBox_SetOnDblClick');
    // --- MainWindow ---
    AUiProcVars.AUiMainWindow_AddMenuItem := Module.GetProc('AUiMainWindow_AddMenuItem');
    AUiProcVars.AUiMainWindow_AddMenuItemA := Module.GetProc('AUiMainWindow_AddMenuItemA');
    AUiProcVars.AUiMainWindow_GetLeftContainer := Module.GetProc('AUiMainWindow_GetLeftContainer');
    AUiProcVars.AUiMainWindow_GetMainContainer := Module.GetProc('AUiMainWindow_GetMainContainer');
    AUiProcVars.AUiMainWindow_GetRightContainer := Module.GetProc('AUiMainWindow_GetRightContainer');
    // --- Menu ---
    AUiProcVars.AUiMenu_AddItem0 := Module.GetProc('AUiMenu_AddItem0');
    AUiProcVars.AUiMenu_AddItem1 := Module.GetProc('AUiMenu_AddItem1');
    AUiProcVars.AUiMenu_AddItem2 := Module.GetProc('AUiMenu_AddItem2');
    AUiProcVars.AUiMenu_AddItem3 := Module.GetProc('AUiMenu_AddItem3');
    AUiProcVars.AUiMenu_Clear := Module.GetProc('AUiMenu_Clear');
    AUiProcVars.AUiMenu_FindItemByName := Module.GetProc('AUiMenu_FindItemByName');
    AUiProcVars.AUiMenu_GetItems := Module.GetProc('AUiMenu_GetItems');
    AUiProcVars.AUiMenu_New := Module.GetProc('AUiMenu_New');
    AUiProcVars.AUiMenu_SetChecked := Module.GetProc('AUiMenu_SetChecked');
    // --- PageControl ---
    AUiProcVars.AUiPageControl_AddPage := Module.GetProc('AUiPageControl_AddPage');
    AUiProcVars.AUiPageControl_AddPageA := Module.GetProc('AUiPageControl_AddPageA');
    AUiProcVars.AUiPageControl_New := Module.GetProc('AUiPageControl_New');
    // --- ProgressBar ---
    AUiProcVars.AUiProgressBar_New := Module.GetProc('AUiProgressBar_New');
    AUiProcVars.AUiProgressBar_StepIt := Module.GetProc('AUiProgressBar_StepIt');
    // --- PropertyBox ---
    AUiProcVars.AUiPropertyBox_Add := Module.GetProc('AUiPropertyBox_Add');
    AUiProcVars.AUiPropertyBox_Add2 := Module.GetProc('AUiPropertyBox_Add2');
    AUiProcVars.AUiPropertyBox_Item_GetValue := Module.GetProc('AUiPropertyBox_Item_GetValue');
    AUiProcVars.AUiPropertyBox_Item_SetValue := Module.GetProc('AUiPropertyBox_Item_SetValue');
    AUiProcVars.AUiPropertyBox_New := Module.GetProc('AUiPropertyBox_New');
    // --- Report ---
    AUiProcVars.AUiReport_New := Module.GetProc('AUiReport_New');
    AUiProcVars.AUiReport_SetText := Module.GetProc('AUiReport_SetText');
    // --- ReportWin ---
    AUiProcVars.AUiReportWin_New := Module.GetProc('AUiReportWin_New');
    AUiProcVars.AUiReportWin_New2 := Module.GetProc('AUiReportWin_New2');
    AUiProcVars.AUiReportWin_ShowReport := Module.GetProc('AUiReportWin_ShowReport');
    // --- SpinButton ---
    AUiProcVars.AUiSpinButton_New := Module.GetProc('AUiSpinButton_New');
    // --- SpinEdit ---
    AUiProcVars.AUiSpinEdit_New := Module.GetProc('AUiSpinEdit_New');
    AUiProcVars.AUiSpinEdit_NewEx := Module.GetProc('AUiSpinEdit_NewEx');
    // --- Splitter ---
    AUiProcVars.AUiSplitter_New := Module.GetProc('AUiSplitter_New');
    // --- TextView ---
    AUiProcVars.AUiTextView_AddLine := Module.GetProc('AUiTextView_AddLine');
    AUiProcVars.AUiTextView_New := Module.GetProc('AUiTextView_New');
    AUiProcVars.AUiTextView_SetFont := Module.GetProc('AUiTextView_SetFont');
    AUiProcVars.AUiTextView_SetReadOnly := Module.GetProc('AUiTextView_SetReadOnly');
    AUiProcVars.AUiTextView_SetScrollBars := Module.GetProc('AUiTextView_SetScrollBars');
    AUiProcVars.AUiTextView_SetWordWrap := Module.GetProc('AUiTextView_SetWordWrap');
    // --- ToolBar ---
    AUiProcVars.AUiToolBar_AddButton := Module.GetProc('AUiToolBar_AddButton');
    AUiProcVars.AUiToolBar_AddButton1 := Module.GetProc('AUiToolBar_AddButton1');
    AUiProcVars.AUiToolBar_New := Module.GetProc('AUiToolBar_New');
    // --- ToolMenu ---
    AUiProcVars.AUiToolMenu_AddNewItem := Module.GetProc('AUiToolMenu_AddNewItem');
    AUiProcVars.AUiToolMenu_AddNewSubMenu := Module.GetProc('AUiToolMenu_AddNewSubMenu');
    AUiProcVars.AUiToolMenu_GetSubMenu := Module.GetProc('AUiToolMenu_GetSubMenu');
    AUiProcVars.AUiToolMenu_New := Module.GetProc('AUiToolMenu_New');
    // --- TrayIcon ---
    AUiProcVars.AUiTrayIcon_Free := Module.GetProc('AUiTrayIcon_Free');
    AUiProcVars.AUiTrayIcon_GetHint := Module.GetProc('AUiTrayIcon_GetHint');
    AUiProcVars.AUiTrayIcon_GetMenuItems := Module.GetProc('AUiTrayIcon_GetMenuItems');
    AUiProcVars.AUiTrayIcon_GetPopupMenu := Module.GetProc('AUiTrayIcon_GetPopupMenu');
    AUiProcVars.AUiTrayIcon_SetHint := Module.GetProc('AUiTrayIcon_SetHint');
    AUiProcVars.AUiTrayIcon_SetOnLeftClick := Module.GetProc('AUiTrayIcon_SetOnLeftClick');
    AUiProcVars.AUiTrayIcon_SetOnRightClick := Module.GetProc('AUiTrayIcon_SetOnRightClick');
    AUiProcVars.AUiTrayIcon_SetPopupMenu := Module.GetProc('AUiTrayIcon_SetPopupMenu');
    // --- TreeView ---
    AUiProcVars.AUiTreeView_AddItem := Module.GetProc('AUiTreeView_AddItem');
    AUiProcVars.AUiTreeView_New := Module.GetProc('AUiTreeView_New');
    // --- WaitWin ---
    AUiProcVars.AUiWaitWin_New := Module.GetProc('AUiWaitWin_New');
    AUiProcVars.AUiWaitWin_SetMaxPosition := Module.GetProc('AUiWaitWin_SetMaxPosition');
    AUiProcVars.AUiWaitWin_SetPosition := Module.GetProc('AUiWaitWin_SetPosition');
    AUiProcVars.AUiWaitWin_SetText := Module.GetProc('AUiWaitWin_SetText');
    AUiProcVars.AUiWaitWin_StepBy := Module.GetProc('AUiWaitWin_StepBy');
    // --- Window ---
    AUiProcVars.AUiWindow_Add := Module.GetProc('AUiWindow_Add');
    AUiProcVars.AUiWindow_Free := Module.GetProc('AUiWindow_Free');
    AUiProcVars.AUiWindow_FreeAndNil := Module.GetProc('AUiWindow_FreeAndNil');
    AUiProcVars.AUiWindow_GetMenu := Module.GetProc('AUiWindow_GetMenu');
    AUiProcVars.AUiWindow_New := Module.GetProc('AUiWindow_New');
    AUiProcVars.AUiWindow_SetBorderStyle := Module.GetProc('AUiWindow_SetBorderStyle');
    AUiProcVars.AUiWindow_SetFormStyle := Module.GetProc('AUiWindow_SetFormStyle');
    AUiProcVars.AUiWindow_SetPosition := Module.GetProc('AUiWindow_SetPosition');
    AUiProcVars.AUiWindow_SetState := Module.GetProc('AUiWindow_SetState');
    AUiProcVars.AUiWindow_ShowModal := Module.GetProc('AUiWindow_ShowModal');
    // --- WindowSettings ---
    AUiProcVars.AUiWindow_LoadConfig := Module.GetProc('AUiWindow_LoadConfig');
    AUiProcVars.AUiWindow_LoadConfig2 := Module.GetProc('AUiWindow_LoadConfig2');
    AUiProcVars.AUiWindow_SaveConfig := Module.GetProc('AUiWindow_SaveConfig');
    AUiProcVars.AUiWindow_SaveConfig2 := Module.GetProc('AUiWindow_SaveConfig2');
  end;

  {$ifdef ADepr}
  if not(Ui_SetProcsP(Module.Procs, Module.Init, Module.Fin)) then
  begin
    Result := -4;
    Exit;
  end;
  {$endif}
  Result := 0;
end;

function Ui_Boot(): AError;
begin
  Result := AUi_Boot();
end;

end.
 