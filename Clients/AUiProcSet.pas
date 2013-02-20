{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 24.09.2012
@LastMod 20.02.2013
}
unit AUiProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  AUiProcVars;

function AUi_SetProcs(GetProc: AModuleGetProc): AError;

implementation

function AUi_SetProcs(GetProc: AModuleGetProc): AError;
begin
  // --- Main ---
  AUiProcVars.AUi_CreateMainForm := GetProc('AUi_CreateMainForm');
  AUiProcVars.AUi_ExecuteAboutDialog := GetProc('AUi_ExecuteAboutDialog');
  AUiProcVars.AUi_ExecuteCalendarDialog := GetProc('AUi_ExecuteCalendarDialog');
  AUiProcVars.AUi_ExecuteColorDialog := GetProc('AUi_ExecuteColorDialog');
  AUiProcVars.AUi_ExecuteDateFilterDialog := GetProc('AUi_ExecuteDateFilterDialog');
  AUiProcVars.AUi_ExecuteErrorDialog := GetProc('AUi_ExecuteErrorDialog');
  AUiProcVars.AUi_ExecuteErrorDialogA := GetProc('AUi_ExecuteErrorDialogA');
  AUiProcVars.AUi_ExecuteFontDialog := GetProc('AUi_ExecuteFontDialog');
  AUiProcVars.AUi_ExecuteFontDialogA := GetProc('AUi_ExecuteFontDialogA');
  AUiProcVars.AUi_ExecuteInputBox1 := GetProc('AUi_ExecuteInputBox1');
  AUiProcVars.AUi_ExecuteInputBox1A := GetProc('AUi_ExecuteInputBox1A');
  AUiProcVars.AUi_ExecuteInputBox2 := GetProc('AUi_ExecuteInputBox2');
  AUiProcVars.AUi_ExecuteInputBox2A := GetProc('AUi_ExecuteInputBox2A');
  AUiProcVars.AUi_ExecuteLoginDialog := GetProc('AUi_ExecuteLoginDialog');
  AUiProcVars.AUi_ExecuteMessageDialog1 := GetProc('AUi_ExecuteMessageDialog1');
  AUiProcVars.AUi_ExecuteMessageDialog1A := GetProc('AUi_ExecuteMessageDialog1A');
  AUiProcVars.AUi_ExecuteOpenFileDialog := GetProc('AUi_ExecuteOpenFileDialog');
  AUiProcVars.AUi_ExecutePrinterSetupDialog := GetProc('AUi_ExecutePrinterSetupDialog');
  AUiProcVars.AUi_ExecuteSaveFileDialog1 := GetProc('AUi_ExecuteSaveFileDialog1');
  AUiProcVars.AUi_Fin := GetProc('AUi_Fin');
  AUiProcVars.AUi_GetIsShowApp := GetProc('AUi_GetIsShowApp');
  AUiProcVars.AUi_GetMainMenuItem := GetProc('AUi_GetMainMenuItem');
  AUiProcVars.AUi_GetMainToolBar := GetProc('AUi_GetMainToolBar');
  AUiProcVars.AUi_GetMainTrayIcon := GetProc('AUi_GetMainTrayIcon');
  AUiProcVars.AUi_GetMainWindow := GetProc('AUi_GetMainWindow');
  AUiProcVars.AUi_Init := GetProc('AUi_Init');
  AUiProcVars.AUi_InitAboutDialogWin2 := GetProc('AUi_InitAboutDialogWin2');
  AUiProcVars.AUi_InitMainTrayIcon := GetProc('AUi_InitMainTrayIcon');
  AUiProcVars.AUi_InitMenus := GetProc('AUi_InitMenus');
  AUiProcVars.AUi_OnDone_Connect := GetProc('AUi_OnDone_Connect');
  AUiProcVars.AUi_OnDone_Disconnect := GetProc('AUi_OnDone_Disconnect');
  AUiProcVars.AUi_ProcessMessages := GetProc('AUi_ProcessMessages');
  AUiProcVars.AUi_Run := GetProc('AUi_Run');
  AUiProcVars.AUi_SetAboutMemoDefaultSize := GetProc('AUi_SetAboutMemoDefaultSize');
  AUiProcVars.AUi_SetHideOnClose := GetProc('AUi_SetHideOnClose');
  AUiProcVars.AUi_SetIsShowApp := GetProc('AUi_SetIsShowApp');
  AUiProcVars.AUi_SetMainToolBar := GetProc('AUi_SetMainToolBar');
  AUiProcVars.AUi_SetMainWindow := GetProc('AUi_SetMainWindow');
  AUiProcVars.AUi_SetMainWindow2 := GetProc('AUi_SetMainWindow2');
  AUiProcVars.AUi_SetOnAboutClick := GetProc('AUi_SetOnAboutClick');
  AUiProcVars.AUi_SetOnMainFormCreate := GetProc('AUi_SetOnMainFormCreate');
  AUiProcVars.AUi_SetProgramState := GetProc('AUi_SetProgramState');
  AUiProcVars.AUi_ShellExecute := GetProc('AUi_ShellExecute');
  AUiProcVars.AUi_ShellExecuteA := GetProc('AUi_ShellExecuteA');
  AUiProcVars.AUi_ShowHelp := GetProc('AUi_ShowHelp');
  AUiProcVars.AUi_ShowHelp2 := GetProc('AUi_ShowHelp2');
  AUiProcVars.AUi_Shutdown := GetProc('AUi_Shutdown');

  // --- AboutDialog ---
  AUiProcVars.AUiAboutDialog_Init2 := GetProc('AUiAboutDialog_Init2');
  AUiProcVars.AUiAboutDialog_New := GetProc('AUiAboutDialog_New');

  // --- Box ---
  AUiProcVars.AUiBox_New := GetProc('AUiBox_New');

  // --- Button ---
  AUiProcVars.AUiButton_New := GetProc('AUiButton_New');
  AUiProcVars.AUiButton_SetKind := GetProc('AUiButton_SetKind');

  // --- Calendar ---
  AUiProcVars.AUiCalendar_GetDate := GetProc('AUiCalendar_GetDate');
  AUiProcVars.AUiCalendar_New := GetProc('AUiCalendar_New');
  AUiProcVars.AUiCalendar_SetMonth := GetProc('AUiCalendar_SetMonth');

  // --- CheckBox ---
  AUiProcVars.AUiCheckBox_Free := GetProc('AUiCheckBox_Free');
  AUiProcVars.AUiCheckBox_GetChecked := GetProc('AUiCheckBox_GetChecked');
  AUiProcVars.AUiCheckBox_New := GetProc('AUiCheckBox_New');
  AUiProcVars.AUiCheckBox_NewEx := GetProc('AUiCheckBox_NewEx');
  AUiProcVars.AUiCheckBox_SetChecked := GetProc('AUiCheckBox_SetChecked');

  // --- ComboBox ---
  AUiProcVars.AUiComboBox_Add := GetProc('AUiComboBox_Add');
  AUiProcVars.AUiComboBox_AddA := GetProc('AUiComboBox_AddA');
  AUiProcVars.AUiComboBox_GetItemIndex := GetProc('AUiComboBox_GetItemIndex');
  AUiProcVars.AUiComboBox_New := GetProc('AUiComboBox_New');
  AUiProcVars.AUiComboBox_New2 := GetProc('AUiComboBox_New2');
  AUiProcVars.AUiComboBox_SetItemIndex := GetProc('AUiComboBox_SetItemIndex');

  // --- Control ---
  AUiProcVars.AUiControl_Free := GetProc('AUiControl_Free');
  AUiProcVars.AUiControl_FreeAndNil := GetProc('AUiControl_FreeAndNil');
  AUiProcVars.AUiControl_GetClientHeight := GetProc('AUiControl_GetClientHeight');
  AUiProcVars.AUiControl_GetClientWidth := GetProc('AUiControl_GetClientWidth');
  AUiProcVars.AUiControl_GetColor := GetProc('AUiControl_GetColor');
  AUiProcVars.AUiControl_GetEnabled := GetProc('AUiControl_GetEnabled');
  AUiProcVars.AUiControl_GetHeight := GetProc('AUiControl_GetHeight');
  AUiProcVars.AUiControl_GetHint := GetProc('AUiControl_GetHint');
  AUiProcVars.AUiControl_GetHintA := GetProc('AUiControl_GetHintA');
  AUiProcVars.AUiControl_GetMenu := GetProc('AUiControl_GetMenu');
  AUiProcVars.AUiControl_GetName := GetProc('AUiControl_GetName');
  AUiProcVars.AUiControl_GetNameA := GetProc('AUiControl_GetNameA');
  AUiProcVars.AUiControl_GetPosition := GetProc('AUiControl_GetPosition');
  AUiProcVars.AUiControl_GetText := GetProc('AUiControl_GetText');
  AUiProcVars.AUiControl_GetTop := GetProc('AUiControl_GetTop');
  AUiProcVars.AUiControl_GetVisible := GetProc('AUiControl_GetVisible');
  AUiProcVars.AUiControl_GetWidth := GetProc('AUiControl_GetWidth');
  AUiProcVars.AUiControl_SetAlign := GetProc('AUiControl_SetAlign');
  AUiProcVars.AUiControl_SetAnchors := GetProc('AUiControl_SetAnchors');
  AUiProcVars.AUiControl_SetBevel := GetProc('AUiControl_SetBevel');
  AUiProcVars.AUiControl_SetClientSize := GetProc('AUiControl_SetClientSize');
  AUiProcVars.AUiControl_SetColor := GetProc('AUiControl_SetColor');
  AUiProcVars.AUiControl_SetCursor := GetProc('AUiControl_SetCursor');
  AUiProcVars.AUiControl_SetEnabled := GetProc('AUiControl_SetEnabled');
  AUiProcVars.AUiControl_SetFocus := GetProc('AUiControl_SetFocus');
  AUiProcVars.AUiControl_SetFont1 := GetProc('AUiControl_SetFont1');
  AUiProcVars.AUiControl_SetFont1A := GetProc('AUiControl_SetFont1A');
  AUiProcVars.AUiControl_SetFontColor := GetProc('AUiControl_SetFontColor');
  AUiProcVars.AUiControl_SetFontSize := GetProc('AUiControl_SetFontSize');
  AUiProcVars.AUiControl_SetFontStyle := GetProc('AUiControl_SetFontStyle');
  AUiProcVars.AUiControl_SetHeight := GetProc('AUiControl_SetHeight');
  AUiProcVars.AUiControl_SetHint := GetProc('AUiControl_SetHint');
  AUiProcVars.AUiControl_SetHintA := GetProc('AUiControl_SetHintA');
  AUiProcVars.AUiControl_SetName := GetProc('AUiControl_SetName');
  AUiProcVars.AUiControl_SetNameA := GetProc('AUiControl_SetNameA');
  AUiProcVars.AUiControl_SetOnChange := GetProc('AUiControl_SetOnChange');
  AUiProcVars.AUiControl_SetOnChangeEx := GetProc('AUiControl_SetOnChangeEx');
  AUiProcVars.AUiControl_SetOnClick := GetProc('AUiControl_SetOnClick');
  AUiProcVars.AUiControl_SetPosition := GetProc('AUiControl_SetPosition');
  AUiProcVars.AUiControl_SetSize := GetProc('AUiControl_SetSize');
  AUiProcVars.AUiControl_SetTabStop := GetProc('AUiControl_SetTabStop');
  AUiProcVars.AUiControl_SetText := GetProc('AUiControl_SetText');
  AUiProcVars.AUiControl_SetTextA := GetProc('AUiControl_SetTextA');
  AUiProcVars.AUiControl_SetTop := GetProc('AUiControl_SetTop');
  AUiProcVars.AUiControl_SetVisible := GetProc('AUiControl_SetVisible');
  AUiProcVars.AUiControl_SetWidth := GetProc('AUiControl_SetWidth');

  // --- DataSource ---
  AUiProcVars.AUiDataSource_New := GetProc('AUiDataSource_New');
  AUiProcVars.AUiDataSource_SetOnDataChange := GetProc('AUiDataSource_SetOnDataChange');

  // --- Dialog ---
  AUiProcVars.AUiDialog_AddButton1 := GetProc('AUiDialog_AddButton1');
  AUiProcVars.AUiDialog_Free := GetProc('AUiDialog_Free');
  AUiProcVars.AUiDialog_GetButtonsBox := GetProc('AUiDialog_GetButtonsBox');
  AUiProcVars.AUiDialog_GetWindow := GetProc('AUiDialog_GetWindow');
  AUiProcVars.AUiDialog_New := GetProc('AUiDialog_New');
  AUiProcVars.AUiDialog_ShowModal := GetProc('AUiDialog_ShowModal');

  // --- Edit ---
  AUiProcVars.AUiEdit_CheckDate := GetProc('AUiEdit_CheckDate');
  AUiProcVars.AUiEdit_CheckFloat := GetProc('AUiEdit_CheckFloat');
  AUiProcVars.AUiEdit_CheckFloat32 := GetProc('AUiEdit_CheckFloat32');
  AUiProcVars.AUiEdit_CheckFloat64 := GetProc('AUiEdit_CheckFloat64');
  AUiProcVars.AUiEdit_CheckInt := GetProc('AUiEdit_CheckInt');
  AUiProcVars.AUiEdit_New := GetProc('AUiEdit_New');
  AUiProcVars.AUiEdit_NewEx := GetProc('AUiEdit_NewEx');

  // --- Grid ---
  AUiProcVars.AUiGrid_AddColumn := GetProc('AUiGrid_AddColumn');
  AUiProcVars.AUiGrid_Clear := GetProc('AUiGrid_Clear');
  AUiProcVars.AUiGrid_Clear2 := GetProc('AUiGrid_Clear2');
  AUiProcVars.AUiGrid_DeleteRow := GetProc('AUiGrid_DeleteRow');
  AUiProcVars.AUiGrid_DeleteRow2 := GetProc('AUiGrid_DeleteRow2');
  AUiProcVars.AUiGrid_FindInt := GetProc('AUiGrid_FindInt');
  AUiProcVars.AUiGrid_New := GetProc('AUiGrid_New');
  AUiProcVars.AUiGrid_RestoreColProps := GetProc('AUiGrid_RestoreColProps');
  AUiProcVars.AUiGrid_RestoreColPropsA := GetProc('AUiGrid_RestoreColPropsA');
  AUiProcVars.AUiGrid_RowDown := GetProc('AUiGrid_RowDown');
  AUiProcVars.AUiGrid_RowUp := GetProc('AUiGrid_RowUp');
  AUiProcVars.AUiGrid_SaveColProps := GetProc('AUiGrid_SaveColProps');
  AUiProcVars.AUiGrid_SaveColPropsA := GetProc('AUiGrid_SaveColPropsA');
  AUiProcVars.AUiGrid_SetColumnWidth := GetProc('AUiGrid_SetColumnWidth');
  AUiProcVars.AUiGrid_SetColumnWidth2 := GetProc('AUiGrid_SetColumnWidth2');
  AUiProcVars.AUiGrid_SetDataSource := GetProc('AUiGrid_SetDataSource');
  AUiProcVars.AUiGrid_SetRowCount := GetProc('AUiGrid_SetRowCount');

  // --- Image ---
  AUiProcVars.AUiImage_LoadFromFile := GetProc('AUiImage_LoadFromFile');
  AUiProcVars.AUiImage_LoadFromFileA := GetProc('AUiImage_LoadFromFileA');
  AUiProcVars.AUiImage_New := GetProc('AUiImage_New');
  AUiProcVars.AUiImage_SetCenter := GetProc('AUiImage_SetCenter');
  AUiProcVars.AUiImage_SetTransparent := GetProc('AUiImage_SetTransparent');

  // --- Label ---
  AUiProcVars.AUiLabel_New := GetProc('AUiLabel_New');
  AUiProcVars.AUiLabel_New2 := GetProc('AUiLabel_New2');
  AUiProcVars.AUiLabel_SetAlignment := GetProc('AUiLabel_SetAlignment');
  AUiProcVars.AUiLabel_SetAutoSize := GetProc('AUiLabel_SetAutoSize');
  AUiProcVars.AUiLabel_SetWordWrap := GetProc('AUiLabel_SetWordWrap');

  // --- ListBox ---
  AUiProcVars.AUiListBox_Add := GetProc('AUiListBox_Add');
  AUiProcVars.AUiListBox_Clear := GetProc('AUiListBox_Clear');
  AUiProcVars.AUiListBox_DeleteItem := GetProc('AUiListBox_DeleteItem');
  AUiProcVars.AUiListBox_GetCount := GetProc('AUiListBox_GetCount');
  AUiProcVars.AUiListBox_GetItem := GetProc('AUiListBox_GetItem');
  AUiProcVars.AUiListBox_GetItemIndex := GetProc('AUiListBox_GetItemIndex');
  AUiProcVars.AUiListBox_New := GetProc('AUiListBox_New');
  AUiProcVars.AUiListBox_New2 := GetProc('AUiListBox_New2');
  AUiProcVars.AUiListBox_SetChecked := GetProc('AUiListBox_SetChecked');
  AUiProcVars.AUiListBox_SetItem := GetProc('AUiListBox_SetItem');
  AUiProcVars.AUiListBox_SetItemHeight := GetProc('AUiListBox_SetItemHeight');
  AUiProcVars.AUiListBox_SetItemIndex := GetProc('AUiListBox_SetItemIndex');
  AUiProcVars.AUiListBox_SetOnDblClick := GetProc('AUiListBox_SetOnDblClick');

  // --- MainWindow ---
  AUiProcVars.AUiMainWindow_AddMenuItem := GetProc('AUiMainWindow_AddMenuItem');
  AUiProcVars.AUiMainWindow_AddMenuItemA := GetProc('AUiMainWindow_AddMenuItemA');
  AUiProcVars.AUiMainWindow_GetLeftContainer := GetProc('AUiMainWindow_GetLeftContainer');
  AUiProcVars.AUiMainWindow_GetMainContainer := GetProc('AUiMainWindow_GetMainContainer');
  AUiProcVars.AUiMainWindow_GetRightContainer := GetProc('AUiMainWindow_GetRightContainer');

  // --- Menu ---
  AUiProcVars.AUiMenu_AddItem0 := GetProc('AUiMenu_AddItem0');
  AUiProcVars.AUiMenu_AddItem1 := GetProc('AUiMenu_AddItem1');
  AUiProcVars.AUiMenu_AddItem2 := GetProc('AUiMenu_AddItem2');
  AUiProcVars.AUiMenu_AddItem3 := GetProc('AUiMenu_AddItem3');
  AUiProcVars.AUiMenu_Clear := GetProc('AUiMenu_Clear');
  AUiProcVars.AUiMenu_FindItemByName := GetProc('AUiMenu_FindItemByName');
  AUiProcVars.AUiMenu_GetItems := GetProc('AUiMenu_GetItems');
  AUiProcVars.AUiMenu_New := GetProc('AUiMenu_New');
  AUiProcVars.AUiMenu_New2 := GetProc('AUiMenu_New2');
  AUiProcVars.AUiMenu_SetChecked := GetProc('AUiMenu_SetChecked');

  // --- PageControl ---
  AUiProcVars.AUiPageControl_AddPage := GetProc('AUiPageControl_AddPage');
  AUiProcVars.AUiPageControl_AddPageA := GetProc('AUiPageControl_AddPageA');
  AUiProcVars.AUiPageControl_New := GetProc('AUiPageControl_New');

  // --- ProgressBar ---
  AUiProcVars.AUiProgressBar_New := GetProc('AUiProgressBar_New');
  AUiProcVars.AUiProgressBar_SetMaxPosition := GetProc('AUiProgressBar_SetMaxPosition');
  AUiProcVars.AUiProgressBar_SetPosition := GetProc('AUiProgressBar_SetPosition');
  AUiProcVars.AUiProgressBar_StepBy := GetProc('AUiProgressBar_StepBy');
  AUiProcVars.AUiProgressBar_StepIt := GetProc('AUiProgressBar_StepIt');

  // --- PropertyBox ---
  AUiProcVars.AUiPropertyBox_Add := GetProc('AUiPropertyBox_Add');
  AUiProcVars.AUiPropertyBox_Add2 := GetProc('AUiPropertyBox_Add2');
  AUiProcVars.AUiPropertyBox_GetUseBigFont := GetProc('AUiPropertyBox_GetUseBigFont');
  AUiProcVars.AUiPropertyBox_Item_GetValue := GetProc('AUiPropertyBox_Item_GetValue');
  AUiProcVars.AUiPropertyBox_Item_SetValue := GetProc('AUiPropertyBox_Item_SetValue');
  AUiProcVars.AUiPropertyBox_New := GetProc('AUiPropertyBox_New');
  AUiProcVars.AUiPropertyBox_SetIsAppPoints := GetProc('AUiPropertyBox_SetIsAppPoints');
  AUiProcVars.AUiPropertyBox_SetUseBigFont := GetProc('AUiPropertyBox_SetUseBigFont');

  // --- Report ---
  AUiProcVars.AUiReport_New := GetProc('AUiReport_New');
  AUiProcVars.AUiReport_SetText := GetProc('AUiReport_SetText');

  // --- ReportWin ---
  AUiProcVars.AUiReportWin_New := GetProc('AUiReportWin_New');
  AUiProcVars.AUiReportWin_New2 := GetProc('AUiReportWin_New2');
  AUiProcVars.AUiReportWin_ShowReport := GetProc('AUiReportWin_ShowReport');

  // --- SpinButton ---
  AUiProcVars.AUiSpinButton_New := GetProc('AUiSpinButton_New');

  // --- SpinEdit ---
  AUiProcVars.AUiSpinEdit_GetValue := GetProc('AUiSpinEdit_GetValue');
  AUiProcVars.AUiSpinEdit_New := GetProc('AUiSpinEdit_New');
  AUiProcVars.AUiSpinEdit_NewEx := GetProc('AUiSpinEdit_NewEx');
  AUiProcVars.AUiSpinEdit_SetValue := GetProc('AUiSpinEdit_SetValue');

  // --- Splitter ---
  AUiProcVars.AUiSplitter_New := GetProc('AUiSplitter_New');

  // --- TextView ---
  AUiProcVars.AUiTextView_AddLine := GetProc('AUiTextView_AddLine');
  AUiProcVars.AUiTextView_New := GetProc('AUiTextView_New');
  AUiProcVars.AUiTextView_SetFont := GetProc('AUiTextView_SetFont');
  AUiProcVars.AUiTextView_SetReadOnly := GetProc('AUiTextView_SetReadOnly');
  AUiProcVars.AUiTextView_SetScrollBars := GetProc('AUiTextView_SetScrollBars');
  AUiProcVars.AUiTextView_SetWordWrap := GetProc('AUiTextView_SetWordWrap');

  // --- ToolBar ---
  AUiProcVars.AUiToolBar_AddButton := GetProc('AUiToolBar_AddButton');
  AUiProcVars.AUiToolBar_AddButton1 := GetProc('AUiToolBar_AddButton1');
  AUiProcVars.AUiToolBar_New := GetProc('AUiToolBar_New');

  // --- ToolMenu ---
  AUiProcVars.AUiToolMenu_AddNewItem := GetProc('AUiToolMenu_AddNewItem');
  AUiProcVars.AUiToolMenu_AddNewSubMenu := GetProc('AUiToolMenu_AddNewSubMenu');
  AUiProcVars.AUiToolMenu_GetSubMenu := GetProc('AUiToolMenu_GetSubMenu');
  AUiProcVars.AUiToolMenu_New := GetProc('AUiToolMenu_New');

  // --- TrayIcon ---
  AUiProcVars.AUiTrayIcon_Free := GetProc('AUiTrayIcon_Free');
  AUiProcVars.AUiTrayIcon_GetHint := GetProc('AUiTrayIcon_GetHint');
  AUiProcVars.AUiTrayIcon_GetMenuItems := GetProc('AUiTrayIcon_GetMenuItems');
  AUiProcVars.AUiTrayIcon_GetPopupMenu := GetProc('AUiTrayIcon_GetPopupMenu');
  AUiProcVars.AUiTrayIcon_New := GetProc('AUiTrayIcon_New');
  AUiProcVars.AUiTrayIcon_SetHint := GetProc('AUiTrayIcon_SetHint');
  AUiProcVars.AUiTrayIcon_SetIcon := GetProc('AUiTrayIcon_SetIcon');
  AUiProcVars.AUiTrayIcon_SetIsActive := GetProc('AUiTrayIcon_SetIsActive');
  AUiProcVars.AUiTrayIcon_SetOnLeftClick := GetProc('AUiTrayIcon_SetOnLeftClick');
  AUiProcVars.AUiTrayIcon_SetOnRightClick := GetProc('AUiTrayIcon_SetOnRightClick');
  AUiProcVars.AUiTrayIcon_SetPopupMenu := GetProc('AUiTrayIcon_SetPopupMenu');

  // --- TreeView ---
  AUiProcVars.AUiTreeView_AddItem := GetProc('AUiTreeView_AddItem');
  AUiProcVars.AUiTreeView_New := GetProc('AUiTreeView_New');

  // --- WaitWin ---
  AUiProcVars.AUiWaitWin_New := GetProc('AUiWaitWin_New');
  AUiProcVars.AUiWaitWin_SetMaxPosition := GetProc('AUiWaitWin_SetMaxPosition');
  AUiProcVars.AUiWaitWin_SetPosition := GetProc('AUiWaitWin_SetPosition');
  AUiProcVars.AUiWaitWin_SetText := GetProc('AUiWaitWin_SetText');
  AUiProcVars.AUiWaitWin_StepBy := GetProc('AUiWaitWin_StepBy');

  // --- Window ---
  AUiProcVars.AUiWindow_Add := GetProc('AUiWindow_Add');
  AUiProcVars.AUiWindow_Free := GetProc('AUiWindow_Free');
  AUiProcVars.AUiWindow_FreeAndNil := GetProc('AUiWindow_FreeAndNil');
  AUiProcVars.AUiWindow_GetMenu := GetProc('AUiWindow_GetMenu');
  AUiProcVars.AUiWindow_LoadConfig := GetProc('AUiWindow_LoadConfig');
  AUiProcVars.AUiWindow_LoadConfig2 := GetProc('AUiWindow_LoadConfig2');
  AUiProcVars.AUiWindow_New := GetProc('AUiWindow_New');
  AUiProcVars.AUiWindow_SaveConfig := GetProc('AUiWindow_SaveConfig');
  AUiProcVars.AUiWindow_SaveConfig2 := GetProc('AUiWindow_SaveConfig2');
  AUiProcVars.AUiWindow_SetBorderStyle := GetProc('AUiWindow_SetBorderStyle');
  AUiProcVars.AUiWindow_SetFormStyle := GetProc('AUiWindow_SetFormStyle');
  AUiProcVars.AUiWindow_SetPosition := GetProc('AUiWindow_SetPosition');
  AUiProcVars.AUiWindow_SetState := GetProc('AUiWindow_SetState');
  AUiProcVars.AUiWindow_ShowModal := GetProc('AUiWindow_ShowModal');
  AUiProcVars.AUiWindow_ShowModal2 := GetProc('AUiWindow_ShowModal2');

  Result := 0;
end;

end.
 