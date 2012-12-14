{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 24.09.2012
@LastMod 14.12.2012
}
unit AUiProcSet;

interface

uses
  ABase,
  AUiProcRec, AUiProcTypes, AUiProcVars;

procedure UI_SetProcs(const UiProcs: AUiProcs_Type);
function UI_SetProcsP(UiProcs: PUiProcs; Ui_Init: AUi_Init_Proc; Ui_Fin: AUi_Fin_Proc): Boolean;

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
  AUi_NewDialog := UiProcs.Dialog_New;
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

  AUi_GetMainTrayIcon := UiProcs.MainTrayIcon;

  AUi_GetMainToolBar := UiProcs.MainToolBar;
  {$IFDEF A02}
  UI_MainToolBar_Set := UiProcs.MainToolBar_Set;
  {$ELSE}
  Reserved := UiProcs.Reserved71;
  {$ENDIF}

  AUi_GetMainWindow := UiProcs.MainWindow;
  MainWindow_AddMenuItem := UiProcs.MainWindow_AddMenuItem03WS;
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

  AUiProgressBar_New := UiProcs.ProgressBar_New;
  AUiProgressBar_StepIt := UiProcs.ProgressBar_StepIt;

  UI_PropertyBox_Add := UiProcs.PropertyBox_Add;
  UI_PropertyBox_AddA := UiProcs.PropertyBox_AddA;
  UI_PropertyBox_Item_GetValue := UiProcs.PropertyBox_Item_GetValue;
  UI_PropertyBox_Item_SetValue := UiProcs.PropertyBox_Item_SetValue;
  UI_PropertyBox_New := UiProcs.PropertyBox_New;

  AUiSplitter_New := UiProcs.Splitter_New;

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
  UI_Window_SetBorderStyle := UiProcs.Window_SetBorderStyle02;
  UI_Window_SetFormStyle := UiProcs.Window_SetFormStyle;
  UI_Window_SetPosition := UiProcs.Window_SetPosition;
  AUiWindow_ShowModal := UiProcs.Window_ShowModal;

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
  AUiCalendar_GetDate := UiProcs.Calendar_GetDate;
  AUiCalendar_New := UiProcs.Calendar_New;
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
    UI_Control_SetFontW1 := UiProcs.Control_SetFont1;
    UI_Control_SetFontW2 := UiProcs.Control_SetFont2;
    UI_Dialog_About_New := UiProcs.Dialog_About_New;
    UI_Dialog_AddButton := UiProcs.Dialog_AddButton;
    //UI_InitMenus := UI.InitMenus;
    {$ENDIF A02}
  {$ENDIF A01}

  AUiProcVars.AUiGrid_ClearA := UiProcs.Grid_ClearA;
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

end.
 