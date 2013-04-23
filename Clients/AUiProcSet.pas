{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 24.09.2012
@LastMod 23.04.2013
}
unit AUiProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  {$ifdef ADepr}
  AUiProcRec,
  {$endif}
  AUiProcTypes,
  AUiProcVars;

function AUi_SetProcs(GetProc: AModuleGetProc): AError;

{$ifdef ADepr}
procedure UI_SetProcs(const UiProcs: AUiProcs_Type);
function UI_SetProcsP(UiProcs: PUiProcs; Ui_Init: AUi_Init_Proc; Ui_Fin: AUi_Fin_Proc): Boolean;
{$endif}

implementation

function AUi_SetProcs(GetProc: AModuleGetProc): AError;
begin
  // --- Main ---
  AUiProcVars.AUi_CreateMainForm := GetProc('AUi_CreateMainForm');
  AUiProcVars.AUi_GetIsShowApp := GetProc('AUi_GetIsShowApp');
  AUiProcVars.AUi_GetMainMenuItem := GetProc('AUi_GetMainMenuItem');
  AUiProcVars.AUi_GetMainToolBar := GetProc('AUi_GetMainToolBar');
  AUiProcVars.AUi_GetMainTrayIcon := GetProc('AUi_GetMainTrayIcon');
  AUiProcVars.AUi_GetMainWindow := GetProc('AUi_GetMainWindow');
  AUiProcVars.AUi_InitMainTrayIcon := GetProc('AUi_InitMainTrayIcon');
  AUiProcVars.AUi_InitMenus := GetProc('AUi_InitMenus');
  AUiProcVars.AUi_OnDone_Connect := GetProc('AUi_OnDone_Connect');
  AUiProcVars.AUi_OnDone_Disconnect := GetProc('AUi_OnDone_Disconnect');
  AUiProcVars.AUi_ProcessMessages := GetProc('AUi_ProcessMessages');
  AUiProcVars.AUi_Run := GetProc('AUi_Run');
  AUiProcVars.AUi_SetHideOnClose := GetProc('AUi_SetHideOnClose');
  AUiProcVars.AUi_SetMainToolBar := GetProc('AUi_SetMainToolBar');
  AUiProcVars.AUi_SetProgramState := GetProc('AUi_SetProgramState');
  AUiProcVars.AUi_ShellExecute := GetProc('AUi_ShellExecute');
  AUiProcVars.AUi_ShellExecuteA := GetProc('AUi_ShellExecuteA');
  AUiProcVars.AUi_ShowHelp := GetProc('AUi_ShowHelp');
  AUiProcVars.AUi_ShowHelp2 := GetProc('AUi_ShowHelp2');
  AUiProcVars.AUi_Shutdown := GetProc('AUi_Shutdown');
  // --- Dialogs ---
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
  AUiProcVars.AUi_ExecuteMessageDialog1A := GetProc('AUi_ExecuteMessageDialog1A');
  AUiProcVars.AUi_ExecuteOpenFileDialog := GetProc('AUi_ExecuteOpenFileDialog');
  AUiProcVars.AUi_ExecutePrinterSetupDialog := GetProc('AUi_ExecutePrinterSetupDialog');
  AUiProcVars.AUi_InitAboutDialog1 := GetProc('AUi_InitAboutDialog1');
  AUiProcVars.AUi_InitAboutDialog2 := GetProc('AUi_InitAboutDialog2');
  AUiProcVars.AUi_NewAboutDialog := GetProc('AUi_NewAboutDialog');
  // --- Dialog ---
  AUiProcVars.AUiDialog_New := GetProc('AUiDialog_New');
  AUiProcVars.AUiDialog_AddButton := GetProc('AUiDialog_AddButton');
  AUiProcVars.AUiDialog_GetWindow := GetProc('AUiDialog_GetWindow');
  // --- Box ---
  AUiProcVars.AUiBox_New := GetProc('AUiBox_New');
  // --- Button ---
  AUiProcVars.AUiButton_New := GetProc('AUiButton_New');
  AUiProcVars.AUiButton_SetKind := GetProc('AUiButton_SetKind');
  // --- Calendar ---
  AUiProcVars.AUiCalendar_GetDate := GetProc('AUiCalendar_GetDate');
  AUiProcVars.AUiCalendar_New := GetProc('AUiCalendar_New');
  AUiProcVars.AUiCalendar_SetMonth := GetProc('AUiCalendar_SetMonth');
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
  AUiProcVars.AUiControl_GetVisible := GetProc('AUiControl_GetVisible');
  AUiProcVars.AUiControl_GetWidth := GetProc('AUiControl_GetWidth');
  AUiProcVars.AUiControl_SetAlign := GetProc('AUiControl_SetAlign');
  AUiProcVars.AUiControl_SetAnchors := GetProc('AUiControl_SetAnchors');
  AUiProcVars.AUiControl_SetClientSize := GetProc('AUiControl_SetClientSize');
  AUiProcVars.AUiControl_SetColor := GetProc('AUiControl_SetColor');
  AUiProcVars.AUiControl_SetEnabled := GetProc('AUiControl_SetEnabled');
  AUiProcVars.AUiControl_SetFocus := GetProc('AUiControl_SetFocus');
  AUiProcVars.AUiControl_SetFont1A := GetProc('AUiControl_SetFont1A');
  AUiProcVars.AUiControl_SetHeight := GetProc('AUiControl_SetHeight');
  AUiProcVars.AUiControl_SetHint := GetProc('AUiControl_SetHint');
  AUiProcVars.AUiControl_SetHintA := GetProc('AUiControl_SetHintA');
  AUiProcVars.AUiControl_SetName := GetProc('AUiControl_SetName');
  AUiProcVars.AUiControl_SetNameA := GetProc('AUiControl_SetNameA');
  AUiProcVars.AUiControl_SetOnClick := GetProc('AUiControl_SetOnClick');
  AUiProcVars.AUiControl_SetPosition := GetProc('AUiControl_SetPosition');
  AUiProcVars.AUiControl_SetSize := GetProc('AUiControl_SetSize');
  AUiProcVars.AUiControl_SetTabStop := GetProc('AUiControl_SetTabStop');
  AUiProcVars.AUiControl_SetText := GetProc('AUiControl_SetText');
  AUiProcVars.AUiControl_SetTextA := GetProc('AUiControl_SetTextA');
  AUiProcVars.AUiControl_SetVisible := GetProc('AUiControl_SetVisible');
  AUiProcVars.AUiControl_SetWidth := GetProc('AUiControl_SetWidth');
  AUiProcVars.AUiControl_SetOnChange := GetProc('AUiControl_SetOnChange');
  // --- Edit ---
  AUiProcVars.AUiEdit_CheckDate := GetProc('AUiEdit_CheckDate');
  AUiProcVars.AUiEdit_CheckFloat := GetProc('AUiEdit_CheckFloat');
  AUiProcVars.AUiEdit_CheckFloat32 := GetProc('AUiEdit_CheckFloat32');
  AUiProcVars.AUiEdit_CheckFloat64 := GetProc('AUiEdit_CheckFloat64');
  AUiProcVars.AUiEdit_CheckInt := GetProc('AUiEdit_CheckInt');
  AUiProcVars.AUiEdit_New := GetProc('AUiEdit_New');
  AUiProcVars.AUiEdit_NewEx := GetProc('AUiEdit_NewEx');
  // --- Grid ---
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
  AUiProcVars.AUiMenu_SetChecked := GetProc('AUiMenu_SetChecked');
  // --- PageControl ---
  AUiProcVars.AUiPageControl_AddPage := GetProc('AUiPageControl_AddPage');
  AUiProcVars.AUiPageControl_AddPageA := GetProc('AUiPageControl_AddPageA');
  AUiProcVars.AUiPageControl_New := GetProc('AUiPageControl_New');
  // --- ProgressBar ---
  AUiProcVars.AUiProgressBar_New := GetProc('AUiProgressBar_New');
  AUiProcVars.AUiProgressBar_StepIt := GetProc('AUiProgressBar_StepIt');
  // --- PropertyBox ---
  AUiProcVars.AUiPropertyBox_Add := GetProc('AUiPropertyBox_Add');
  AUiProcVars.AUiPropertyBox_Add2 := GetProc('AUiPropertyBox_Add2');
  AUiProcVars.AUiPropertyBox_Item_GetValue := GetProc('AUiPropertyBox_Item_GetValue');
  AUiProcVars.AUiPropertyBox_Item_SetValue := GetProc('AUiPropertyBox_Item_SetValue');
  AUiProcVars.AUiPropertyBox_New := GetProc('AUiPropertyBox_New');
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
  AUiProcVars.AUiSpinEdit_New := GetProc('AUiSpinEdit_New');
  AUiProcVars.AUiSpinEdit_NewEx := GetProc('AUiSpinEdit_NewEx');
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
  AUiProcVars.AUiTrayIcon_SetHint := GetProc('AUiTrayIcon_SetHint');
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
  AUiProcVars.AUiWindow_New := GetProc('AUiWindow_New');
  AUiProcVars.AUiWindow_SetBorderStyle := GetProc('AUiWindow_SetBorderStyle');
  AUiProcVars.AUiWindow_SetFormStyle := GetProc('AUiWindow_SetFormStyle');
  AUiProcVars.AUiWindow_SetPosition := GetProc('AUiWindow_SetPosition');
  AUiProcVars.AUiWindow_SetState := GetProc('AUiWindow_SetState');
  AUiProcVars.AUiWindow_ShowModal := GetProc('AUiWindow_ShowModal');
  // --- WindowSettings ---
  AUiProcVars.AUiWindow_LoadConfig := GetProc('AUiWindow_LoadConfig');
  AUiProcVars.AUiWindow_LoadConfig2 := GetProc('AUiWindow_LoadConfig2');
  AUiProcVars.AUiWindow_SaveConfig := GetProc('AUiWindow_SaveConfig');
  AUiProcVars.AUiWindow_SaveConfig2 := GetProc('AUiWindow_SaveConfig2');

  Result := 0;
end;

{$ifdef ADepr}
procedure UI_SetProcs(const UiProcs: AUiProcs_Type);
begin
  AUi_GetIsShowApp := UiProcs.IsShowApp;
  AUi_InitMainTrayIcon := UiProcs.InitMainTrayIcon;
  AUi_InitMenus02 := UiProcs.InitMenus02;
  AUi_ProcessMessages02 := UiProcs.ProcessMessages02;
  AUi_SetIsShowApp := UiProcs.IsShowApp_Set;
  AUi_ShowHelp02 := UiProcs.ShowHelp02;
  AUi_Shutdown02 := UiProcs.Shutdown02;

  AUiBox_New := UiProcs.Box_New;
  AUiButton_New := UiProcs.Button_New;

  UI_Control_Free := UiProcs.Control_Free;
  UI_Control_FreeAndNil := UiProcs.Control_FreeAndNil;
  AUiControl_GetEnabled := UiProcs.Control_GetEnabled;
  AUiControl_GetHeight := UiProcs.Control_GetHeight;
  UI_Control_GetHint := UiProcs.Control_GetHintW;
  UI_Control_GetName := UiProcs.Control_GetNameW;
  UI_Control_GetText := UiProcs.Control_GetTextW;
  AUiControl_GetVisible := UiProcs.Control_GetVisible;
  AUiControl_GetWidth := UiProcs.Control_GetWidth;
  UI_Control_SetAlign := UiProcs.Control_SetAlign;
  UI_Control_SetClientSize := UiProcs.Control_SetClientSize;
  UI_Control_SetColor := UiProcs.Control_SetColor;
  UI_Control_SetEnabled := UiProcs.Control_SetEnabled;
  AUiControl_SetFocus := UiProcs.Control_SetFocus;
  UI_Control_SetHint := UiProcs.Control_SetHintW;
  UI_Control_SetName := UiProcs.Control_SetNameW;
  UI_Control_SetOnChange02 := UiProcs.Control_SetOnChange02;
  UI_Control_SetOnClick02 := UiProcs.Control_SetOnClick02;
  UI_Control_SetPosition := UiProcs.Control_SetPosition02;
  UI_Control_SetSize := UiProcs.Control_SetSize02;
  UI_Control_SetTextWS := UiProcs.Control_SetTextWS;
  UI_Control_SetVisible := UiProcs.Control_SetVisible;
  AUiControl_SetWidth := UiProcs.Control_SetWidth;

  //UI_DataSource_New := UI.DataSource_New;
  //UI_DataSource_SetOnDataChange := UI.DataSource_SetOnDataChange;

  UI_Dialog_About := UiProcs.Dialog_About;
  AUi_ExecuteCalendarDialog := UiProcs.Dialog_Calendar;
  AUi_ExecuteColorDialog := UiProcs.Dialog_Color;
  AUi_ExecuteDateFilterDialog := UiProcs.Dialog_DateFilter;
  AUi_Dialog_ErrorWS := UiProcs.Dialog_Error;
  AUi_Dialog_FontWS := UiProcs.Dialog_Font;
  AUiDialog_GetWindow := UiProcs.Dialog_GetWindow;
  AUi_Dialog_InputBoxWS := UiProcs.Dialog_InputBox;
  AUi_Dialog_InputBox2WS := UiProcs.Dialog_InputBox2;
  AUi_Dialog_InputBoxAWS := UiProcs.Dialog_InputBoxA;
  AUi_Dialog_LoginWS := UiProcs.Dialog_Login;
  AUi_Dialog_MessageWS := UiProcs.Dialog_Message;
  AUiDialog_New := UiProcs.Dialog_New;
  AUi_Dialog_OpenFileWS := UiProcs.Dialog_OpenFile;
  AUi_Dialog_OpenFileAWS := UiProcs.Dialog_OpenFileA;
  AUi_Dialog_SaveFileWS := UiProcs.Dialog_SaveFile;
  AUi_Dialog_SaveFileAWS := UiProcs.Dialog_SaveFileA;

  UI_Edit_CheckDate := UiProcs.Edit_CheckDate;
  UI_Edit_CheckFloat := UiProcs.Edit_CheckFloat;
  UI_Edit_CheckInt := UiProcs.Edit_CheckInt;
  UI_Edit_New := UiProcs.Edit_New;
  UI_Edit_NewA := UiProcs.Edit_NewA;

  UI_Grid_AddColumn := UiProcs.Grid_AddColumn;
  AUiGrid_New := UiProcs.Grid_New;
  UI_Grid_RestoreColProps := UiProcs.Grid_RestoreColProps;
  UI_Grid_SaveColProps := UiProcs.Grid_SaveColProps;
  UI_Grid_SetColumnWidth := UiProcs.Grid_SetColumnWidth;
  UI_Grid_SetColumnWidthA := UiProcs.Grid_SetColumnWidthA;
  UI_Grid_SetDataSource := UiProcs.Grid_SetDataSource;

  AUiImage_New := UiProcs.Image_New;
  UI_Image_LoadFromFileWS := UiProcs.Image_LoadFromFile;

  AUiLabel_New := UiProcs.Label_New;
  {$IFDEF A02}
  UI_Label_SetFont := UiProcs.Label_SetFont;
  {$ENDIF}

  UI_ListBox_Add := UiProcs.ListBox_Add;
  UI_ListBox_Clear := UiProcs.ListBox_Clear;
  AUiListBox_New := UiProcs.ListBox_New;

  AUi_GetMainTrayIcon := UiProcs.MainTrayIcon;

  AUi_GetMainToolBar := UiProcs.MainToolBar;
  {$IFDEF A02}
  UI_MainToolBar_Set := UiProcs.MainToolBar_Set;
  {$ENDIF}

  AUi_GetMainWindow := UiProcs.MainWindow;
  MainWindow_AddMenuItem := UiProcs.MainWindow_AddMenuItem03WS;
  MainWindow_AddMenuItem2 := UIProcs.MainWindow_AddMenuItem2;
  AUiMainWindow_GetLeftContainer := UiProcs.MainWindow_GetLeftContainer;
  AUiMainWindow_GetMainContainer := UiProcs.MainWindow_GetMainContainer;
  AUiMainWindow_GetRightContainer := UiProcs.MainWindow_GetRightContainer;
  MainWindow_Set := UIProcs.MainWindow_Set;

  Menu_AddItem2WS := UIProcs.Menu_AddItem2WS;                           // 142
  Menu_AddItem2WS02 := UIProcs.Menu_AddItem2WS02;                       // 82
  AUiMenu_AddItem3 := UiProcs.Menu_AddItem3;
  AUiMenu_GetItems := UiProcs.Menu_GetItems;
  AUiMenu_New := UiProcs.Menu_New;

  UI_MenuItem_FindByName := UiProcs.MenuItem_FindByName;
  AUiPageControl_AddPageWS := UiProcs.PageControl_AddPageWS;
  AUiPageControl_New := UiProcs.PageControl_New;

  AUiProgressBar_New := UiProcs.ProgressBar_New;
  AUiProgressBar_StepIt := UiProcs.ProgressBar_StepIt;

  UI_PropertyBox_Add := UiProcs.PropertyBox_Add;
  UI_PropertyBox_AddA := UiProcs.PropertyBox_AddA;
  UI_PropertyBox_Item_GetValue := UiProcs.PropertyBox_Item_GetValue;
  UI_PropertyBox_Item_SetValue := UiProcs.PropertyBox_Item_SetValue;
  AUiPropertyBox_New := UiProcs.PropertyBox_New;

  AUiSplitter_New := UiProcs.Splitter_New;

  UI_TextView_AddLine := UiProcs.TextView_AddLine;
  AUiTextView_New := UiProcs.TextView_New;
  UI_TextView_SetFont := UiProcs.TextView_SetFont;
  UI_TextView_SetReadOnly := UiProcs.TextView_SetReadOnly;
  UI_TextView_SetScrollBars := UiProcs.TextView_SetScrollBars;
  UI_TextView_SetWordWrap := UiProcs.TextView_SetWordWrap;

  UI_ToolBar_AddButton := UiProcs.ToolBar_AddButton;
  AUiToolBar_New := UiProcs.ToolBar_New;

  AUiTrayIcon_GetMenuItems := UiProcs.TrayIcon_GetMenuItems;

  UI_TreeView_AddItem := UiProcs.TreeView_AddItemWS;
  AUiTreeView_New := UiProcs.TreeView_New;

  UI_Window_Free := UiProcs.Window_Free;
  UI_Window_GetMenu := UiProcs.Window_GetMenu;
  UI_Window_LoadConfig := UiProcs.Window_LoadConfig;
  UI_Window_LoadConfig2 := UiProcs.Window_LoadConfig2;
  UI_Window_New := UiProcs.Window_New;
  UI_Window_SaveConfig := UiProcs.Window_SaveConfig;
  UI_Window_SaveConfig2 := UiProcs.Window_SaveConfig2;
  UI_Window_SetBorderStyle := UiProcs.Window_SetBorderStyle02;
  UI_Window_SetFormStyle := UiProcs.Window_SetFormStyle;
  UI_Window_SetPosition := UiProcs.Window_SetPosition;
  AUiWindow_ShowModal := UiProcs.Window_ShowModal;

  AUiReportWin_New := UiProcs.ReportWin_New;

  UI_WaitWin_New := UiProcs.WaitWin_NewWS;
  AUiWaitWin_StepBy := UiProcs.WaitWin_StepBy;

  AUi_SetOnMainFormCreate02 := UiProcs.SetOnMainFormCreate02;
  MainWindow_SetA := UiProcs.MainWindow_SetA;

  {$IFDEF A01}
  {$ELSE}
  UI_ReportWin_NewA := UiProcs.ReportWin_NewA;
  AUiCalendar_GetDate := UiProcs.Calendar_GetDate;
  AUiCalendar_New := UiProcs.Calendar_New;
  UI_Calendar_SetMonth := UiProcs.Calendar_SetMonth;
  AUiReport_New := UiProcs.Report_New;
  UI_Report_SetText := UiProcs.Report_SetText;
  {$ENDIF}

  {$IFDEF A01}
  {$ELSE}
    {$IFDEF A02}
    {$ELSE}
    UI_Control_SetFontW1 := UiProcs.Control_SetFont1;
    UI_Control_SetFontW2 := UiProcs.Control_SetFont2;
    AUi_NewAboutDialog := UiProcs.Dialog_About_New;
    UI_Dialog_AddButton := UiProcs.Dialog_AddButton;
    //UI_InitMenus := UI.InitMenus;
    {$ENDIF A02}
  {$ENDIF A01}

  AUiProcVars.AUiGrid_Clear2 := UiProcs.Grid_ClearA;
  AUiProcVars.AUiGrid_Clear := UiProcs.Grid_Clear;
  AUiProcVars.AUiGrid_FindInt := UiProcs.Grid_FindInt;

  AUiProcVars.AUiControl_SetOnChange := UiProcs.Control_SetOnChange;
  AUiProcVars.AUiGrid_DeleteRow2 := UiProcs.Grid_DeleteRow2;
  AUiProcVars.AUi_ShowHelp2WS := UiProcs.ShowHelp2WS;
  AUiProcVars.AUiWindow_SetBorderStyle := UiProcs.Window_SetBorderStyle;
  AUiProcVars.MainWindow_AddMenuItem := UiProcs.MainWindow_AddMenuItem03WS;
  AUiProcVars.AUi_OnDone_Disconnect := UiProcs.OnDone_Disconnect03;
  AUiProcVars.AUiMainWindow_AddMenuItem := UiProcs.MainWindow_AddMenuItem;
  AUiProcVars.AUiMainWindow_AddMenuItemA := UiProcs.MainWindow_AddMenuItemA;
end;
{$endif}

{$ifdef ADepr}
function UI_SetProcsP(UiProcs: PUiProcs; Ui_Init: AUi_Init_Proc; Ui_Fin: AUi_Fin_Proc): Boolean;
begin
  if not(Assigned(UiProcs)) then
  begin
    Result := False;
    Exit;
  end;
  UI_SetProcs(UiProcs^);
  AUi_Init := Ui_Init;
  AUi_Fin := Ui_Fin;
  Result := True;
end;
{$endif}

end.
 