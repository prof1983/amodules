{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 24.09.2012
}
unit AUiProcVars;

interface

uses
  ABase, ABaseTypes,
  AUiBase, AUiProcTypes;

// --- Procs var ---

var
  AUi_GetIsShowApp: AUi_GetIsShowApp_Proc;
  AUi_InitMainTrayIcon: AUi_InitMainTrayIcon_Proc;
  AUi_InitMenus02: AUi_InitMenus02_Proc;
  AUi_ProcessMessages02: AUi_ProcessMessages02_Proc;
  AUi_SetIsShowApp: AUi_SetIsShowApp_Proc;
  AUi_ShowHelp02: AUi_ShowHelp02_Proc;
  AUi_Shutdown02: AUi_Shutdown02_Proc;
var
  AUi_Box_New: AUiBox_New_Proc;
  AUi_Button_New: AUiButton_New_Proc;
var
  AUi_Control_Free: AUiControl_Free_Proc;
  AUi_Control_FreeAndNil: AUiControl_FreeAndNil_Proc;
  AUi_Control_GetEnabled: AUiControl_GetEnabled_Proc;
  AUi_Control_GetHeight: AUiControl_GetHeight_Proc;
  AUi_Control_GetHint: AUiControl_GetHintWS_Proc;
  AUi_Control_GetName: AUiControl_GetNameWS_Proc;
  AUi_Control_GetText: AUiControl_GetTextWS_Proc;
  AUi_Control_GetVisible: AUiControl_GetVisible_Proc;
  AUi_Control_GetWidth: AUiControl_GetWidth_Proc;
  AUi_Control_SetAlign: AUiControl_SetAlign_Proc;
  AUi_Control_SetClientSize: AUiControl_SetClientSize_Proc;
  AUi_Control_SetColor: AUiControl_SetColor_Proc;
  AUi_Control_SetEnabled: AUiControl_SetEnabled_Proc;
  AUi_Control_SetFocus: AUiControl_SetFocus_Proc;
  AUi_Control_SetHint: AUiControl_SetHintWS_Proc;
  AUi_Control_SetName: AUiControl_SetNameWS_Proc;
  AUi_Control_SetPosition: AUiControl_SetPosition_Proc;
  AUi_Control_SetSize: AUiControl_SetSize_Proc;
  {$ifdef ADepr}
  AUi_Control_SetText: AUiControl_SetTextWS_Proc;
  {$endif}
  AUi_Control_SetVisible: AUiControl_SetVisible_Proc;
  AUi_Control_SetWidth: AUiControl_SetWidth_Proc;
var
  UI_Dialog_About: AUi_Dialog_About_Proc;
  UI_Dialog_Calendar: AUi_Dialog_Calendar_Proc;
  UI_Dialog_Color: AUi_Dialog_Color_Proc;
  UI_Dialog_DateFilter: AUi_Dialog_DateFilter_Proc;
  UI_Dialog_Error: AUi_Dialog_Error_Proc;
  UI_Dialog_Font: AUi_Dialog_Font_Proc;
  UI_Dialog_GetWindow: AUi_Dialog_GetWindow_Proc;
  UI_Dialog_InputBox: AUi_Dialog_InputBox_Proc;
  UI_Dialog_InputBox2: AUi_Dialog_InputBox2_Proc;
  UI_Dialog_InputBoxA: AUi_Dialog_InputBoxA_Proc;
  UI_Dialog_Login: AUi_Dialog_Login_Proc;
  UI_Dialog_Message: AUi_Dialog_Message_Proc;
  UI_Dialog_New: AUi_Dialog_New_Proc;
  UI_Dialog_OpenFile: AUi_Dialog_OpenFile_Proc;
  UI_Dialog_OpenFileA: AUi_Dialog_OpenFileA_Proc;
  UI_Dialog_SaveFile: AUi_Dialog_SaveFile_Proc;
  UI_Dialog_SaveFileA: AUi_Dialog_SaveFileA_Proc;
var
  UI_Edit_CheckDate: AUI_Edit_CheckDate;
  UI_Edit_CheckFloat: AUI_Edit_CheckFloat;
  UI_Edit_CheckInt: AUI_Edit_CheckInt;
  UI_Edit_New: AUI_Edit_New;
  //UI_Edit_NewA: AUI_Edit_NewA;
var
  UI_Grid_AddColumn: AUI_Grid_AddColumn;
  UI_Grid_New: AUI_Grid_New;
  UI_Grid_RestoreColProps: AUi_Grid_RestoreColPropsWS_Proc;
  //UI_Grid_SaveColProps: A_UI_Grid_SaveColProps;
  UI_Grid_SetColumnWidth: AUI_Grid_SetColumnWidth;
  UI_Grid_SetColumnWidthA: AUI_Grid_SetColumnWidthA;
  UI_Grid_SetDataSource: AUI_Grid_SetDataSource;
var
  UI_Image_New: AUI_Image_New;
  UI_Image_LoadFromFile: AUi_Image_LoadFromFile_Proc;
var
  UI_Label_New: AUI_Label_New;
var
  UI_ListBox_Add: AUi_ListBox_Add_Proc;
  UI_ListBox_Clear: AUI_ListBox_Clear;
  UI_ListBox_New: AUI_ListBox_New;
var
  UI_MainToolBar: AUI_MainToolBar;
  {$IFDEF A02}
  UI_MainToolBar_Set: AUI_MainToolBar_Set;
  {$ELSE}
  UI_Reserved1: AInteger;
  {$ENDIF}
var
  UI_MainTrayIcon: AUi_MainTrayIcon_Proc;

var
  MainWindow: AUI_MainWindow;
  MainWindow_AddMenuItem: AUi_MainWindow_AddMenuItemWS_Proc;
  MainWindow_AddMenuItem2: AUi_MainWindow_AddMenuItemWS2_Proc;
  MainWindow_GetLeftContainer: AUI_MainWindow_GetLeftContainer;
  MainWindow_GetMainContainer: AUI_MainWindow_GetMainContainer;
  MainWindow_GetRightContainer: AUI_MainWindow_GetRightContainer;
  MainWindow_Set: AUI_MainWindow_Set;
  MainWindow_SetA: AUI_MainWindow_SetA;

var
  Menu_AddItem2WS: AUi_Menu_AddItem2WS03_Proc;
  Menu_AddItem2WS02: AUi_Menu_AddItem2WS02_Proc;
  Menu_AddItem3: AUi_Menu_AddItem3_Proc;
  Menu_GetItems: AUI_Menu_GetItems;                                     // 80
  Menu_New: AUI_Menu_New;                                               // 81

{
var
  UI_MenuItem_Add: AUI_MenuItem_Add;
  UI_MenuItem_Add2: AUI_MenuItem_Add2;
  UI_MenuItem_FindByName: AUI_MenuItem_FindByName;
var
  UI_PageControl_AddPage: AUI_PageControl_AddPage;
  UI_PageControl_New: AUI_PageControl_New;
}
var
  UI_ProgressBar_New: AUi_ProgressBar_New_Proc;
  UI_ProgressBar_StepIt: AUi_ProgressBar_StepIt_Proc;
var
  UI_PropertyBox_Add: AUI_PropertyBox_Add;
  UI_PropertyBox_AddA: AUI_PropertyBox_AddA;
  UI_PropertyBox_Item_GetValue: AUI_PropertyBox_Item_GetValue;
  UI_PropertyBox_Item_SetValue: AUI_PropertyBox_Item_SetValue;
  UI_PropertyBox_New: AUI_PropertyBox_New;
var
  UI_ReportWin_New: AUI_ReportWin_New;
var
  UI_Splitter_New: AUI_Splitter_New;
var 
  UI_TextView_AddLine: AUI_TextView_AddLine;
  UI_TextView_New: AUI_TextView_New;
  UI_TextView_SetFont: AUI_TextView_SetFont;
  UI_TextView_SetReadOnly: AUI_TextView_SetReadOnly;
  UI_TextView_SetScrollBars: AUI_TextView_SetScrollBars;
  UI_TextView_SetWordWrap: AUI_TextView_SetWordWrap;
var
  //UI_ToolBar_AddButton: AUI_ToolBar_AddButton;
  //UI_ToolBar_New: AUI_ToolBar_New;
//var
  UI_TrayIcon_GetMenuItems: AUI_TrayIcon_GetMenuItems;
var
  //UI_TreeView_AddItem: AUI_TreeView_AddItem;
  UI_TreeView_New: AUI_TreeView_New;
var
  UI_Window_Free: AUI_Window_Free;
  UI_Window_GetMenu: AUI_Window_GetMenu;
  UI_Window_LoadConfig: AUI_Window_LoadConfig;
  UI_Window_LoadConfig2: AUI_Window_LoadConfig2;
  UI_Window_New: AUI_Window_New;
  UI_Window_SaveConfig: AUI_Window_SaveConfig;
  UI_Window_SaveConfig2: AUI_Window_SaveConfig2;
  UI_Window_SetBorderStyle: AUi_Window_SetBorderStyle03;
  UI_Window_SetFormStyle: AUI_Window_SetFormStyle;
  UI_Window_SetPosition: AUI_Window_SetPosition;
  UI_Window_ShowModal: AUI_Window_ShowModal;
var
  //UI_WaitWin_New: AUI_WaitWin_New;
  UI_WaitWin_StepBy: AUI_WaitWin_StepBy;
var
  //UI_ReportWin_NewA: AUI_ReportWin_NewA;
  UI_Calendar_GetDate: AUI_Calendar_GetDate;
  UI_Calendar_New: AUI_Calendar_New;
  UI_Calendar_SetMonth: AUI_Calendar_SetMonth;
  UI_Report_New: AUI_Report_New;
  UI_Report_SetText: AUI_Report_SetText;
var
  {$ifdef ADepr}
  UI_Control_SetFont1: AUI_Control_SetFontW1;
  UI_Control_SetFont2: AUI_Control_SetFontW2;
  {$endif}
  UI_Dialog_About_New: AUi_Dialog_About_New_Proc;
  //UI_Dialog_AddButton: AUI_Dialog_AddButton;

implementation

end.
