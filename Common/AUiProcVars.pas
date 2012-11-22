{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 22.11.2012
}
unit AUiProcVars;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ABaseTypes,
  AUiBase, AUiProcTypes;

// --- Procs var ---

var
  AUi_GetIsShowApp: AUi_GetIsShowApp_Proc = nil;
  AUi_Fin: AUi_Fin_Proc = nil;
  AUi_Init: AUi_Init_Proc = nil;
  AUi_InitMainTrayIcon: AUi_InitMainTrayIcon_Proc = nil;
  AUi_InitMenus: AUi_InitMenus_Proc = nil;
  AUi_OnDone_Connect: AUi_OnDone_Connect_Proc = nil;
  AUi_OnDone_Disconnect: AUi_OnDone_Disconnect03_Proc = nil;
  AUi_ProcessMessages: AUi_ProcessMessages_Proc = nil;
  AUi_SetIsShowApp: AUi_SetIsShowApp_Proc = nil;
  AUi_ShowHelp: AUi_ShowHelp_Proc = nil;
  AUi_ShowHelp2: AUi_ShowHelp2_Proc = nil;
  {$ifdef ADepr}
  AUi_InitMenus02: AUi_InitMenus02_Proc = nil;
  AUi_ProcessMessages02: AUi_ProcessMessages02_Proc = nil;
  AUi_SetOnMainFormCreate02: AUi_SetOnMainFormCreate02_Proc = nil;
  AUi_ShowHelp02: AUi_ShowHelp02_Proc = nil;
  AUi_ShowHelp2WS: AUi_ShowHelp2WS_Proc = nil;
  AUi_Shutdown02: AUi_Shutdown02_Proc = nil;
  {$endif}
var
  AUiBox_New: AUiBox_New_Proc = nil;
  AUi_Button_New: AUiButton_New_Proc = nil;
var
  AUiCalendar_GetDate: AUiCalendar_GetDate_Proc = nil;
  AUiCalendar_New: AUiCalendar_New_Proc = nil;
  AUiCalendar_SetMonth: AUiCalendar_SetMonth04_Proc = nil;
  {$ifdef ADepr}
  UI_Calendar_SetMonth: AUiCalendar_SetMonth02_Proc = nil;
  {$endif}
var
  AUiControl_Free: AUiControl_Free04_Proc = nil;
  AUiControl_FreeAndNil: AUiControl_FreeAndNil04_Proc = nil;
  AUiControl_GetEnabled: AUiControl_GetEnabled_Proc = nil;
  AUiControl_GetHeight: AUiControl_GetHeight_Proc = nil;
  AUiControl_GetText: AUiControl_GetText_Proc = nil;
  AUiControl_GetVisible: AUiControl_GetVisible_Proc = nil;
  AUiControl_GetWidth: AUiControl_GetWidth_Proc = nil;
  AUiControl_SetAlign: AUiControl_SetAlign04_Proc = nil;
  AUiControl_SetClientSize: AUiControl_SetClientSize04_Proc = nil;
  AUiControl_SetColor: AUiControl_SetColor04_Proc = nil;
  AUiControl_SetEnabled: AUiControl_SetEnabled04_Proc = nil;
  AUiControl_SetFocus: AUiControl_SetFocus_Proc = nil;
  AUiControl_SetFont1: AUiControl_SetFont1_Proc = nil;
  AUiControl_SetFont1A: AUiControl_SetFont1A_Proc = nil;
  AUiControl_SetOnChange: AUiControl_SetOnChange_Proc = nil;
  AUiControl_SetPosition: AUiControl_SetPosition04_Proc = nil;
  AUiControl_SetSize: AUiControl_SetSize04_Proc = nil;
  AUiControl_SetText: AUiControl_SetText04_Proc = nil;
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
  UI_Dialog_About: AUi_Dialog_About_Proc = nil;
  UI_Dialog_Calendar: AUi_Dialog_Calendar_Proc = nil;
  UI_Dialog_Color: AUi_Dialog_Color_Proc = nil;
  UI_Dialog_DateFilter: AUi_Dialog_DateFilter_Proc = nil;
  UI_Dialog_Error: AUi_Dialog_Error_Proc = nil;
  UI_Dialog_Font: AUi_Dialog_Font_Proc = nil;
  UI_Dialog_GetWindow: AUi_Dialog_GetWindow_Proc = nil;
  UI_Dialog_InputBox: AUi_Dialog_InputBox_Proc = nil;
  UI_Dialog_InputBox2: AUi_Dialog_InputBox2_Proc = nil;
  UI_Dialog_InputBoxA: AUi_Dialog_InputBoxA_Proc = nil;
  UI_Dialog_Login: AUi_Dialog_Login_Proc = nil;
  UI_Dialog_Message: AUi_Dialog_Message_Proc = nil;
  UI_Dialog_New: AUi_Dialog_New_Proc = nil;
  UI_Dialog_OpenFile: AUi_Dialog_OpenFile_Proc = nil;
  UI_Dialog_OpenFileA: AUi_Dialog_OpenFileA_Proc = nil;
  UI_Dialog_SaveFile: AUi_Dialog_SaveFile_Proc = nil;
  UI_Dialog_SaveFileA: AUi_Dialog_SaveFileA_Proc = nil;
  {$ifdef ADepr}
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
  UI_Edit_CheckDate: AUI_Edit_CheckDate = nil;
  UI_Edit_CheckFloat: AUI_Edit_CheckFloat = nil;
  UI_Edit_CheckInt: AUI_Edit_CheckInt = nil;
  UI_Edit_New: AUI_Edit_New = nil;
  {$ifdef ADepr}
  UI_Edit_NewA: AUI_Edit_New02_Proc = nil;
  {$endif}
var
  AUiGrid_Clear: AUiGrid_Clear_Proc = nil;
  AUiGrid_ClearA: AUiGrid_ClearA_Proc = nil;
  AUiGrid_DeleteRow: AUiGrid_DeleteRow_Proc = nil;
  AUiGrid_DeleteRow2: AUiGrid_DeleteRow2_Proc = nil;
  AUiGrid_FindInt: AUiGrid_FindInt_Proc = nil;
  AUiGrid_New: AUiGrid_New_Proc = nil;
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
var
  AUiListBox_Add: AUiListBox_Add_Proc = nil;
  AUiListBox_Clear: AUiListBox_Clear_Proc = nil;
  AUiListBox_New: AUiListBox_New_Proc = nil;
  {$ifdef ADepr}
  UI_ListBox_Add: AUi_ListBox_AddWS_Proc = nil;
  UI_ListBox_Clear: AUi_ListBox_Clear = nil;
  {$endif}
var
  UI_MainToolBar: AUI_MainToolBar = nil;
  {$IFDEF A02}
  UI_MainToolBar_Set: AUI_MainToolBar_Set = nil;
  {$ELSE}
  UI_Reserved1: AInteger = 0;
  {$ENDIF}
var
  UI_MainTrayIcon: AUi_MainTrayIcon_Proc = nil;

var
  AUiMainWindow_AddMenuItem: AUiMainWindow_AddMenuItem_Proc = nil;
  AUiMainWindow_AddMenuItemA: AUiMainWindow_AddMenuItemA_Proc = nil;
  MainWindow: AUI_MainWindow = nil;
  MainWindow_AddMenuItem: AUi_MainWindow_AddMenuItem03WS_Proc = nil;
  MainWindow_AddMenuItem2: AUi_MainWindow_AddMenuItemWS2_Proc = nil;
  MainWindow_GetLeftContainer: AUI_MainWindow_GetLeftContainer = nil;
  MainWindow_GetMainContainer: AUI_MainWindow_GetMainContainer = nil;
  MainWindow_GetRightContainer: AUI_MainWindow_GetRightContainer = nil;
  MainWindow_Set: AUI_MainWindow_Set = nil;
  MainWindow_SetA: AUI_MainWindow_SetA = nil;

var
  AUiMenu_AddItem0: AUiMenu_AddItem0_Proc = nil;
  AUiMenu_AddItem1: AUiMenu_AddItem1_Proc = nil;
  AUiMenu_AddItem2: AUiMenu_AddItem2_Proc = nil;
  Menu_AddItem2WS: AUi_Menu_AddItem2WS03_Proc = nil;
  Menu_AddItem2WS02: AUi_Menu_AddItem2WS02_Proc = nil;
  Menu_AddItem3: AUi_Menu_AddItem3_Proc = nil;
  Menu_GetItems: AUI_Menu_GetItems = nil;
  Menu_New: AUI_Menu_New = nil;
  {$ifdef ADepr}
  //UI_MenuItem_Add: AUI_MenuItem_Add = nil;
  //UI_MenuItem_Add2: AUI_MenuItem_Add2 = nil;
  UI_MenuItem_FindByName: AUI_MenuItem_FindByName = nil;
  {$endif}
var
  AUiPageControl_AddPage: AUiPageControl_AddPage_Proc = nil;
  AUiPageControl_New: AUiPageControl_New_Proc = nil;
  {$ifdef ADepr}
  AUiPageControl_AddPageWS: AUi_PageControl_AddPageWS_Proc = nil;
  {$endif}
var
  AUiProgressBar_New: AUiProgressBar_New_Proc = nil;
  AUiProgressBar_StepIt: AUiProgressBar_StepIt_Proc = nil;
var
  UI_PropertyBox_Add: AUI_PropertyBox_Add = nil;
  UI_PropertyBox_AddA: AUI_PropertyBox_AddA = nil;
  UI_PropertyBox_Item_GetValue: AUI_PropertyBox_Item_GetValue = nil;
  UI_PropertyBox_Item_SetValue: AUI_PropertyBox_Item_SetValue = nil;
  UI_PropertyBox_New: AUI_PropertyBox_New = nil;
var
  UI_ReportWin_New: AUI_ReportWin_New = nil;
  {$ifdef ADepr}
  UI_ReportWin_NewA: AUi_ReportWin_NewWS_Proc = nil;
  {$endif}
var
  AUiSplitter_New: AUiSplitter_New_Proc = nil;
var
  AUiTextView_AddLine: AUiTextView_AddLine04_Proc = nil;
  UI_TextView_AddLine: AUiTextView_AddLineWS_Proc = nil;
  UI_TextView_New: AUiTextView_New_Proc = nil;
  UI_TextView_SetFont: AUiTextView_SetFont02_Proc = nil;
  UI_TextView_SetReadOnly: AUiTextView_SetReadOnly02_Proc = nil;
  UI_TextView_SetScrollBars: AUiTextView_SetScrollBars02_Proc = nil;
  UI_TextView_SetWordWrap: AUiTextView_SetWordWrap02_Proc = nil;
var
  AUi_ToolBar_AddButton: AUi_ToolBar_AddButton03_Proc = nil;
  {$ifdef ADepr}
  UI_ToolBar_AddButton: AUi_ToolBar_AddButton02_Proc = nil;
  UI_ToolBar_New: AUi_ToolBar_New_Proc = nil;
  {$endif}
var
  UI_TrayIcon_GetMenuItems: AUI_TrayIcon_GetMenuItems = nil;
var
  AUiTreeView_AddItem: AUiTreeView_AddItem_Proc = nil;
  AUiTreeView_New: AUiTreeView_New_Proc = nil;
  {$ifdef ADepr}
  UI_TreeView_AddItem: AUi_TreeView_AddItem = nil;
  {$endif}
var
  AUiWindow_Free: AUiWindow_Free_Proc = nil;
  AUiWindow_New: AUiWindow_New_Proc = nil;
  AUiWindow_SetBorderStyle: AUi_Window_SetBorderStyle03 = nil;
  AUiWindow_ShowModal: AUiWindow_ShowModal_Proc = nil;
  {$ifdef ADepr}
  UI_Window_Free: AUI_Window_Free = nil;
  {$endif}
  UI_Window_GetMenu: AUI_Window_GetMenu = nil;
  UI_Window_LoadConfig: AUI_Window_LoadConfig = nil;
  UI_Window_LoadConfig2: AUI_Window_LoadConfig2 = nil;
  UI_Window_New: AUI_Window_New = nil;
  UI_Window_SaveConfig: AUI_Window_SaveConfig = nil;
  UI_Window_SaveConfig2: AUI_Window_SaveConfig2 = nil;
  UI_Window_SetBorderStyle: AUi_Window_SetBorderStyle02 = nil;
  UI_Window_SetFormStyle: AUI_Window_SetFormStyle = nil;
  UI_Window_SetPosition: AUI_Window_SetPosition = nil;
var
  UI_WaitWin_New: AUi_WaitWin_NewWS_Proc = nil;
  UI_WaitWin_StepBy: AUI_WaitWin_StepBy = nil;
var
  UI_Report_New: AUI_Report_New = nil;
  UI_Report_SetText: AUI_Report_SetText = nil;
var
  UI_Dialog_About_New: AUi_Dialog_About_New_Proc = nil;
  UI_Dialog_AddButton: AUI_Dialog_AddButton02 = nil;

implementation

end.
