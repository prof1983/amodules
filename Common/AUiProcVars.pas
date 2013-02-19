{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 19.02.2013
}
unit AUiProcVars;

interface

uses
  ABase, ABaseTypes,
  AUiBase, AUiProcTypes;

// --- Procs var ---

var
  AUi_CreateMainForm: AUi_CreateMainForm_Proc = nil;
  AUi_ExecuteAboutDialog: AUi_ExecuteAboutDialog_Proc = nil;
  AUi_ExecuteCalendarDialog: AUi_ExecuteCalendarDialog_Proc = nil;
  AUi_ExecuteColorDialog: AUi_ExecuteColorDialog_Proc = nil;
  AUi_ExecuteDateFilterDialog: AUi_ExecuteDateFilterDialog_Proc = nil;
  AUi_ExecuteErrorDialog: AUi_ExecuteErrorDialog_Proc = nil;
  AUi_ExecuteErrorDialogA: AUi_ExecuteErrorDialogA_Proc = nil;
  AUi_ExecuteFontDialog: AUi_ExecuteFontDialog_Proc = nil;
  AUi_ExecuteFontDialogA: AUi_ExecuteFontDialogA_Proc = nil;
  AUi_ExecuteInputBox1: AUi_ExecuteInputBox1_Proc = nil;
  AUi_ExecuteInputBox1A: AUi_ExecuteInputBox1A_Proc = nil;
  AUi_ExecuteInputBox2: AUi_ExecuteInputBox2_Proc = nil;
  AUi_ExecuteInputBox2A: AUi_ExecuteInputBox2A_Proc = nil;
  AUi_ExecuteLoginDialog: AUi_ExecuteLoginDialog_Proc = nil;
  AUi_ExecuteMessageDialog1: AUi_ExecuteMessageDialog1_Proc = nil;
  AUi_ExecuteMessageDialog1A: AUi_ExecuteMessageDialog1A_Proc = nil;
  AUi_ExecuteOpenFileDialog: AUi_ExecuteOpenFileDialog_Proc = nil;
  AUi_ExecutePrinterSetupDialog: AUi_ExecutePrinterSetupDialog_Proc = nil;
  AUi_ExecuteSaveFileDialog: AUi_ExecuteSaveFileDialog_Proc = nil;
  AUi_Fin: AUi_Fin_Proc = nil;
  AUi_GetIsShowApp: AUi_GetIsShowApp_Proc = nil;
  AUi_GetMainMenuItem: AUi_GetMainMenuItem_Proc = nil;
  AUi_GetMainToolBar: AUi_GetMainToolBar_Proc = nil;
  AUi_GetMainTrayIcon: AUi_GetMainTrayIcon_Proc = nil;
  AUi_GetMainWindow: AUi_GetMainWindow_Proc = nil;
  AUi_Init: AUi_Init_Proc = nil;
  AUi_InitAboutDialogWin2: AUi_InitAboutDialogWin2_Proc = nil;
  AUi_InitMainTrayIcon: AUi_InitMainTrayIcon_Proc = nil;
  AUi_InitMenus: AUi_InitMenus_Proc = nil;
  AUi_OnDone_Connect: AUi_OnDone_Connect_Proc = nil;
  AUi_OnDone_Disconnect: AUi_OnDone_Disconnect_Proc = nil;
  AUi_ProcessMessages: AUi_ProcessMessages_Proc = nil;
  AUi_Run: AUi_Run_Proc = nil;
  AUi_SetAboutMemoDefaultSize: AUi_SetAboutMemoDefaultSize_Proc = nil;
  AUi_SetHideOnClose: AUi_SetHideOnClose_Proc = nil;
  AUi_SetIsShowApp: AUi_SetIsShowApp_Proc = nil;
  AUi_SetMainToolBar: AUi_SetMainToolBar_Proc = nil;
  AUi_SetMainWindow: AUi_SetMainWindow_Proc = nil;
  AUi_SetMainWindow2: AUi_SetMainWindow2_Proc = nil;
  AUi_SetOnAboutClick: AUi_SetOnAboutClick_Proc = nil;
  AUi_SetOnMainFormCreate: AUi_SetOnMainFormCreate_Proc = nil;
  AUi_SetProgramState: AUi_SetProgramState_Proc = nil;
  AUi_ShellExecute: AUi_ShellExecute_Proc = nil;
  AUi_ShellExecuteA: AUi_ShellExecuteA_Proc = nil;
  AUi_ShowHelp: AUi_ShowHelp_Proc = nil;
  AUi_ShowHelp2: AUi_ShowHelp2_Proc = nil;
  AUi_Shutdown: AUi_Shutdown_Proc = nil;

var
  AUiAboutDialog_Init2: AUiAboutDialog_Init2_Proc = nil;
  AUiAboutDialog_New: AUiAboutDialog_New_Proc = nil;

var
  AUiBox_New: AUiBox_New_Proc = nil;

var
  AUiButton_New: AUiButton_New_Proc = nil;
  AUiButton_SetKind: AUiButton_SetKind_Proc = nil;

var
  AUiCalendar_GetDate: AUiCalendar_GetDate_Proc = nil;
  AUiCalendar_New: AUiCalendar_New_Proc = nil;
  AUiCalendar_SetMonth: AUiCalendar_SetMonth_Proc = nil;

var
  AUiCheckBox_Free: AUiCheckBox_Free_Proc = nil;
  AUiCheckBox_GetChecked: AUiCheckBox_GetChecked_Proc = nil;
  AUiCheckBox_New: AUiCheckBox_New_Proc = nil;
  AUiCheckBox_NewEx: AUiCheckBox_NewEx_Proc = nil;
  AUiCheckBox_SetChecked: AUiCheckBox_SetChecked_Proc = nil;

var
  AUiComboBox_Add: AUiComboBox_Add_Proc = nil;
  AUiComboBox_AddA: AUiComboBox_AddA_Proc = nil;
  AUiComboBox_GetItemIndex: AUiComboBox_GetItemIndex_Proc = nil;
  AUiComboBox_New: AUiComboBox_New_Proc = nil;
  AUiComboBox_New2: AUiComboBox_New2_Proc = nil;
  AUiComboBox_SetItemIndex: AUiComboBox_SetItemIndex_Proc = nil;

var
  AUiControl_Free: AUiControl_Free_Proc = nil;
  AUiControl_FreeAndNil: AUiControl_FreeAndNil_Proc = nil;
  AUiControl_GetClientHeight: AUiControl_GetClientHeight_Proc = nil;
  AUiControl_GetClientWidth: AUiControl_GetClientWidth_Proc = nil;
  AUiControl_GetColor: AUiControl_GetColor_Proc = nil;
  AUiControl_GetEnabled: AUiControl_GetEnabled_Proc = nil;
  AUiControl_GetHeight: AUiControl_GetHeight_Proc = nil;
  AUiControl_GetHint: AUiControl_GetHint_Proc = nil;
  AUiControl_GetHintA: AUiControl_GetHintA_Proc = nil;
  AUiControl_GetMenu: AUiControl_GetMenu_Proc = nil;
  AUiControl_GetName: AUiControl_GetName_Proc = nil;
  AUiControl_GetNameA: AUiControl_GetNameA_Proc = nil;
  AUiControl_GetPosition: AUiControl_GetPosition_Proc = nil;
  AUiControl_GetText: AUiControl_GetText_Proc = nil;
  AUiControl_GetTop: AUiControl_GetTop_Proc = nil;
  AUiControl_GetVisible: AUiControl_GetVisible_Proc = nil;
  AUiControl_GetWidth: AUiControl_GetWidth_Proc = nil;
  AUiControl_SetAlign: AUiControl_SetAlign_Proc = nil;
  AUiControl_SetAnchors: AUiControl_SetAnchors_Proc = nil;
  AUiControl_SetBevel: AUiControl_SetBevel_Proc = nil;
  AUiControl_SetClientSize: AUiControl_SetClientSize_Proc = nil;
  AUiControl_SetColor: AUiControl_SetColor_Proc = nil;
  AUiControl_SetCursor: AUiControl_SetCursor_Proc = nil;
  AUiControl_SetEnabled: AUiControl_SetEnabled_Proc = nil;
  AUiControl_SetFocus: AUiControl_SetFocus_Proc = nil;
  AUiControl_SetFont1: AUiControl_SetFont1_Proc = nil;
  AUiControl_SetFont1A: AUiControl_SetFont1A_Proc = nil;
  AUiControl_SetFontColor: AUiControl_SetFontColor_Proc = nil;
  AUiControl_SetFontSize: AUiControl_SetFontSize_Proc = nil;
  AUiControl_SetFontStyle: AUiControl_SetFontStyle_Proc = nil;
  AUiControl_SetHeight: AUiControl_SetHeight_Proc = nil;
  AUiControl_SetHint: AUiControl_SetHint_Proc = nil;
  AUiControl_SetHintA: AUiControl_SetHintA_Proc = nil;
  AUiControl_SetName: AUiControl_SetName_Proc = nil;
  AUiControl_SetNameA: AUiControl_SetNameA_Proc = nil;
  AUiControl_SetOnChange: AUiControl_SetOnChange_Proc = nil;
  AUiControl_SetOnChangeEx: AUiControl_SetOnChangeEx_Proc = nil;
  AUiControl_SetOnClick: AUiControl_SetOnClick_Proc = nil;
  AUiControl_SetPosition: AUiControl_SetPosition_Proc = nil;
  AUiControl_SetSize: AUiControl_SetSize_Proc = nil;
  AUiControl_SetTabStop: AUiControl_SetTabStop_Proc = nil;
  AUiControl_SetText: AUiControl_SetText_Proc = nil;
  AUiControl_SetTextA: AUiControl_SetTextA_Proc = nil;
  AUiControl_SetTop: AUiControl_SetTop_Proc = nil;
  AUiControl_SetVisible: AUiControl_SetVisible_Proc = nil;
  AUiControl_SetWidth: AUiControl_SetWidth_Proc = nil;

var
  AUiDataSource_New: AUiDataSource_New_Proc = nil;
  AUiDataSource_SetOnDataChange: AUiDataSource_SetOnDataChange_Proc = nil;

var
  AUiDialog_AddButton1: AUiDialog_AddButton1_Proc = nil;
  AUiDialog_Free: AUiDialog_Free_Proc = nil;
  AUiDialog_GetButtonsBox: AUiDialog_GetButtonsBox_Proc = nil;
  AUiDialog_GetWindow: AUiDialog_GetWindow_Proc = nil;
  AUiDialog_New: AUiDialog_New_Proc = nil;
  AUiDialog_ShowModal: AUiDialog_ShowModal_Proc = nil;

var
  AUiEdit_CheckDate: AUiEdit_CheckDate_Proc = nil;
  AUiEdit_CheckFloat: AUiEdit_CheckFloat_Proc = nil;
  AUiEdit_CheckFloat32: AUiEdit_CheckFloat32_Proc = nil;
  AUiEdit_CheckFloat64: AUiEdit_CheckFloat64_Proc = nil;
  AUiEdit_CheckInt: AUiEdit_CheckInt_Proc = nil;
  AUiEdit_New: AUiEdit_New_Proc = nil;
  AUiEdit_NewEx: AUiEdit_NewEx_Proc = nil;

var
  AUiGrid_AddColumn: AUiGrid_AddColumn_Proc = nil;
  AUiGrid_Clear: AUiGrid_Clear_Proc = nil;
  AUiGrid_Clear2: AUiGrid_Clear2_Proc = nil;
  AUiGrid_DeleteRow: AUiGrid_DeleteRow_Proc = nil;
  AUiGrid_DeleteRow2: AUiGrid_DeleteRow2_Proc = nil;
  AUiGrid_FindInt: AUiGrid_FindInt_Proc = nil;
  AUiGrid_New: AUiGrid_New_Proc = nil;
  AUiGrid_RestoreColProps: AUiGrid_RestoreColProps_Proc = nil;
  AUiGrid_RestoreColPropsA: AUiGrid_RestoreColPropsA_Proc = nil;
  AUiGrid_RowDown: AUiGrid_RowDown_Proc = nil;
  AUiGrid_RowUp: AUiGrid_RowUp_Proc = nil;
  AUiGrid_SaveColProps: AUiGrid_SaveColProps_Proc = nil;
  AUiGrid_SaveColPropsA: AUiGrid_SaveColPropsA_Proc = nil;
  AUiGrid_SetColumnWidth: AUiGrid_SetColumnWidth_Proc = nil;
  AUiGrid_SetColumnWidth2: AUiGrid_SetColumnWidth2_Proc = nil;
  AUiGrid_SetDataSource: AUiGrid_SetDataSource_Proc = nil;
  AUiGrid_SetRowCount: AUiGrid_SetRowCount_Proc = nil;

var
  AUiImage_LoadFromFile: AUiImage_LoadFromFile_Proc = nil;
  AUiImage_LoadFromFileA: AUiImage_LoadFromFileA_Proc = nil;
  AUiImage_New: AUiImage_New_Proc = nil;
  AUiImage_SetCenter: AUiImage_SetCenter_Proc = nil;
  AUiImage_SetTransparent: AUiImage_SetTransparent_Proc = nil;

var
  AUiLabel_New: AUiLabel_New_Proc = nil;
  AUiLabel_New2: AUiLabel_New2_Proc = nil;
  AUiLabel_SetAlignment: AUiLabel_SetAlignment_Proc = nil;
  AUiLabel_SetAutoSize: AUiLabel_SetAutoSize_Proc = nil;
  AUiLabel_SetWordWrap: AUiLabel_SetWordWrap_Proc = nil;

var
  AUiListBox_Add: AUiListBox_Add_Proc = nil;
  AUiListBox_Clear: AUiListBox_Clear_Proc = nil;
  AUiListBox_DeleteItem: AUiListBox_DeleteItem_Proc = nil;
  AUiListBox_GetCount: AUiListBox_GetCount_Proc = nil;
  AUiListBox_GetItem: AUiListBox_GetItem_Proc = nil;
  AUiListBox_GetItemIndex: AUiListBox_GetItemIndex_Proc = nil;
  AUiListBox_New: AUiListBox_New_Proc = nil;
  AUiListBox_New2: AUiListBox_New2_Proc = nil;
  AUiListBox_SetChecked: AUiListBox_SetChecked_Proc = nil;
  AUiListBox_SetItem: AUiListBox_SetItem_Proc = nil;
  AUiListBox_SetItemHeight: AUiListBox_SetItemHeight_Proc = nil;
  AUiListBox_SetItemIndex: AUiListBox_SetItemIndex_Proc = nil;
  AUiListBox_SetOnDblClick: AUiListBox_SetOnDblClick_Proc = nil;

var
  AUiMainWindow_AddMenuItem: AUiMainWindow_AddMenuItem_Proc = nil;
  AUiMainWindow_AddMenuItemA: AUiMainWindow_AddMenuItemA_Proc = nil;
  AUiMainWindow_GetLeftContainer: AUiMainWindow_GetLeftContainer_Proc = nil;
  AUiMainWindow_GetMainContainer: AUiMainWindow_GetMainContainer_Proc = nil;
  AUiMainWindow_GetRightContainer: AUiMainWindow_GetRightContainer_Proc = nil;

var
  AUiMenu_AddItem0: AUiMenu_AddItem0_Proc = nil;
  AUiMenu_AddItem1: AUiMenu_AddItem1_Proc = nil;
  AUiMenu_AddItem2: AUiMenu_AddItem2_Proc = nil;
  AUiMenu_AddItem3: AUiMenu_AddItem3_Proc = nil;
  AUiMenu_Clear: AUiMenu_Clear_Proc = nil;
  AUiMenu_FindItemByName: AUiMenu_FindItemByName_Proc = nil;
  AUiMenu_GetItems: AUiMenu_GetItems_Proc = nil;
  AUiMenu_New: AUiMenu_New_Proc = nil;
  AUiMenu_New2: AUiMenu_New2_Proc = nil;
  AUiMenu_SetChecked: AUiMenu_SetChecked_Proc = nil;

var
  AUiPageControl_AddPage: AUiPageControl_AddPage_Proc = nil;
  AUiPageControl_AddPageA: AUiPageControl_AddPageA_Proc = nil;
  AUiPageControl_New: AUiPageControl_New_Proc = nil;

var
  AUiProgressBar_New: AUiProgressBar_New_Proc = nil;
  AUiProgressBar_SetMaxPosition: AUiProgressBar_SetMaxPosition_Proc = nil;
  AUiProgressBar_SetPosition: AUiProgressBar_SetPosition_Proc = nil;
  AUiProgressBar_StepBy: AUiProgressBar_StepBy_Proc = nil;
  AUiProgressBar_StepIt: AUiProgressBar_StepIt_Proc = nil;

var
  AUiPropertyBox_Add: AUiPropertyBox_Add_Proc = nil;
  AUiPropertyBox_Add2: AUiPropertyBox_Add2_Proc = nil;
  AUiPropertyBox_GetUseBigFont: AUiPropertyBox_GetUseBigFont_Proc = nil;
  AUiPropertyBox_Item_GetValue: AUiPropertyBox_Item_GetValue_Proc = nil;
  AUiPropertyBox_Item_SetValue: AUiPropertyBox_Item_SetValue_Proc = nil;
  AUiPropertyBox_New: AUiPropertyBox_New_Proc = nil;
  AUiPropertyBox_SetIsAppPoints: AUiPropertyBox_SetIsAppPoints_Proc = nil;
  AUiPropertyBox_SetUseBigFont: AUiPropertyBox_SetUseBigFont_Proc = nil;

var
  AUiReport_New: AUiReport_New_Proc = nil;
  AUiReport_SetText: AUiReport_SetText_Proc = nil;

var
  AUiReportWin_New: AUiReportWin_New_Proc = nil;
  AUiReportWin_New2: AUiReportWin_New2_Proc = nil;
  AUiReportWin_ShowReport: AUiReportWin_ShowReport_Proc = nil;

var
  AUiSpinButton_New: AUiSpinButton_New_Proc = nil;

var
  AUiSpinEdit_GetValue: AUiSpinEdit_GetValue_Proc = nil;
  AUiSpinEdit_New: AUiSpinEdit_New_Proc = nil;
  AUiSpinEdit_NewEx: AUiSpinEdit_NewEx_Proc = nil;
  AUiSpinEdit_SetValue: AUiSpinEdit_SetValue_Proc = nil;

var
  AUiSplitter_New: AUiSplitter_New_Proc = nil;

var
  AUiTextView_AddLine: AUiTextView_AddLine_Proc = nil;
  AUiTextView_New: AUiTextView_New_Proc = nil;
  AUiTextView_SetFont: AUiTextView_SetFont_Proc = nil;
  AUiTextView_SetReadOnly: AUiTextView_SetReadOnly_Proc = nil;
  AUiTextView_SetScrollBars: AUiTextView_SetScrollBars_Proc = nil;
  AUiTextView_SetWordWrap: AUiTextView_SetWordWrap_Proc = nil;

var
  AUiToolBar_AddButton: AUiToolBar_AddButton_Proc = nil;
  AUiToolBar_AddButton1: AUiToolBar_AddButton1_Proc = nil;
  AUiToolBar_New: AUiToolBar_New_Proc = nil;

var
  AUiToolMenu_AddNewItem: AUiToolMenu_AddNewItem_Proc = nil;
  AUiToolMenu_AddNewSubMenu: AUiToolMenu_AddNewSubMenu_Proc = nil;
  AUiToolMenu_GetSubMenu: AUiToolMenu_GetSubMenu_Proc = nil;
  AUiToolMenu_New: AUiToolMenu_New_Proc = nil;

var
  AUiTrayIcon_Free: AUiTrayIcon_Free_Proc = nil;
  AUiTrayIcon_GetHint: AUiTrayIcon_GetHint_Proc = nil;
  AUiTrayIcon_GetMenuItems: AUiTrayIcon_GetMenuItems_Proc = nil;
  AUiTrayIcon_GetPopupMenu: AUiTrayIcon_GetPopupMenu_Proc = nil;
  AUiTrayIcon_New: AUiTrayIcon_New_Proc = nil;
  AUiTrayIcon_SetHint: AUiTrayIcon_SetHint_Proc = nil;
  AUiTrayIcon_SetIcon: AUiTrayIcon_SetIcon_Proc = nil;
  AUiTrayIcon_SetIsActive: AUiTrayIcon_SetIsActive_Proc = nil;
  AUiTrayIcon_SetOnLeftClick: AUiTrayIcon_SetOnLeftClick_Proc = nil;
  AUiTrayIcon_SetOnRightClick: AUiTrayIcon_SetOnRightClick_Proc = nil;
  AUiTrayIcon_SetPopupMenu: AUiTrayIcon_SetPopupMenu_Proc = nil;

var
  AUiTreeView_AddItem: AUiTreeView_AddItem_Proc = nil;
  AUiTreeView_New: AUiTreeView_New_Proc = nil;

var
  AUiWaitWin_New: AUiWaitWin_New_Proc = nil;
  AUiWaitWin_SetMaxPosition: AUiWaitWin_SetMaxPosition_Proc = nil;
  AUiWaitWin_SetPosition: AUiWaitWin_SetPosition_Proc = nil;
  AUiWaitWin_SetText: AUiWaitWin_SetText_Proc = nil;
  AUiWaitWin_StepBy: AUiWaitWin_StepBy_Proc = nil;

var
  AUiWindow_Add: AUiWindow_Add_Proc = nil;
  AUiWindow_Free: AUiWindow_Free_Proc = nil;
  AUiWindow_FreeAndNil: AUiWindow_FreeAndNil_Proc = nil;
  AUiWindow_GetMenu: AUiWindow_GetMenu_Proc = nil;
  AUiWindow_LoadConfig: AUiWindow_LoadConfig_Proc = nil;
  AUiWindow_LoadConfig2: AUiWindow_LoadConfig2_Proc = nil;
  AUiWindow_New: AUiWindow_New_Proc = nil;
  AUiWindow_SaveConfig: AUiWindow_SaveConfig_Proc = nil;
  AUiWindow_SaveConfig2: AUiWindow_SaveConfig2_Proc = nil;
  AUiWindow_SetBorderStyle: AUiWindow_SetBorderStyle_Proc = nil;
  AUiWindow_SetFormStyle: AUiWindow_SetFormStyle_Proc = nil;
  AUiWindow_SetPosition: AUiWindow_SetPosition_Proc = nil;
  AUiWindow_SetState: AUiWindow_SetState_Proc = nil;
  AUiWindow_ShowModal: AUiWindow_ShowModal_Proc = nil;
  AUiWindow_ShowModal2: AUiWindow_ShowModal2_Proc = nil;

implementation

end.
