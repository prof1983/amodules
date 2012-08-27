{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 27.08.2012
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
  UI_Image_LoadFromFile: AUI_Image_LoadFromFile;
var
  UI_Label_New: AUI_Label_New;
var
  UI_ListBox_Add: AUI_ListBox_Add;
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
  UI_MainTrayIcon: AUI_MainTrayIcon;

var
  MainWindow: AUI_MainWindow;
  MainWindow_AddMenuItem: A_UI_MainWindow_AddMenuItemWS_Proc;
  MainWindow_AddMenuItem2: A_UI_MainWindow_AddMenuItemWS2_Proc;
  MainWindow_GetLeftContainer: AUI_MainWindow_GetLeftContainer;
  MainWindow_GetMainContainer: AUI_MainWindow_GetMainContainer;
  MainWindow_GetRightContainer: AUI_MainWindow_GetRightContainer;
  MainWindow_Set: AUI_MainWindow_Set;
  MainWindow_SetA: AUI_MainWindow_SetA;

var
  Menu_AddItem2WS: A_UI_Menu_AddItem2WS03_Proc;                         // 142
  Menu_AddItem2WS02: A_UI_Menu_AddItem2WS02_Proc;                       // 82
  Menu_AddItem3: A_UI_Menu_AddItem3_Proc;                               // 83
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
  UI_ProgressBar_New: AUI_ProgressBar_New;
  UI_ProgressBar_StepIt: AUI_ProgressBar_StepIt;
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
  UI_Window_SetBorderStyle: AUI_Window_SetBorderStyle;
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
  UI_Control_SetFont1: AUI_Control_SetFontW1;
  UI_Control_SetFont2: AUI_Control_SetFontW2;
  UI_Dialog_About_New: AUI_Dialog_About_New;
  //UI_Dialog_AddButton: AUI_Dialog_AddButton;

procedure UI_SetProcs(const UIProcs: AUIProcs_Type);
function UI_SetProcsP(UIProcs: PUIProcs): Boolean;

implementation

procedure UI_SetProcs(const UIProcs: AUIProcs_Type);
begin
  UI_IsShowApp := UI.IsShowApp;
  UI_InitMainTrayIcon := UI.InitMainTrayIcon;
  UI_InitMenus := UI.InitMenus02;
  UI_ProcessMessages := UI.ProcessMessages02;
  UI_IsShowApp_Set := UI.IsShowApp_Set;
  UI_ShowHelp := UI.ShowHelp02;
  UI_Shutdown := UI.Shutdown02;

  UI_Box_New := UI.Box_New;
  UI_Button_New := UI.Button_New;

  UI_Control_Free := UI.Control_Free;
  UI_Control_FreeAndNil := UI.Control_FreeAndNil;
  UI_Control_GetEnabled := UI.Control_GetEnabled;
  UI_Control_GetHeight := UI.Control_GetHeight;
  UI_Control_GetHint := UI.Control_GetHintW;
  UI_Control_GetName := UI.Control_GetNameW;
  UI_Control_GetText := UI.Control_GetTextW;
  UI_Control_GetVisible := UI.Control_GetVisible;
  UI_Control_GetWidth := UI.Control_GetWidth;
  UI_Control_SetAlign := UI.Control_SetAlign;
  UI_Control_SetClientSize := UI.Control_SetClientSize;
  UI_Control_SetColor := UI.Control_SetColor;
  UI_Control_SetEnabled := UI.Control_SetEnabled;
  UI_Control_SetFocus := UI.Control_SetFocus;
  UI_Control_SetHint := UI.Control_SetHintW;
  UI_Control_SetName := UI.Control_SetNameW;
  //UI_Control_SetOnChange := UI.Control_SetOnChange;
  //UI_Control_SetOnClick := UI.Control_SetOnClick;
  UI_Control_SetPosition := UI.Control_SetPosition;
  UI_Control_SetSize := UI.Control_SetSize;
  UI_Control_SetText := UI.Control_SetTextWS;
  UI_Control_SetVisible := UI.Control_SetVisible;
  UI_Control_SetWidth := UI.Control_SetWidth;

  //UI_DataSource_New := UI.DataSource_New;
  //UI_DataSource_SetOnDataChange := UI.DataSource_SetOnDataChange;

  UI_Dialog_About := UI.Dialog_About;
  UI_Dialog_Calendar := UI.Dialog_Calendar;
  UI_Dialog_Color := UI.Dialog_Color;
  UI_Dialog_DateFilter := UI.Dialog_DateFilter;
  UI_Dialog_Error := UI.Dialog_Error;
  UI_Dialog_Font := UI.Dialog_Font;
  UI_Dialog_GetWindow := UI.Dialog_GetWindow;
  UI_Dialog_InputBox := UI.Dialog_InputBox;
  UI_Dialog_InputBox2 := UI.Dialog_InputBox2;
  UI_Dialog_InputBoxA := UI.Dialog_InputBoxA;
  UI_Dialog_Login := UI.Dialog_Login;
  UI_Dialog_Message := UI.Dialog_Message;
  UI_Dialog_New := UI.Dialog_New;
  UI_Dialog_OpenFile := UI.Dialog_OpenFile;
  UI_Dialog_OpenFileA := UI.Dialog_OpenFileA;
  UI_Dialog_SaveFile := UI.Dialog_SaveFile;
  UI_Dialog_SaveFileA := UI.Dialog_SaveFileA;

  UI_Edit_CheckDate := UI.Edit_CheckDate;
  UI_Edit_CheckFloat := UI.Edit_CheckFloat;
  UI_Edit_CheckInt := UI.Edit_CheckInt;
  UI_Edit_New := UI.Edit_New;
  //UI_Edit_NewA := UI.Edit_NewA;

  UI_Grid_AddColumn := UI.Grid_AddColumn;
  UI_Grid_New := UI.Grid_New;
  UI_Grid_RestoreColProps := UI.Grid_RestoreColProps;
  UI_Grid_SaveColProps := UI.Grid_SaveColProps;
  UI_Grid_SetColumnWidth := UI.Grid_SetColumnWidth;
  UI_Grid_SetColumnWidthA := UI.Grid_SetColumnWidthA;
  UI_Grid_SetDataSource := UI.Grid_SetDataSource;

  UI_Image_New := UI.Image_New;
  UI_Image_LoadFromFile := UI.Image_LoadFromFile;

  UI_Label_New := UI.Label_New;
  {$IFDEF A02}
  UI_Label_SetFont := UI.Label_SetFont;
  {$ELSE}
  UI_Reserved0 := UI.Reserved66;
    (*{$IFDEF A02}
    //UI_Control_SetFont1 := UI.Label_SetFont;
    //UI_Control_SetFont2 := UI.Control_SetFont2;
    UI_Label_SetFont := UI.Label_SetFont;
    {$ELSE}
    Label_SetFont := UI.Label_SetFont;
    {$ENDIF}*)
  {$ENDIF}

  UI_ListBox_Add := UI.ListBox_Add;
  UI_ListBox_Clear := UI.ListBox_Clear;
  UI_ListBox_New := UI.ListBox_New;

  UI_MainTrayIcon := UI.MainTrayIcon;

  UI_MainToolBar := UI.MainToolBar;
  {$IFDEF A02}
  UI_MainToolBar_Set := UI.MainToolBar_Set;
  {$ELSE}
  UI_Reserved1 := UI.Reserved71;
  {$ENDIF}

  MainWindow := UIProcs.MainWindow;
  MainWindow_AddMenuItem := UIProcs.MainWindow_AddMenuItem;
  MainWindow_AddMenuItem2 := UIProcs.MainWindow_AddMenuItem2;
  MainWindow_GetLeftContainer := UIProcs.MainWindow_GetLeftContainer;
  MainWindow_GetMainContainer := UIProcs.MainWindow_GetMainContainer;
  MainWindow_GetRightContainer := UIProcs.MainWindow_GetRightContainer;
  MainWindow_Set := UIProcs.MainWindow_Set;

  Menu_AddItem2WS := UIProcs.Menu_AddItem2WS;                           // 142
  Menu_AddItem2WS02 := UIProcs.Menu_AddItem2WS02;                       // 82
  Menu_AddItem3 := UIProcs.Menu_AddItem3;                               // 83
  Menu_GetItems := UIProcs.Menu_GetItems;                               // 80
  Menu_New := UIProcs.Menu_New;                                         // 81

  {
  UI_MenuItem_Add := UI.MenuItem_Add;
  UI_MenuItem_Add2 := UI.MenuItem_Add2;
  UI_MenuItem_FindByName := UI.MenuItem_FindByName;
  UI_PageControl_AddPage := UI.PageControl_AddPage;
  UI_PageControl_New := UI.PageControl_New;
  }

  UI_ProgressBar_New := UI.ProgressBar_New;
  UI_ProgressBar_StepIt := UI.ProgressBar_StepIt;

  UI_PropertyBox_Add := UI.PropertyBox_Add;
  UI_PropertyBox_AddA := UI.PropertyBox_AddA;
  UI_PropertyBox_Item_GetValue := UI.PropertyBox_Item_GetValue;
  UI_PropertyBox_Item_SetValue := UI.PropertyBox_Item_SetValue;
  UI_PropertyBox_New := UI.PropertyBox_New;

  UI_Splitter_New := UI.Splitter_New;

  UI_TextView_AddLine := UI.TextView_AddLine;
  UI_TextView_New := UI.TextView_New;
  UI_TextView_SetFont := UI.TextView_SetFont;
  UI_TextView_SetReadOnly := UI.TextView_SetReadOnly;
  UI_TextView_SetScrollBars := UI.TextView_SetScrollBars;
  UI_TextView_SetWordWrap := UI.TextView_SetWordWrap;

  //UI_ToolBar_AddButton := UI.ToolBar_AddButton;
  //UI_ToolBar_New := UI.ToolBar_New;

  UI_TrayIcon_GetMenuItems := UI.TrayIcon_GetMenuItems;

  //UI_TreeView_AddItem := UI.TreeView_AddItem;
  UI_TreeView_New := UI.TreeView_New;

  UI_Window_Free := UI.Window_Free;
  UI_Window_GetMenu := UI.Window_GetMenu;
  UI_Window_LoadConfig := UI.Window_LoadConfig;
  UI_Window_LoadConfig2 := UI.Window_LoadConfig2;
  UI_Window_New := UI.Window_New;
  UI_Window_SaveConfig := UI.Window_SaveConfig;
  UI_Window_SaveConfig2 := UI.Window_SaveConfig2;
  UI_Window_SetBorderStyle := UI.Window_SetBorderStyle;
  UI_Window_SetFormStyle := UI.Window_SetFormStyle;
  UI_Window_SetPosition := UI.Window_SetPosition;
  UI_Window_ShowModal := UI.Window_ShowModal;

  UI_ReportWin_New := UI.ReportWin_New;

  //UI_WaitWin_New := UI.WaitWin_New;
  UI_WaitWin_StepBy := UI.WaitWin_StepBy;

  //UI_OnMainFormCreate_Set := UI.OnMainFormCreate_Set;
  UI_MainWindow_SetA := UI.MainWindow_SetA;

  {$IFDEF A01}
  UI_Reserved123 := UI.Reserved123;
  UI_Reserved124 := UI.Reserved124;
  UI_Reserved125 := UI.Reserved125;
  UI_Reserved126 := UI.Reserved126;
  UI_Reserved127 := UI.Reserved127;
  {$ELSE}
  //UI_ReportWin_NewA := UI.ReportWin_NewA;
  UI_Calendar_GetDate := UI.Calendar_GetDate;
  UI_Calendar_New := UI.Calendar_New;
  UI_Calendar_SetMonth := UI.Calendar_SetMonth;
  UI_Report_New := UI.Report_New;
  UI_Report_SetText := UI.Report_SetText;
  {$ENDIF}

  {$IFDEF A01}
    UI_Reserved127 := UI.Reserved127;
    UI_Reserved128 := UI.Reserved128;
    UI_Reserved129 := UI.Reserved129;
    UI_Reserved130 := UI.Reserved130;
    UI_Reserved131 := UI.Reserved131;
    UI_Reserved132 := UI.Reserved132;
    UI_Reserved136 := UI.Reserved136;
    UI_Reserved137 := UI.Reserved137;
    UI_Reserved138 := UI.Reserved138;
    UI_Reserved139 := UI.Reserved139;
  {$ELSE}
    {$IFDEF A02}
    UI_Reserved128 := UI.Reserved128;
    UI_Reserved129 := UI.Reserved129;
    UI_Reserved130 := UI.Reserved130;
    UI_Reserved131 := UI.Reserved131;
    UI_Reserved132 := UI.Reserved132;
    UI_Reserved136 := UI.Reserved136;
    UI_Reserved137 := UI.Reserved137;
    UI_Reserved138 := UI.Reserved138;
    UI_Reserved139 := UI.Reserved139;
    {$ELSE}
    UI_Control_SetFont1 := UI.Control_SetFont1;
    UI_Control_SetFont2 := UI.Control_SetFont2;
    UI_Dialog_About_New := UI.Dialog_About_New;
    //UI_Dialog_AddButton := UI.Dialog_AddButton;
    //UI_InitMenus := UI.InitMenus;
    {$ENDIF A02}
  {$ENDIF A01}
end;

function UI_SetProcsP(UIProcs: PUIProcs): Boolean;
begin
  if not(Assigned(UIProcs)) then
  begin
    Result := False;
    Exit;
  end;
  UI_SetProcs(UIProcs^);
  Result := True;
end;

end.
