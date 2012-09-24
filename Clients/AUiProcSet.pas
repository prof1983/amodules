{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 24.09.2012
@LastMod 24.09.2012
}
unit AUiProcSet;

interface

uses
  AUiProcTypes, AUiProcVars;

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
 