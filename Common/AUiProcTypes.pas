{**
@Abstract User interface proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 20.12.2012
}
unit AUiProcTypes;

interface

uses
  ABase, ABaseTypes, AUiBase;

type
  AUi_CreateMainForm_Proc = function(): AError; stdcall;
  AUi_ExecuteAboutDialog_Proc = function(): AError; stdcall;
  AUi_ExecuteCalendarDialog_Proc = function(var Date: TDateTime; CenterX, CenterY: AInt): ABool; stdcall;
  AUi_ExecuteColorDialog_Proc = function(var Color: AColor): ABool; stdcall;
  AUi_ExecuteDateFilterDialog_Proc = function(var Group: AInt; var DateBegin, DateEnd: TDateTime): ABool; stdcall;
  AUi_ExecuteErrorDialog_Proc = function(const Caption, UserMessage, ExceptMessage: AString_Type): AError; stdcall;
  AUi_ExecuteErrorDialogA_Proc = function(Caption, UserMessage, ExceptMessage: AStr): AError; stdcall;
  AUi_ExecuteFontDialog_Proc = function(var FontName: AString_Type; var FontSize: AInt; FontColor: AColor): ABool; stdcall;
  AUi_ExecuteFontDialogA_Proc = function(FontName: AStr; MaxLen: AInt; var FontSize: AInt; var FontColor: AColor): ABool; stdcall;
  AUi_ExecuteInputBox1_Proc = function(const Text: AString_Type; var Value: AString_Type): AError; stdcall;
  AUi_ExecuteInputBox1A_Proc = function(Text: AStr; Value: AStr; ValueMaxLen: AInt): AError; stdcall;
  AUi_ExecuteInputBox2_Proc = function(const Caption, Text1, Text2: AString_Type; var Value1, Value2: AString_Type): AError; stdcall;
  AUi_ExecuteInputBox2A_Proc = function(Caption, Text1, Text2: AStr; Value1: AStr; MaxLenValue1: AInt; Value2: AStr; MaxLenValue2: AInt): AError; stdcall;
  AUi_ExecuteLoginDialog_Proc = function(var UserName, Password: AString_Type; IsSave: ABool): ABool; stdcall;
  AUi_ExecuteMessageDialog1_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_ExecuteMessageDialog1A_Proc = function(Text, Caption: AStr; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_ExecuteOpenFileDialog_Proc = function(const InitialDir, Filter, Title: AString_Type; var FileName: AString_Type): ABool; stdcall;
  AUi_ExecutePrinterSetupDialog_Proc = function(): AError; stdcall;
  AUi_ExecuteSaveFileDialog1_Proc = function(const InitialDir, DefExt, DefFileName: AString_Type; out Value: AString_Type): AInt; stdcall;
  AUi_Fin_Proc = function(): AError; stdcall;
  AUi_GetIsShowApp_Proc = function(): ABool; stdcall;
  AUi_GetMainMenuItem_Proc = function(): AMenuItem; stdcall;
  AUi_GetMainToolBar_Proc = function(): AControl; stdcall;
  AUi_GetMainTrayIcon_Proc = function(): ATrayIcon; stdcall;
  AUi_GetMainWindow_Proc = function(): AWindow; stdcall;
  AUi_Init_Proc = function(): AError; stdcall;
  AUi_InitAboutDialogWin2_Proc = function(AboutDialog: AWindow): AError; stdcall;
  AUi_InitMainTrayIcon_Proc = function(): AError; stdcall;
  AUi_InitMenus_Proc = function(): AError; stdcall;
  AUi_OnDone_Connect_Proc = function(Proc: ACallbackProc): AInt; stdcall;
  AUi_OnDone_Disconnect_Proc = function(Proc: ACallbackProc): AInt; stdcall;
  AUi_ProcessMessages_Proc = function(): AError; stdcall;
  AUi_Run_Proc = function(): AInt; stdcall;
  AUi_SetAboutMemoDefaultSize_Proc = function(Width, Height: AInt): AError; stdcall;
  AUi_SetHideOnClose_Proc = function(Value: ABool): AError; stdcall;
  AUi_SetIsShowApp_Proc = function(Value: ABool): AError; stdcall;
  AUi_SetMainToolBar_Proc = function(ToolBar: AControl): AError; stdcall;
  AUi_SetMainWindow_Proc = function(Value: AWindow): AError; stdcall;
  AUi_SetMainWindow2_Proc = function(Value: AWindow; ToolBar, StatusBar: AControl; Config: AConfig): AError; stdcall;
  AUi_SetOnAboutClick_Proc = function(Value: AProc): AError; stdcall;
  AUi_SetOnMainFormCreate_Proc = function(Value: AProc): AError; stdcall;
  AUi_SetProgramState_Proc = function(State: AInt): AError; stdcall;
  AUi_ShellExecute_Proc = function(const Operation, FileName, Parameters, Directory: AString_Type): AInt; stdcall;
  AUi_ShellExecuteA_Proc = function(Operation, FileName, Parameters, Directory: AStr): AInt; stdcall;
  AUi_ShowHelp_Proc = function(): AError; stdcall;
  AUi_ShowHelp2_Proc = function(const FileName: AString_Type): AError; stdcall;
  AUi_Shutdown_Proc = function(): AError; stdcall;

type
  AUiAboutDialog_Init2_Proc = function(AboutDialog: ADialog): AError; stdcall;
  AUiAboutDialog_New_Proc = function(): ADialog; stdcall;

type
  { BoxType: 0 - Simple; 1 - HBox; 2 - VBox }
  AUiBox_New_Proc = function(Parent: AControl; BoxType: ABoxType): AControl; stdcall;

type
  AUiButton_New_Proc = function(Parent: AControl): AButton; stdcall;
  AUiButton_SetKind_Proc = function(Button: AButton; Kind: TAUiButtonKind): AError; stdcall;

type
  AUiCalendar_GetDate_Proc = function(Calendar: AControl): TDateTime; stdcall;
  AUiCalendar_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiCalendar_SetMonth_Proc = function(Calendar: AControl; Value: AInt): AError; stdcall;

type
  AUiCheckBox_Free_Proc = function(CheckBox: AControl): AError; stdcall;
  AUiCheckBox_GetChecked_Proc = function(CheckBox: AControl): ABool; stdcall;
  AUiCheckBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiCheckBox_NewEx_Proc = function(Parent: AControl; OnChange: ACallbackProc; Left, Top, Width: AInt): AControl; stdcall;
  AUiCheckBox_SetChecked_Proc = function(CheckBox: AControl; Value: ABool): AError; stdcall;

type
  AUiComboBox_Add_Proc = function(ComboBox: AControl; const Value: AString_Type): AInt; stdcall;
  AUiComboBox_AddA_Proc = function(ComboBox: AControl; Value: AStr): AInt; stdcall;
  AUiComboBox_GetItemIndex_Proc = function(ComboBox: AControl): AInt; stdcall;
  AUiComboBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiComboBox_New2_Proc = function(Parent: AControl; Left, Top, Width: AInt): AControl; stdcall;
  AUiComboBox_SetItemIndex_Proc = function(ComboBox: AControl; Value: AInt): AError; stdcall;

type
  AUiControl_Free_Proc = function(Control: AControl): AError; stdcall;
  AUiControl_FreeAndNil_Proc = function(var Control: AControl): AError; stdcall;
  AUiControl_GetClientHeight_Proc = function(Control: AControl): AInt; stdcall;
  AUiControl_GetClientWidth_Proc = function(Control: AControl): AInt; stdcall;
  AUiControl_GetColor_Proc = function(Control: AControl): AColor; stdcall;
  AUiControl_GetEnabled_Proc = function(Control: AControl): ABool; stdcall;
  AUiControl_GetHeight_Proc = function(Control: AControl): AInt; stdcall;
  AUiControl_GetHint_Proc = function(Control: AControl; out Value: AString_Type): AError; stdcall;
  AUiControl_GetHintA_Proc = function(Control: AControl; Value: AStr; MaxLen: AInt): AError; stdcall;
  AUiControl_GetMenu_Proc = function(Control: AControl): AMenu; stdcall;
  AUiControl_GetName_Proc = function(Control: AControl; out Value: AString_Type): AError; stdcall;
  AUiControl_GetNameA_Proc = function(Control: AControl; Value: AStr; MaxLen: AInt): AError; stdcall;
  AUiControl_GetPosition_Proc = function(Control: AControl; out Left, Top: AInt): AError; stdcall;
  AUiControl_GetText_Proc = function(Control: AControl; out Value: AString_Type): AError; stdcall;
  AUiControl_GetTop_Proc = function(Control: AControl): AInt; stdcall;
  AUiControl_GetVisible_Proc = function(Control: AControl): ABool; stdcall;
  AUiControl_GetWidth_Proc = function(Control: AControl): AInt; stdcall;
  AUiControl_SetAlign_Proc = function(Control: AControl; Align: TUiAlign): AError; stdcall;
  AUiControl_SetAnchors_Proc = function(Control: AControl; Anchors: TUiAnchors): AError; stdcall;
  AUiControl_SetBevel_Proc = function(Control: AControl; Value: AUiBevel; Width: AInt): AError; stdcall;
  AUiControl_SetClientSize_Proc = function(Control: AControl; ClientWidth, ClientHeight: AInt): AError; stdcall;
  AUiControl_SetColor_Proc = function(Control: AControl; Color: AColor): AError; stdcall;
  AUiControl_SetCursor_Proc = function(Control: AControl; Value: AInt): AError; stdcall;
  AUiControl_SetEnabled_Proc = function(Control: AControl; Value: ABool): AError; stdcall;
  AUiControl_SetFocus_Proc = function(Control: AControl): ABool; stdcall;
  AUiControl_SetFont1_Proc = function(Control: AControl; const FontName: AString_Type; FontSize: AInt): AError; stdcall;
  AUiControl_SetFont1A_Proc = function(Control: AControl; FontName: AStr; FontSize: AInt): AError; stdcall;
  AUiControl_SetFontColor_Proc = function(Control: AControl; Color: AColor): AError; stdcall;
  AUiControl_SetFontSize_Proc = function(Control: AControl; Size: AInt): AError; stdcall;
  AUiControl_SetFontStyle_Proc = function(Control: AControl; FontStyle: AUiFontStyle): AError; stdcall;
  AUiControl_SetHeight_Proc = function(Control: AControl; Value: AInt): AInt; stdcall;
  AUiControl_SetHint_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetHintA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetName_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetNameA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetOnChange_Proc = function(Control: AControl; OnChange: ACallbackProc): AError; stdcall;
  AUiControl_SetOnChangeEx_Proc = function(Control: AControl; OnChange: ACallbackProc; Obj: AInt): AError; stdcall;
  AUiControl_SetOnClick_Proc = function(Control: AControl; Value: ACallbackProc): AError; stdcall;
  AUiControl_SetPosition_Proc = function(Control: AControl; Left, Top: AInt): AError; stdcall;
  AUiControl_SetSize_Proc = function(Control: AControl; Width, Height: AInt): AError; stdcall;
  AUiControl_SetTabStop_Proc = function(Control: AControl; Value: ABool): AError; stdcall;
  AUiControl_SetText_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetTextA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetTop_Proc = function(Control: AControl; Value: AInt): AError; stdcall;
  AUiControl_SetVisible_Proc = function(Control: AControl; Value: ABool): AError; stdcall;
  AUiControl_SetWidth_Proc = function(Control: AControl; Value: AInt): AInt; stdcall;

type
  AUiDataSource_New_Proc = function(): PADataSource; stdcall;
  AUiDataSource_SetOnDataChange_Proc = function(DataSource: PADataSource; OnDataChange: ACallbackProc): AError; stdcall;

type
  AUiDialog_AddButton1_Proc = function(Dialog: ADialog; Left, Width: AInt; const Text: AString_Type; OnClick: ACallbackProc): AControl; stdcall;
  AUiDialog_Free_Proc = function(Dialog: ADialog): AError; stdcall;
  AUiDialog_GetButtonsBox_Proc = function(Dialog: ADialog): AControl; stdcall;
  AUiDialog_GetWindow_Proc = function(Dialog: ADialog): AWindow; stdcall;
  AUiDialog_New_Proc = function(Buttons: AUiWindowButtons): ADialog; stdcall;
  AUiDialog_ShowModal_Proc = function(Dialog: ADialog): ABool; stdcall;

type
  AUiEdit_CheckDate_Proc = function(Edit: AControl; out Value: TDateTime): AError; stdcall;
  AUiEdit_CheckFloat_Proc = function(Edit: AControl; out Value: AFloat): AError; stdcall;
  AUiEdit_CheckFloat32_Proc = function(Edit: AControl; out Value: AFloat32): AError; stdcall;
  AUiEdit_CheckFloat64_Proc = function(Edit: AControl; out Value: AFloat64): AError; stdcall;
  AUiEdit_CheckInt_Proc = function(Edit: AControl; out Value: AInt): AError; stdcall;
  AUiEdit_New_Proc = function(Parent: AControl): AControl; stdcall;
  {** Create new edit
      @param EditType: 0 - TEdit; 1 - TEdit + Button; 2 - TComboBox }
  AUiEdit_NewEx_Proc = function(Parent: AControl; EditType: AInt; OnClick: ACallbackProc; Left, Top, Width: AInt): AControl; stdcall;

type
  AUiGrid_AddColumn_Proc = function(Grid: AControl; const FieldName, Title: AString_Type; Width: AInt): AError; stdcall;
  AUiGrid_Clear_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_Clear2_Proc = function(Grid: AControl; FixedRows: AInt): AError; stdcall;
  AUiGrid_DeleteRow_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_DeleteRow2_Proc = function(Grid: AControl; Row: AInt): AError; stdcall;
  AUiGrid_FindInt_Proc = function(Grid: AControl; Col, Value: AInt): AInt; stdcall;
  AUiGrid_New_Proc = function(Parent: AControl; GridType: AInt): AControl; stdcall;
  AUiGrid_RestoreColProps_Proc = function(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_RestoreColPropsA_Proc = function(Grid: AControl; Config: AConfig; Key: AStr;
      Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_RowDown_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_RowUp_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_SaveColProps_Proc = function(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_SaveColPropsA_Proc = function(Grid: AControl; Config: AConfig; Key: AStr;
      Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_SetColumnWidth_Proc = function(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInt): AError; stdcall;
  AUiGrid_SetColumnWidth2_Proc = function(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInt): AError; stdcall;
  AUiGrid_SetDataSource_Proc = function(Grid: AControl; Value: PADataSource): AError; stdcall;
  AUiGrid_SetRowCount_Proc = function(Grid: AControl; Count: AInt): AError; stdcall;

type
  AUiImage_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): AError; stdcall;
  AUiImage_LoadFromFileA_Proc = function(Image: AControl; FileName: AStr): AError; stdcall;
  AUiImage_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiImage_SetCenter_Proc = function(Image: AControl; Value: ABool): AError; stdcall;
  AUiImage_SetTransparent_Proc = function(Image: AControl; Value: ABool): AError; stdcall;

type
  AUiLabel_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiLabel_New2_Proc = function(Parent: AControl; Typ: AInt): AControl; stdcall;
  AUiLabel_SetAlignment_Proc = function(Control: AControl; Value: AUiAlignment): AError; stdcall;
  AUiLabel_SetAutoSize_Proc = function(Control: AControl; Value: ABool): AError; stdcall;
  AUiLabel_SetWordWrap_Proc = function(Control: AControl; Value: ABool): AError; stdcall;

type
  AUiListBox_Add_Proc = function(ListBox: AControl; const Text: AString_Type): AInt; stdcall;
  AUiListBox_Clear_Proc = function(ListBox: AControl): AError; stdcall;
  AUiListBox_DeleteItem_Proc = function(ListBox: AControl; Index: AInt): AError; stdcall;
  AUiListBox_GetCount_Proc = function(ListBox: AControl): AInt; stdcall;
  AUiListBox_GetItem_Proc = function(ListBox: AControl; Index: AInt; out Value: AString_Type): AInt; stdcall;
  AUiListBox_GetItemIndex_Proc = function(ListBox: AControl): AInt; stdcall;
  AUiListBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiListBox_New2_Proc = function(Parent: AControl; Typ: AInt): AControl; stdcall;
  AUiListBox_SetChecked_Proc = function(ListBox: AControl; Index: AInt; Value: ABool): AError; stdcall;
  AUiListBox_SetItem_Proc = function(ListBox: AControl; Index: AInt; const Value: AString_Type): AError; stdcall;
  AUiListBox_SetItemHeight_Proc = function(ListBox: AControl; Value: AInt): AError; stdcall;
  AUiListBox_SetItemIndex_Proc = function(ListBox: AControl; Index: AInt): AError; stdcall;
  AUiListBox_SetOnDblClick_Proc = function(ListBox: AControl; Value: ACallbackProc): AError; stdcall;

type
  AUiMainWindow_AddMenuItem_Proc = function(const ParentItemName, Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AMenuItem; stdcall;
  AUiMainWindow_AddMenuItemA_Proc = function(ParentItemName, Name, Text: AStr;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AMenuItem; stdcall;
  AUiMainWindow_GetLeftContainer_Proc = function(): AControl; stdcall;
  AUiMainWindow_GetMainContainer_Proc = function(): AControl; stdcall;
  AUiMainWindow_GetRightContainer_Proc = function(): AControl; stdcall;

type
  AUiMenu_AddItem0_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInt): AMenuItem; stdcall;
  AUiMenu_AddItem1_Proc = function(Menu: AMenu; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AMenuItem; stdcall;
  AUiMenu_AddItem2_Proc = function(Parent: AMenuItem; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AMenuItem; stdcall;
  AUiMenu_AddItem3_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInt): AMenuItem; stdcall;
  AUiMenu_Clear_Proc = function(MenuItem: AMenuItem): AError; stdcall;
  AUiMenu_FindItemByName_Proc = function(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;
  AUiMenu_GetItems_Proc = function(Menu: AMenu): AMenuItem; stdcall;
  AUiMenu_New_Proc = function(MenuType: AInt): AMenu; stdcall;
  AUiMenu_New2_Proc = function(Parent: AControl; MenuType: AInt): AMenu; stdcall;
  AUiMenu_SetChecked_Proc = function(MenuItem: AMenuItem; Checked: ABool): AError; stdcall;

type
  AUiPageControl_AddPage_Proc = function(PageControl: AControl; const Name, Text: AString_Type): AControl; stdcall;
  AUiPageControl_AddPageA_Proc = function(PageControl: AControl; Name, Text: AStr): AControl; stdcall;
  AUiPageControl_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUiProgressBar_New_Proc = function(Parent: AControl; Max: AInt): AControl; stdcall;
  AUiProgressBar_SetMaxPosition_Proc = function(ProgressBar: AControl; MaxPosition: AInt): AError; stdcall;
  AUiProgressBar_SetPosition_Proc = function(ProgressBar: AControl; Position: AInt): AError; stdcall;
  AUiProgressBar_StepBy_Proc = function(ProgressBar: AControl; Step: AInt): AInt; stdcall;
  AUiProgressBar_StepIt_Proc = function(ProgressBar: AControl): AInt; stdcall;

type
  AUiPropertyBox_Add_Proc = function(PropertyBox: AControl; const Caption: AString_Type): AInt; stdcall;
  AUiPropertyBox_Add2_Proc = function(PropertyBox: AControl; const Caption, Text, Hint: AString_Type; EditWidth: AInt): AInt; stdcall;
  AUiPropertyBox_GetUseBigFont_Proc = function(PropertyBox: AControl): ABool; stdcall;
  AUiPropertyBox_Item_GetValue_Proc = function(PropertyBox: AControl; Index: AInt; out Value: AString_Type): AInt; stdcall;
  AUiPropertyBox_Item_SetValue_Proc = function(PropertyBox: AControl; Index: AInt; const Value: AString_Type): AError; stdcall;
  AUiPropertyBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiPropertyBox_SetIsAppPoints_Proc = function(PropertyBox: AControl; Value: ABool): AError; stdcall;
  AUiPropertyBox_SetUseBigFont_Proc = function(PropertyBox: AControl; Value: ABool): AError; stdcall;

type
  AUiReport_New_Proc = function(Parent: AControl): AReport; stdcall;
  AUiReport_SetText_Proc = function(Report: AReport; const Value: AString_Type): AError; stdcall;

type
  AUiReportWin_New_Proc = function(): AWindow; stdcall;
  AUiReportWin_New2_Proc = function(ReportWinType: AInt; const Text: AString_Type): AWindow; stdcall;
  AUiReportWin_ShowReport_Proc = function(const Text: AString_Type; Font: AFont): AError; stdcall;

type
  AUiSpinButton_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUiSpinEdit_GetValue_Proc = function(SpinEdit: AControl): AInt; stdcall;
  AUiSpinEdit_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiSpinEdit_NewEx_Proc = function(Parent: AControl; Value, MinValue, MaxValue: AInt): AControl; stdcall;
  AUiSpinEdit_SetValue_Proc = function(SpinEdit: AControl; Value: AInt): AError; stdcall;

type
  AUiSplitter_New_Proc = function(Parent: AControl; SplitterType: AUiSplitterType): AControl; stdcall;

type
  AUiTextView_AddLine_Proc = function(TextView: AControl; const Text: AString_Type): AInt; stdcall;
  AUiTextView_New_Proc = function(Parent: AControl; ViewType: AInt): AControl; stdcall;
  AUiTextView_SetFont_Proc = function(TextView: AControl; const FontName: AString_Type; FontSize: AInt): AError; stdcall;
  AUiTextView_SetReadOnly_Proc = function(TextView: AControl; ReadOnly: ABool): AError; stdcall;
  AUiTextView_SetScrollBars_Proc = function(TextView: AControl; ScrollBars: AUiScrollStyle): AError; stdcall;
  AUiTextView_SetWordWrap_Proc = function(TextView: AControl; Value: ABool): AError; stdcall;

type
  AUiToolBar_AddButton_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AButton; stdcall;
  AUiToolBar_AddButton1_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      ImageId, Weight: AInt): AButton; stdcall;
  AUiToolBar_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUiToolMenu_AddNewItem_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInt): AToolMenu; stdcall;
  AUiToolMenu_AddNewSubMenu_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      ImageId, Weight: AInt): AToolMenu; stdcall;
  AUiToolMenu_GetSubMenu_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      ImageId, Weight: AInt): AToolMenu; stdcall;
  AUiToolMenu_New_Proc = function(Parent: AControl): AToolMenu; stdcall;

type
  AUiTrayIcon_Free_Proc = function(TrayIcon: ATrayIcon): AError; stdcall;
  AUiTrayIcon_GetHint_Proc = function(TrayIcon: ATrayIcon; out Value: AString_Type): AError; stdcall;
  AUiTrayIcon_GetMenuItems_Proc = function(TrayIcon: ATrayIcon): AMenuItem; stdcall;
  AUiTrayIcon_GetPopupMenu_Proc = function(TrayIcon: ATrayIcon): AInt; stdcall;
  AUiTrayIcon_New_Proc = function(): ATrayIcon; stdcall;
  AUiTrayIcon_SetHint_Proc = function(TrayIcon: ATrayIcon; const Value: AString_Type): AError; stdcall;
  AUiTrayIcon_SetIcon_Proc = function(TrayIcon: ATrayIcon; Icon: AIcon): AError; stdcall;
  AUiTrayIcon_SetIsActive_Proc = function(TrayIcon: ATrayIcon; Value: ABool): AError; stdcall;
  AUiTrayIcon_SetOnLeftClick_Proc = function(TrayIcon: ATrayIcon; Value: AProc): AError; stdcall;
  AUiTrayIcon_SetOnRightClick_Proc = function(TrayIcon: ATrayIcon; Value: AProc): AError; stdcall;
  AUiTrayIcon_SetPopupMenu_Proc = function(TrayIcon: ATrayIcon; Value: AInt): AError; stdcall;

type
  AUiTreeView_AddItem_Proc = function(TreeView: AControl; Parent: ATreeNode; Text: AString_Type): ATreeNode; stdcall;
  AUiTreeView_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUiWaitWin_New_Proc = function(const Caption, Text: AString_Type; MaxPosition: AInt): AWindow; stdcall;
  AUiWaitWin_SetMaxPosition_Proc = function(WaitWin: AWindow; MaxPosition: AInt): AError; stdcall;
  AUiWaitWin_SetPosition_Proc = function(WaitWin: AWindow; Position: AInt): AError; stdcall;
  AUiWaitWin_SetText_Proc = function(Window: AWindow; const Text: AString_Type): AError; stdcall;
  AUiWaitWin_StepBy_Proc = function(Window: AWindow; Step: AInt): AInt; stdcall;

type
  AUiWindow_Add_Proc = function(Window: AWindow): AError; stdcall;
  AUiWindow_Free_Proc = function(Window: AWindow): AError; stdcall;
  AUiWindow_FreeAndNil_Proc = function(var Window: AWindow): AError; stdcall;
  AUiWindow_GetMenu_Proc = function(Window: AWindow): AMenu; stdcall;
  AUiWindow_LoadConfig_Proc = function(Window: AWindow; Config: AConfig): AError; stdcall;
  AUiWindow_LoadConfig2_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): AError; stdcall;
  AUiWindow_New_Proc = function(): AControl; stdcall;
  AUiWindow_SaveConfig_Proc = function(Window: AWindow; Config: AConfig): AError; stdcall;
  AUiWindow_SaveConfig2_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): AError; stdcall;
  AUiWindow_SetBorderStyle_Proc = function(Window: AWindow; BorderStyle: AInt): AError; stdcall;
  AUiWindow_SetFormStyle_Proc = function(Window: AWindow; FormStyle: AInt): AError; stdcall;
  AUiWindow_SetPosition_Proc = function(Window: AWindow; Position: AInt): AError; stdcall;
  AUiWindow_SetState_Proc = function(Window: AWindow; State: AInt): AError; stdcall;
  AUiWindow_ShowModal_Proc = function(Window: AWindow): ABool; stdcall;
  AUiWindow_ShowModal2_Proc = function(Window: AWindow): AInt; stdcall;

implementation

end.
 