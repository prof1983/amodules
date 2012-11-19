{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 24.09.2012
@LastMod 19.11.2012
}
unit AUiProcSet;

interface

uses
  ABase,
  AUiProcRec, AUiProcTypes, AUiProcVars;

procedure UI_SetProcs(const UiProcs: AUiProcs_Type);
function UI_SetProcsP(UiProcs: PUiProcs): Boolean;

implementation

procedure UI_SetProcs(const UiProcs: AUiProcs_Type);
var
  Reserved: AInteger;
begin
  AUi_GetIsShowApp := UiProcs.IsShowApp;
  AUi_InitMainTrayIcon := UiProcs.InitMainTrayIcon;
  AUi_InitMenus02 := UiProcs.InitMenus02;
  AUi_ProcessMessages02 := UiProcs.ProcessMessages02;
  AUi_SetIsShowApp := UiProcs.IsShowApp_Set;
  AUi_ShowHelp02 := UiProcs.ShowHelp02;
  AUi_Shutdown02 := UiProcs.Shutdown02;

  AUi_Box_New := UiProcs.Box_New;
  AUi_Button_New := UiProcs.Button_New;

  AUi_Control_Free := UiProcs.Control_Free;
  AUi_Control_FreeAndNil := UiProcs.Control_FreeAndNil;
  AUi_Control_GetEnabled := UiProcs.Control_GetEnabled;
  AUi_Control_GetHeight := UiProcs.Control_GetHeight;
  AUi_Control_GetHint := UiProcs.Control_GetHintW;
  AUi_Control_GetName := UiProcs.Control_GetNameW;
  AUi_Control_GetText := UiProcs.Control_GetTextW;
  AUi_Control_GetVisible := UiProcs.Control_GetVisible;
  AUi_Control_GetWidth := UiProcs.Control_GetWidth;
  AUi_Control_SetAlign := UiProcs.Control_SetAlign;
  AUi_Control_SetClientSize := UiProcs.Control_SetClientSize;
  AUi_Control_SetColor := UiProcs.Control_SetColor;
  AUi_Control_SetEnabled := UiProcs.Control_SetEnabled;
  AUi_Control_SetFocus := UiProcs.Control_SetFocus;
  AUi_Control_SetHint := UiProcs.Control_SetHintW;
  AUi_Control_SetName := UiProcs.Control_SetNameW;
  AUi_Control_SetOnChange02 := UiProcs.Control_SetOnChange02;
  AUi_Control_SetOnClick02 := UiProcs.Control_SetOnClick02;
  AUi_Control_SetPosition := UiProcs.Control_SetPosition03;
  AUi_Control_SetSize := UiProcs.Control_SetSize03;
  AUi_Control_SetTextWS := UiProcs.Control_SetTextWS;
  AUi_Control_SetVisible := UiProcs.Control_SetVisible;
  AUi_Control_SetWidth := UiProcs.Control_SetWidth;

  //UI_DataSource_New := UI.DataSource_New;
  //UI_DataSource_SetOnDataChange := UI.DataSource_SetOnDataChange;

  UI_Dialog_About := UiProcs.Dialog_About;
  UI_Dialog_Calendar := UiProcs.Dialog_Calendar;
  UI_Dialog_Color := UiProcs.Dialog_Color;
  UI_Dialog_DateFilter := UiProcs.Dialog_DateFilter;
  AUi_Dialog_ErrorWS := UiProcs.Dialog_Error;
  AUi_Dialog_FontWS := UiProcs.Dialog_Font;
  UI_Dialog_GetWindow := UiProcs.Dialog_GetWindow;
  AUi_Dialog_InputBoxWS := UiProcs.Dialog_InputBox;
  AUi_Dialog_InputBox2WS := UiProcs.Dialog_InputBox2;
  AUi_Dialog_InputBoxAWS := UiProcs.Dialog_InputBoxA;
  AUi_Dialog_LoginWS := UiProcs.Dialog_Login;
  AUi_Dialog_MessageWS := UiProcs.Dialog_Message;
  UI_Dialog_New := UiProcs.Dialog_New;
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
  UI_Grid_New := UiProcs.Grid_New;
  UI_Grid_RestoreColProps := UiProcs.Grid_RestoreColProps;
  UI_Grid_SaveColProps := UiProcs.Grid_SaveColProps;
  UI_Grid_SetColumnWidth := UiProcs.Grid_SetColumnWidth;
  UI_Grid_SetColumnWidthA := UiProcs.Grid_SetColumnWidthA;
  UI_Grid_SetDataSource := UiProcs.Grid_SetDataSource;

  AUiImage_New := UiProcs.Image_New;
  UI_Image_LoadFromFileWS := UiProcs.Image_LoadFromFile;

  UI_Label_New := UiProcs.Label_New;
  {$IFDEF A02}
  UI_Label_SetFont := UiProcs.Label_SetFont;
  {$ELSE}
  Reserved := UiProcs.Reserved66;
    (*{$IFDEF A02}
    //UI_Control_SetFont1 := UI.Label_SetFont;
    //UI_Control_SetFont2 := UI.Control_SetFont2;
    UI_Label_SetFont := UI.Label_SetFont;
    {$ELSE}
    Label_SetFont := UI.Label_SetFont;
    {$ENDIF}*)
  {$ENDIF}

  UI_ListBox_Add := UiProcs.ListBox_Add;
  UI_ListBox_Clear := UiProcs.ListBox_Clear;
  AUiListBox_New := UiProcs.ListBox_New;

  UI_MainTrayIcon := UiProcs.MainTrayIcon;

  UI_MainToolBar := UiProcs.MainToolBar;
  {$IFDEF A02}
  UI_MainToolBar_Set := UiProcs.MainToolBar_Set;
  {$ELSE}
  Reserved := UiProcs.Reserved71;
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

  Menu_AddItem2WS02 := UiProcs.Menu_AddItem2WS02;
  Menu_AddItem3 := UiProcs.Menu_AddItem3;
  UI_MenuItem_FindByName := UiProcs.MenuItem_FindByName;
  AUiPageControl_AddPageWS := UiProcs.PageControl_AddPageWS;
  AUiPageControl_New := UiProcs.PageControl_New;

  UI_ProgressBar_New := UiProcs.ProgressBar_New;
  UI_ProgressBar_StepIt := UiProcs.ProgressBar_StepIt;

  UI_PropertyBox_Add := UiProcs.PropertyBox_Add;
  UI_PropertyBox_AddA := UiProcs.PropertyBox_AddA;
  UI_PropertyBox_Item_GetValue := UiProcs.PropertyBox_Item_GetValue;
  UI_PropertyBox_Item_SetValue := UiProcs.PropertyBox_Item_SetValue;
  UI_PropertyBox_New := UiProcs.PropertyBox_New;

  UI_Splitter_New := UiProcs.Splitter_New;

  UI_TextView_AddLine := UiProcs.TextView_AddLine;
  UI_TextView_New := UiProcs.TextView_New;
  UI_TextView_SetFont := UiProcs.TextView_SetFont;
  UI_TextView_SetReadOnly := UiProcs.TextView_SetReadOnly;
  UI_TextView_SetScrollBars := UiProcs.TextView_SetScrollBars;
  UI_TextView_SetWordWrap := UiProcs.TextView_SetWordWrap;

  UI_ToolBar_AddButton := UiProcs.ToolBar_AddButton;
  UI_ToolBar_New := UiProcs.ToolBar_New;

  UI_TrayIcon_GetMenuItems := UiProcs.TrayIcon_GetMenuItems;

  UI_TreeView_AddItem := UiProcs.TreeView_AddItemWS;
  AUiTreeView_New := UiProcs.TreeView_New;

  UI_Window_Free := UiProcs.Window_Free;
  UI_Window_GetMenu := UiProcs.Window_GetMenu;
  UI_Window_LoadConfig := UiProcs.Window_LoadConfig;
  UI_Window_LoadConfig2 := UiProcs.Window_LoadConfig2;
  UI_Window_New := UiProcs.Window_New;
  UI_Window_SaveConfig := UiProcs.Window_SaveConfig;
  UI_Window_SaveConfig2 := UiProcs.Window_SaveConfig2;
  UI_Window_SetBorderStyle := UiProcs.Window_SetBorderStyle;
  UI_Window_SetFormStyle := UiProcs.Window_SetFormStyle;
  UI_Window_SetPosition := UiProcs.Window_SetPosition;
  UI_Window_ShowModal := UiProcs.Window_ShowModal;

  UI_ReportWin_New := UiProcs.ReportWin_New;

  UI_WaitWin_New := UiProcs.WaitWin_NewWS;
  UI_WaitWin_StepBy := UiProcs.WaitWin_StepBy;

  AUi_SetOnMainFormCreate02 := UiProcs.SetOnMainFormCreate02;
  MainWindow_SetA := UiProcs.MainWindow_SetA;

  {$IFDEF A01}
  Reserved := UiProcs.Reserved123;
  Reserved := UiProcs.Reserved124;
  Reserved := UiProcs.Reserved125;
  Reserved := UiProcs.Reserved126;
  Reserved := UiProcs.Reserved127;
  {$ELSE}
  UI_ReportWin_NewA := UiProcs.ReportWin_NewA;
  UI_Calendar_GetDate := UiProcs.Calendar_GetDate;
  UI_Calendar_New := UiProcs.Calendar_New;
  UI_Calendar_SetMonth := UiProcs.Calendar_SetMonth;
  UI_Report_New := UiProcs.Report_New;
  UI_Report_SetText := UiProcs.Report_SetText;
  {$ENDIF}

  {$IFDEF A01}
    Reserved := UiProcs.Reserved127;
    Reserved := UiProcs.Reserved128;
    Reserved := UiProcs.Reserved129;
    Reserved := UiProcs.Reserved130;
    Reserved := UiProcs.Reserved131;
    Reserved := UiProcs.Reserved132;
    Reserved := UiProcs.Reserved136;
    Reserved := UiProcs.Reserved137;
    Reserved := UiProcs.Reserved138;
    Reserved := UiProcs.Reserved139;
  {$ELSE}
    {$IFDEF A02}
    Reserved := UiProcs.Reserved128;
    Reserved := UiProcs.Reserved129;
    Reserved := UiProcs.Reserved130;
    Reserved := UiProcs.Reserved131;
    Reserved := UiProcs.Reserved132;
    Reserved := UiProcs.Reserved136;
    Reserved := UiProcs.Reserved137;
    Reserved := UiProcs.Reserved138;
    Reserved := UiProcs.Reserved139;
    {$ELSE}
    UI_Control_SetFont1 := UiProcs.Control_SetFont1;
    UI_Control_SetFont2 := UiProcs.Control_SetFont2;
    UI_Dialog_About_New := UiProcs.Dialog_About_New;
    UI_Dialog_AddButton := UiProcs.Dialog_AddButton;
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
 