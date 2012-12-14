{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 14.12.2012
}
unit AUiProcVars;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ABaseTypes,
  AUiBase, AUiProcTypes;

// --- Procs var ---

var
  AUi_CreateMainForm: AUi_CreateMainForm_Proc = nil;
  AUi_GetIsShowApp: AUi_GetIsShowApp_Proc = nil;
  AUi_GetMainMenuItem: AUi_GetMainMenuItem_Proc = nil;
  AUi_GetMainToolBar: AUi_GetMainToolBar_Proc = nil; {UI_MainToolBar}
  AUi_GetMainTrayIcon: AUi_GetMainTrayIcon_Proc = nil; {UI_MainTrayIcon}
  AUi_GetMainWindow: AUi_GetMainWindow_Proc = nil; {MainWindow}
  AUi_Fin: AUi_Fin_Proc = nil;
  AUi_Init: AUi_Init_Proc = nil;
  AUi_InitMainTrayIcon: AUi_InitMainTrayIcon_Proc = nil;
  AUi_InitMenus: AUi_InitMenus_Proc = nil;
  AUi_OnDone_Connect: AUi_OnDone_Connect_Proc = nil;
  AUi_OnDone_Disconnect: AUi_OnDone_Disconnect_Proc = nil;
  AUi_ProcessMessages: AUi_ProcessMessages_Proc = nil;
  AUi_Run: AUi_Run_Proc = nil;
  AUi_SetHideOnClose: AUi_SetHideOnClose_Proc = nil;
  AUi_SetMainToolBar: AUi_SetMainToolBar_Proc = nil;
  AUi_SetProgramState: AUi_SetProgramState_Proc = nil;
  AUi_ShellExecute: AUi_ShellExecute_Proc = nil;
  AUi_ShellExecuteA: AUi_ShellExecuteA_Proc = nil;
  AUi_ShowHelp: AUi_ShowHelp_Proc = nil;
  AUi_ShowHelp2: AUi_ShowHelp2_Proc = nil;
  AUi_Shutdown: AUi_Shutdown_Proc = nil;
  {$ifdef ADepr}
  AUi_InitMenus02: AUi_InitMenus02_Proc = nil;
  AUi_ProcessMessages02: AUi_ProcessMessages02_Proc = nil;
  AUi_SetIsShowApp: AUi_SetIsShowApp_Proc = nil;
  AUi_SetOnMainFormCreate02: AUi_SetOnMainFormCreate02_Proc = nil;
  AUi_ShowHelp02: AUi_ShowHelp02_Proc = nil;
  AUi_ShowHelp2WS: AUi_ShowHelp2WS_Proc = nil;
  AUi_Shutdown02: AUi_Shutdown02_Proc = nil;
  {$endif}
var
  AUiBox_New: AUiBox_New_Proc = nil;
var
  AUiButton_New: AUiButton_New_Proc = nil;
  AUiButton_SetKind: AUiButton_SetKind_Proc = nil;
var
  AUiCalendar_GetDate: AUiCalendar_GetDate_Proc = nil;
  AUiCalendar_New: AUiCalendar_New_Proc = nil;
  AUiCalendar_SetMonth: AUiCalendar_SetMonth04_Proc = nil;
  {$ifdef ADepr}
  UI_Calendar_SetMonth: AUiCalendar_SetMonth02_Proc = nil;
  {$endif}
var
  AUiComboBox_Add: AUiComboBox_Add_Proc = nil;
  AUiComboBox_AddA: AUiComboBox_AddA_Proc = nil;
  AUiComboBox_GetItemIndex: AUiComboBox_GetItemIndex_Proc = nil;
  AUiComboBox_New: AUiComboBox_New_Proc = nil;
  AUiComboBox_New2: AUiComboBox_New2_Proc = nil;
  AUiComboBox_SetItemIndex: AUiComboBox_SetItemIndex_Proc = nil;
var
  AUiControl_Free: AUiControl_Free04_Proc = nil;
  AUiControl_FreeAndNil: AUiControl_FreeAndNil04_Proc = nil;
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
  AUiControl_GetVisible: AUiControl_GetVisible_Proc = nil;
  AUiControl_GetWidth: AUiControl_GetWidth_Proc = nil;
  AUiControl_SetAlign: AUiControl_SetAlign04_Proc = nil;
  AUiControl_SetAnchors: AUiControl_SetAnchors_Proc = nil;
  AUiControl_SetClientSize: AUiControl_SetClientSize04_Proc = nil;
  AUiControl_SetColor: AUiControl_SetColor04_Proc = nil;
  AUiControl_SetEnabled: AUiControl_SetEnabled04_Proc = nil;
  AUiControl_SetFocus: AUiControl_SetFocus_Proc = nil;
  AUiControl_SetFont1: AUiControl_SetFont1_Proc = nil;
  AUiControl_SetFont1A: AUiControl_SetFont1A_Proc = nil;
  AUiControl_SetHeight: AUiControl_SetHeight_Proc = nil;
  AUiControl_SetHint: AUiControl_SetHint04_Proc = nil;
  AUiControl_SetHintA: AUiControl_SetHintA_Proc = nil;
  AUiControl_SetName: AUiControl_SetName04_Proc = nil;
  AUiControl_SetNameA: AUiControl_SetNameA_Proc = nil;
  AUiControl_SetOnChange: AUiControl_SetOnChange_Proc = nil;
  AUiControl_SetOnClick: AUiControl_SetOnClick04_Proc = nil;
  AUiControl_SetPosition: AUiControl_SetPosition04_Proc = nil;
  AUiControl_SetSize: AUiControl_SetSize04_Proc = nil;
  AUiControl_SetTabStop: AUiControl_SetTabStop_Proc = nil;
  AUiControl_SetText: AUiControl_SetText04_Proc = nil;
  AUiControl_SetTextA: AUiControl_SetTextA_Proc = nil;
  AUiControl_SetVisible: AUiControl_SetVisible04_Proc = nil;
  AUiControl_SetWidth: AUiControl_SetWidth_Proc = nil;
  {$ifdef ADepr}
  UI_Control_Free: AUiControl_Free02_Proc = nil;
  UI_Control_FreeAndNil: AUiControl_FreeAndNil02_Proc = nil;
  UI_Control_GetHint: AUiControl_GetHintWS_Proc = nil;
  UI_Control_GetName: AUiControl_GetNameWS_Proc = nil;
  UI_Control_GetText: AUiControl_GetTextWS_Proc = nil;
  UI_Control_SetAlign: AUiControl_SetAlign02_Proc = nil;
  UI_Control_SetClientSize: AUiControl_SetClientSize02_Proc = nil;
  UI_Control_SetColor: AUiControl_SetColor02_Proc = nil;
  UI_Control_SetEnabled: AUiControl_SetEnabled02_Proc = nil;
  UI_Control_SetFont2: AUiControl_SetFont2_Old_Proc = nil;
  UI_Control_SetFontW1: AUiControl_SetFontW1_Proc = nil;
  UI_Control_SetFontW2: AUiControl_SetFontW2_Proc = nil;
  UI_Control_SetHint: AUiControl_SetHintWS_Proc = nil;
  UI_Control_SetName: AUiControl_SetNameWS_Proc = nil;
  UI_Control_SetOnChange02: AUiControl_SetOnChange02_Proc = nil;
  UI_Control_SetOnClick02: AUiControl_SetOnClick02_Old_Proc = nil;
  UI_Control_SetPosition: AUiControl_SetPosition02_Proc = nil;
  UI_Control_SetSize: AUiControl_SetSize02_Proc = nil;
  UI_Control_SetTextWS: AUiControl_SetTextWS_Proc = nil;
  UI_Control_SetVisible: AUiControl_SetVisible02_Proc = nil;
  {$endif}
var
  AUi_ExecuteAboutDialog: AUi_ExecuteAboutDialog_Proc = nil;
  AUi_ExecuteCalendarDialog: AUi_ExecuteCalendarDialog_Proc = nil; {UI_Dialog_Calendar}
  AUi_ExecuteColorDialog: AUi_ExecuteColorDialog_Proc = nil; {UI_Dialog_Color}
  AUi_ExecuteDateFilterDialog: AUi_ExecuteDateFilterDialog_Proc = nil; {UI_Dialog_DateFilter}
  AUi_ExecuteErrorDialog: AUi_ExecuteErrorDialog_Proc = nil;
  AUi_ExecuteErrorDialogA: AUi_ExecuteErrorDialogA_Proc = nil;
  AUi_ExecuteFontDialog: AUi_ExecuteFontDialog_Proc = nil; {UI_Dialog_Font}
  AUi_ExecuteFontDialogA: AUi_ExecuteFontDialogA_Proc = nil;
  AUi_ExecuteInputBox1: AUi_ExecuteInputBox1_Proc = nil;
  AUi_ExecuteInputBox1A: AUi_ExecuteInputBox1A_Proc = nil;
  AUi_ExecuteInputBox2: AUi_ExecuteInputBox2_Proc = nil;
  AUi_ExecuteInputBox2A: AUi_ExecuteInputBox2A_Proc = nil;
  AUi_ExecuteMessageDialog1: AUi_ExecuteMessageDialog1_Proc = nil; {UI_Dialog_Message}
  AUi_ExecuteMessageDialog1A: AUi_ExecuteMessageDialog1A_Proc = nil;
  AUi_ExecuteOpenFileDialog: AUi_ExecuteOpenFileDialog_Proc = nil; {UI_Dialog_OpenFile}
  AUi_ExecutePrinterSetupDialog: AUi_ExecutePrinterSetupDialog_Proc = nil;
  AUi_ExecuteSaveFileDialog: AUi_ExecuteSaveFileDialog_Proc = nil; {UI_Dialog_SaveFile}
  AUi_InitAboutDialog1: AUi_InitAboutDialog1_Proc = nil;
  AUi_InitAboutDialog2: AUi_InitAboutDialog2_Proc = nil;
  AUi_NewAboutDialog: AUi_NewAboutDialog_Proc = nil; {UI_Dialog_About_New}
  AUiDialog_New: AUiDialog_New_Proc = nil; {UI_Dialog_New, AUi_NewDialog}
  AUiDialog_AddButton: AUiDialog_AddButton_Proc = nil;
  AUiDialog_GetWindow: AUiDialog_GetWindow_Proc = nil; {UI_Dialog_GetWindow}
  {$ifdef ADepr}
  UI_Dialog_About: AUi_Dialog_About_Proc = nil;
  UI_Dialog_AddButton: AUI_Dialog_AddButton02 = nil;
  UI_Dialog_Error: AUi_Dialog_Error_Proc = nil;
  UI_Dialog_InputBox: AUi_Dialog_InputBox_Proc = nil;
  UI_Dialog_InputBox2: AUi_Dialog_InputBox2_Proc = nil;
  UI_Dialog_InputBoxA: AUi_Dialog_InputBoxA_Proc = nil;
  UI_Dialog_Login: AUi_Dialog_Login_Proc = nil;
  UI_Dialog_OpenFileA: AUi_Dialog_OpenFileA_Proc = nil;
  UI_Dialog_SaveFileA: AUi_Dialog_SaveFileA_Proc = nil;
  AUi_Dialog_ErrorWS: AUi_Dialog_ErrorWS_Proc = nil;
  AUi_Dialog_FontWS: AUi_Dialog_FontWS_Proc = nil;
  AUi_Dialog_InputBoxWS: AUi_Dialog_InputBoxWS_Proc = nil;
  AUi_Dialog_InputBox2WS: AUi_Dialog_InputBox2WS_Proc = nil;
  AUi_Dialog_InputBoxAWS: AUi_Dialog_InputBoxAWS_Proc = nil;
  AUi_Dialog_LoginWS: AUi_Dialog_LoginWS_Proc = nil;
  AUi_Dialog_MessageWS: AUi_Dialog_MessageWS_Proc = nil;
  AUi_Dialog_OpenFileWS: AUi_Dialog_OpenFileWS_Proc = nil;
  AUi_Dialog_OpenFileAWS: AUi_Dialog_OpenFileAWS_Proc = nil;
  AUi_Dialog_SaveFileWS: AUi_Dialog_SaveFileWS_Proc = nil;
  AUi_Dialog_SaveFileAWS: AUi_Dialog_SaveFileAWS_Proc = nil;
  {$endif}
var
  AUiEdit_CheckDate: AUiEdit_CheckDate_Proc = nil;
  AUiEdit_CheckFloat: AUiEdit_CheckFloat_Proc = nil;
  AUiEdit_CheckFloat32: AUiEdit_CheckFloat32_Proc = nil;
  AUiEdit_CheckFloat64: AUiEdit_CheckFloat64_Proc = nil;
  AUiEdit_CheckInt: AUiEdit_CheckInt_Proc = nil;
  AUiEdit_New: AUiEdit_New_Proc = nil;
  AUiEdit_NewEx: AUiEdit_NewEx_Proc = nil;
  {$ifdef ADepr}
  UI_Edit_CheckDate: AUI_Edit_CheckDate = nil;
  UI_Edit_CheckFloat: AUI_Edit_CheckFloat = nil;
  UI_Edit_CheckInt: AUI_Edit_CheckInt = nil;
  UI_Edit_New: AUI_Edit_New = nil;
  UI_Edit_NewA: AUI_Edit_New02_Proc = nil;
  {$endif}
var
  AUiGrid_Clear: AUiGrid_Clear_Proc = nil;
  AUiGrid_Clear2: AUiGrid_Clear2_Proc = nil;
  AUiGrid_DeleteRow: AUiGrid_DeleteRow_Proc = nil;
  AUiGrid_DeleteRow2: AUiGrid_DeleteRow2_Proc = nil;
  AUiGrid_FindInt: AUiGrid_FindInt_Proc = nil;
  AUiGrid_New: AUiGrid_New_Proc = nil;
  AUiGrid_RestoreColProps: AUiGrid_RestoreColProps04_Proc = nil;
  AUiGrid_RestoreColPropsA: AUiGrid_RestoreColPropsA_Proc = nil;
  AUiGrid_RowDown: AUiGrid_RowDown_Proc = nil;
  AUiGrid_RowUp: AUiGrid_RowUp_Proc = nil;
  AUiGrid_SaveColProps: AUiGrid_SaveColProps04_Proc = nil;
  AUiGrid_SaveColPropsA: AUiGrid_SaveColPropsA_Proc = nil;
  AUiGrid_SetColumnWidth: AUiGrid_SetColumnWidth04_Proc = nil;
  AUiGrid_SetColumnWidth2: AUiGrid_SetColumnWidth2_Proc = nil;
  AUiGrid_SetDataSource: AUiGrid_SetDataSource04_Proc = nil;
  AUiGrid_SetRowCount: AUiGrid_SetRowCount_Proc = nil;
  {$ifdef ADepr}
  UI_Grid_AddColumn: AUiGrid_AddColumnWS_Proc = nil;
  UI_Grid_RestoreColProps: AUiGrid_RestoreColPropsWS_Proc = nil;
  UI_Grid_SaveColProps: AUiGrid_SaveColPropsWS02_Proc = nil;
  UI_Grid_SetColumnWidth: AUiGrid_SetColumnWidth02_Proc = nil;
  UI_Grid_SetColumnWidthA: AUiGrid_SetColumnWidthA_Proc = nil;
  UI_Grid_SetDataSource: AUiGrid_SetDataSource02_Proc = nil;
  {$endif}
var
  AUiImage_LoadFromFile: AUiImage_LoadFromFile_Proc = nil;
  AUiImage_LoadFromFileA: AUiImage_LoadFromFileA_Proc = nil;
  AUiImage_New: AUiImage_New_Proc = nil;
  {$ifdef ADepr}
  UI_Image_LoadFromFileWS: AUi_Image_LoadFromFileWS_Proc = nil;
  {$endif}
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
  AUiListBox_SetItem: AUiListBox_SetItem_Proc = nil;
  AUiListBox_SetItemHeight: AUiListBox_SetItemHeight_Proc = nil;
  AUiListBox_SetItemIndex: AUiListBox_SetItemIndex_Proc = nil;
  AUiListBox_SetOnDblClick: AUiListBox_SetOnDblClick_Proc = nil;
  {$ifdef ADepr}
  UI_ListBox_Add: AUi_ListBox_AddWS_Proc = nil;
  UI_ListBox_Clear: AUi_ListBox_Clear = nil;
  {$endif}
{$ifdef ADepr}
var
  {$IFDEF A02}
  UI_MainToolBar_Set: AUI_MainToolBar_Set = nil;
  {$ELSE}
  UI_Reserved1: AInteger = 0;
  {$ENDIF}
{$endif}
var
  AUiMainWindow_AddMenuItem: AUiMainWindow_AddMenuItem_Proc = nil;
  AUiMainWindow_AddMenuItemA: AUiMainWindow_AddMenuItemA_Proc = nil;
  AUiMainWindow_GetLeftContainer: AUiMainWindow_GetLeftContainer_Proc = nil; {MainWindow_GetLeftContainer}
  AUiMainWindow_GetMainContainer: AUiMainWindow_GetMainContainer_Proc = nil; {MainWindow_GetMainContainer}
  AUiMainWindow_GetRightContainer: AUiMainWindow_GetRightContainer_Proc = nil; {MainWindow_GetRightContainer}
  {$ifdef ADepr}
  MainWindow_AddMenuItem: AUi_MainWindow_AddMenuItem03WS_Proc = nil;
  MainWindow_AddMenuItem2: AUi_MainWindow_AddMenuItemWS2_Proc = nil;
  MainWindow_Set: AUI_MainWindow_Set = nil;
  MainWindow_SetA: AUI_MainWindow_SetA = nil;
  {$endif}
var
  AUiMenu_AddItem0: AUiMenu_AddItem0_Proc = nil;
  AUiMenu_AddItem1: AUiMenu_AddItem1_Proc = nil;
  AUiMenu_AddItem2: AUiMenu_AddItem2_Proc = nil;
  AUiMenu_AddItem3: AUi_Menu_AddItem3_Proc = nil; {Menu_AddItem3}
  AUiMenu_Clear: AUiMenu_Clear_Proc = nil;
  AUiMenu_FindItemByName: AUiMenu_FindItemByName_Proc = nil;
  AUiMenu_GetItems: AUiMenu_GetItems_Proc = nil; {Menu_GetItems}
  AUiMenu_New: AUiMenu_New_Proc = nil; {Menu_New}
  AUiMenu_SetChecked: AUiMenu_SetChecked_Proc = nil;
  {$ifdef ADepr}
  Menu_AddItem2WS: AUi_Menu_AddItem2WS03_Proc = nil;
  Menu_AddItem2WS02: AUi_Menu_AddItem2WS02_Proc = nil;
  //UI_MenuItem_Add: AUI_MenuItem_Add = nil;
  //UI_MenuItem_Add2: AUI_MenuItem_Add2 = nil;
  UI_MenuItem_FindByName: AUI_MenuItem_FindByName = nil;
  {$endif}
var
  AUiPageControl_AddPage: AUiPageControl_AddPage_Proc = nil;
  AUiPageControl_AddPageA: AUiPageControl_AddPageA_Proc = nil;
  AUiPageControl_New: AUiPageControl_New_Proc = nil;
  {$ifdef ADepr}
  AUiPageControl_AddPageWS: AUi_PageControl_AddPageWS_Proc = nil;
  {$endif}
var
  AUiProgressBar_New: AUiProgressBar_New_Proc = nil;
  AUiProgressBar_StepIt: AUiProgressBar_StepIt_Proc = nil;
var
  AUiPropertyBox_Add: AUiPropertyBox_Add_Proc = nil;
  AUiPropertyBox_Add2: AUiPropertyBox_Add2_Proc = nil;
  AUiPropertyBox_Item_GetValue: AUiPropertyBox_Item_GetValue_Proc = nil;
  AUiPropertyBox_Item_SetValue: AUiPropertyBox_Item_SetValue_Proc = nil;
  AUiPropertyBox_New: AUiPropertyBox_New_Proc = nil; {UI_PropertyBox_New}
  {$ifdef ADepr}
  UI_PropertyBox_Add: AUI_PropertyBox_Add = nil;
  UI_PropertyBox_AddA: AUI_PropertyBox_AddA = nil;
  UI_PropertyBox_Item_GetValue: AUI_PropertyBox_Item_GetValue = nil;
  UI_PropertyBox_Item_SetValue: AUI_PropertyBox_Item_SetValue = nil;
  {$endif}
var
  AUiReport_New: AUiReport_New_Proc = nil; {UI_Report_New}
  AUiReport_SetText: AUiReport_SetText_Proc = nil;
  {$ifdef ADepr}
  UI_Report_SetText: AUI_Report_SetText = nil;
  {$endif}
var
  AUiReportWin_New: AUiReportWin_New_Proc = nil; {UI_ReportWin_New}
  AUiReportWin_New2: AUiReportWin_New2_Proc = nil;
  AUiReportWin_ShowReport: AUiReportWin_ShowReport_Proc = nil;
  {$ifdef ADepr}
  UI_ReportWin_NewA: AUi_ReportWin_NewWS_Proc = nil;
  {$endif}
var
  AUiSpinButton_New: AUiSpinButton_New_Proc = nil;
var
  AUiSpinEdit_New: AUiSpinEdit_New_Proc = nil;
  AUiSpinEdit_NewEx: AUiSpinEdit_NewEx_Proc = nil;
var
  AUiSplitter_New: AUiSplitter_New_Proc = nil;
var
  AUiTextView_AddLine: AUiTextView_AddLine04_Proc = nil;
  AUiTextView_New: AUiTextView_New_Proc = nil; {UI_TextView_New}
  AUiTextView_SetFont: AUiTextView_SetFont04_Proc = nil;
  AUiTextView_SetReadOnly: AUiTextView_SetReadOnly04_Proc = nil;
  AUiTextView_SetScrollBars: AUiTextView_SetScrollBars04_Proc = nil;
  AUiTextView_SetWordWrap: AUiTextView_SetWordWrap04_Proc = nil;
  {$ifdef ADepr}
  UI_TextView_AddLine: AUiTextView_AddLineWS_Proc = nil;
  UI_TextView_SetFont: AUiTextView_SetFont02_Proc = nil;
  UI_TextView_SetReadOnly: AUiTextView_SetReadOnly02_Proc = nil;
  UI_TextView_SetScrollBars: AUiTextView_SetScrollBars02_Proc = nil;
  UI_TextView_SetWordWrap: AUiTextView_SetWordWrap02_Proc = nil;
  {$endif}
var
  AUiToolBar_AddButton: AUiToolBar_AddButton_Proc = nil; {AUi_ToolBar_AddButton}
  AUiToolBar_AddButton1: AUiToolBar_AddButton1_Proc = nil;
  AUiToolBar_New: AUiToolBar_New_Proc = nil; {UI_ToolBar_New}
  {$ifdef ADepr}
  UI_ToolBar_AddButton: AUi_ToolBar_AddButton02_Proc = nil;
  {$endif}
var
  AUiToolMenu_AddNewItem: AUiToolMenu_AddNewItem_Proc = nil;
  AUiToolMenu_AddNewSubMenu: AUiToolMenu_AddNewSubMenu_Proc = nil;
  AUiToolMenu_GetSubMenu: AUiToolMenu_GetSubMenu_Proc = nil;
  AUiToolMenu_New: AUiToolMenu_New_Proc = nil;
var
  AUiTrayIcon_Free: AUiTrayIcon_Free_Proc = nil;
  AUiTrayIcon_GetHint: AUiTrayIcon_GetHint_Proc = nil;
  AUiTrayIcon_GetMenuItems: AUiTrayIcon_GetMenuItems_Proc = nil; {UI_TrayIcon_GetMenuItems}
  AUiTrayIcon_GetPopupMenu: AUiTrayIcon_GetPopupMenu_Proc = nil;
  AUiTrayIcon_SetHint: AUiTrayIcon_SetHint_Proc = nil;
  AUiTrayIcon_SetOnLeftClick: AUiTrayIcon_SetOnLeftClick_Proc = nil;
  AUiTrayIcon_SetOnRightClick: AUiTrayIcon_SetOnRightClick_Proc = nil;
  AUiTrayIcon_SetPopupMenu: AUiTrayIcon_SetPopupMenu_Proc = nil;
var
  AUiTreeView_AddItem: AUiTreeView_AddItem_Proc = nil;
  AUiTreeView_New: AUiTreeView_New_Proc = nil;
  {$ifdef ADepr}
  UI_TreeView_AddItem: AUi_TreeView_AddItem = nil;
  {$endif}

var
  AUiWaitWin_New: AUiWaitWin_New_Proc = nil;
  AUiWaitWin_SetMaxPosition: AUiWaitWin_SetMaxPosition_Proc = nil;
  AUiWaitWin_SetPosition: AUiWaitWin_SetPosition_Proc = nil;
  AUiWaitWin_SetText: AUiWaitWin_SetText_Proc = nil;
  AUiWaitWin_StepBy: AUiWaitWin_StepBy_Proc = nil; {UI_WaitWin_StepBy}
  {$ifdef ADepr}
  UI_WaitWin_New: AUi_WaitWin_NewWS_Proc = nil;
  {$endif}

var
  AUiWindow_Add: AUiWindow_Add_Proc = nil;
  AUiWindow_Free: AUiWindow_Free_Proc = nil;
  AUiWindow_FreeAndNil: AUiWindow_FreeAndNil_Proc = nil;
  AUiWindow_GetMenu: AUiWindow_GetMenu_Proc = nil;
  AUiWindow_New: AUiWindow_New_Proc = nil;
  AUiWindow_SetBorderStyle: AUiWindow_SetBorderStyle03_Proc = nil;
  AUiWindow_SetFormStyle: AUiWindow_SetFormStyle04_Proc = nil;
  AUiWindow_SetPosition: AUiWindow_SetPosition04_Proc = nil;
  AUiWindow_SetState: AUiWindow_SetState_Proc = nil;
  AUiWindow_ShowModal: AUiWindow_ShowModal_Proc = nil;
  // --- WindowSettings ---
  AUiWindow_LoadConfig: AUiWindow_LoadConfig_04_Proc = nil;
  AUiWindow_LoadConfig2: AUiWindow_LoadConfig2_04_Proc = nil;
  AUiWindow_SaveConfig: AUiWindow_SaveConfig_04_Proc = nil;
  AUiWindow_SaveConfig2: AUiWindow_SaveConfig2_04_Proc = nil;

  {$ifdef ADepr}
  UI_Window_Free: AUiWindow_Free02_Proc = nil;
  UI_Window_GetMenu: AUiWindow_GetMenu_Proc = nil;
  UI_Window_LoadConfig: AUiWindow_LoadConfig_02_Proc = nil;
  UI_Window_LoadConfig2: AUiWindow_LoadConfig2_WS_Proc = nil;
  UI_Window_New: AUiWindow_New_Proc = nil;
  UI_Window_SaveConfig: AUiWindow_SaveConfig_02_Proc = nil;
  UI_Window_SaveConfig2: AUiWindow_SaveConfig2_WS_Proc = nil;
  UI_Window_SetBorderStyle: AUiWindow_SetBorderStyle02_Proc = nil;
  UI_Window_SetFormStyle: AUiWindow_SetFormStyle02_Proc = nil;
  UI_Window_SetPosition: AUiWindow_SetPosition02_Proc = nil;
  {$endif}

implementation

end.
