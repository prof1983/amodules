{**
@Abstract User interface proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 20.11.2012
}
unit AUiProcTypes;

{A01}
{A02}

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ABaseTypes, AUiBase;

type
  AUi_Init_Proc = function(): AError; stdcall;
  AUi_Fin_Proc = function(): AError; stdcall;
type
  AUi_InitMainMenu_Proc = function: AInteger; stdcall;
  AUi_InitMainTrayIcon_Proc = function: AInteger; stdcall;
  AUi_InitMenus_Proc = function(): AError; stdcall;
  {$ifdef ADepr}
  AUi_InitMenus02_Proc = procedure(); stdcall;
  {$endif}
  AUi_GetIsShowApp_Proc = function(): ABoolean; stdcall;
  AUi_SetIsShowApp_Proc = procedure(Value: ABoolean); stdcall;
  AUi_SetOnMainFormCreate02_Proc = procedure(Value: AProc02); stdcall;
  AUi_ProcessMessages_Proc = function(): AError; stdcall;
  AUi_ProcessMessages02_Proc = procedure(); stdcall;
  AUi_ShowHelp_Proc = function(): AError; stdcall;
  AUi_ShowHelp2_Proc = function(const FileName: AString_Type): AError; stdcall;
  {$ifdef ADepr}
  AUi_ShowHelp02_Proc = procedure(); stdcall;
  AUi_ShowHelp2WS_Proc = function(const FileName: AWideString): AError; stdcall;
  {$endif}
  AUi_Shutdown_Proc = function(): AError; stdcall;
  AUi_Shutdown02_Proc = procedure(); stdcall;
  AUi_OnDone_Connect_Proc = function(Proc: ACallbackProc): AInteger; stdcall;
  AUi_OnDone_Disconnect03_Proc = function(Proc: ACallbackProc03): AInteger; stdcall;

  //AUi_IsShowApp_Proc = AUi_GetIsShowApp_Proc;
  //AUi_IsShowApp_Set_Proc = AUi_SetIsShowApp_Proc;

type
  { BoxType: 0 - Simple; 1 - HBox; 2 - VBox }
  AUiBox_New_Proc = function(Parent: AControl; BoxType: AInteger): AControl; stdcall;
type
  AUiButton_New_Proc = function(Parent: AControl): AButton; stdcall;
type
  AUi_Calendar_GetDate = function(Calendar: AControl): TDateTime; stdcall;
  AUi_Calendar_New = function(Parent: AControl): AControl; stdcall;
  AUi_Calendar_SetMonth = procedure(Calendar: AControl; Value: AInteger); stdcall;

type
  AUiControl_Free02_Proc = procedure(Control: AControl); stdcall;
  AUiControl_Free04_Proc = function(Control: AControl): AError; stdcall;
  AUiControl_FreeAndNil_Proc = procedure(var Control: AControl); stdcall;
  AUiControl_GetEnabled_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_GetHeight_Proc = function(Control: AControl): AInteger; stdcall;
  AUiControl_GetHint_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUiControl_GetHintWS_Proc = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUiControl_GetName_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUiControl_GetNameWS_Proc = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUiControl_GetText_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUiControl_GetTextWS_Proc = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUiControl_GetVisible_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_GetWidth_Proc = function(Control: AControl): AInteger; stdcall;
  AUiControl_SetAlign02_Proc = procedure(Control: AControl; Align: TUiAlign); stdcall;
  AUiControl_SetAlign04_Proc = function(Control: AControl; Align: TUiAlign): AError; stdcall;
  AUiControl_SetClientSize02_Proc = procedure(Control: AControl; ClientWidth, ClientHeight: AInteger); stdcall;
  AUiControl_SetClientSize04_Proc = function(Control: AControl; ClientWidth, ClientHeight: AInt): AError; stdcall;
  AUiControl_SetColor02_Proc = procedure(Control: AControl; Color: AColor); stdcall;
  AUiControl_SetColor04_Proc = function(Control: AControl; Color: AColor): AError; stdcall;
  AUiControl_SetEnabled_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  AUiControl_SetFocus_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_SetFont1_Proc = procedure(Control: AControl; const FontName: AString_Type; FontSize: AInteger); stdcall;
  AUiControl_SetFont1A_Proc = function(Control: AControl; FontName: AStr; FontSize: AInt): AError; stdcall;
  AUiControl_SetFont2_Proc = procedure(Control: AControl; const FontName: AString_Type; FontSize: AInteger; Color: AColor); stdcall;
  {$ifdef ADepr}
  AUiControl_SetFontW1_Proc = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUiControl_SetFontW2_Proc = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger; Color: AColor); stdcall;
  {$endif}
  AUiControl_SetHint_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  {$ifdef ADepr}
  AUiControl_SetHintWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUiControl_SetName_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  {$ifdef ADepr}
  AUiControl_SetNameWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUiControl_SetOnChange_Proc = function(Control: AControl; OnChange: ACallbackProc03): AError; stdcall;
  AUiControl_SetOnChange02_Proc = procedure(Control: AControl; OnChange: ACallbackProc02); stdcall;
  AUiControl_SetOnClick_Proc = procedure(Control: AControl; Value: ACallbackProc03); stdcall;
  AUiControl_SetOnClick02_Proc = procedure(Control: AControl; Value: ACallbackProc02); stdcall;
  //AUi_Control_SetOnClick03 = procedure(Control: AControl; Value: ACallbackProc03); stdcall;
  AUiControl_SetPosition02_Proc = procedure(Control: AControl; Left, Top: AInt); stdcall;
  AUiControl_SetPosition04_Proc = function(Control: AControl; Left, Top: AInt): AError; stdcall;
  AUiControl_SetSize02_Proc = procedure(Control: AControl; Width, Height: AInteger); stdcall;
  AUiControl_SetSize04_Proc = function(Control: AControl; Width, Height: AInt): AError; stdcall;
  AUiControl_SetText02_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  AUiControl_SetText04_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  {$ifdef ADepr}
  AUiControl_SetTextWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUiControl_SetVisible_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  AUiControl_SetWidth_Proc = function(Control: AControl; Value: AInteger): AInteger; stdcall;

type
  AUi_DataSource_New_Proc = function(): PADataSource; stdcall;
  AUi_DataSource_SetOnDataChange02_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc02); stdcall;
  AUi_DataSource_SetOnDataChange03_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc03); stdcall;

type
  AUi_Dialog_About_Proc = procedure(); stdcall;
  AUi_Dialog_About_New_Proc = function: AWindow; stdcall;
  AUi_Dialog_AddButton_Proc = function(Win: AWindow; Left, Width: AInteger;
      const Text: AString_Type; OnClick: ACallbackProc03): AControl; stdcall;
  AUi_Dialog_AddButton02 = function(Win: AWindow; Left, Width: AInteger;
      const Text: AWideString; OnClick: ACallbackProc02): AControl; stdcall;
  AUi_Dialog_Calendar_Proc = function(var Date: TDateTime; CenterX, CenterY: AInteger): ABoolean; stdcall;
  AUi_Dialog_Color_Proc = function(var Color: AColor): ABoolean; stdcall;
  AUi_Dialog_DateFilter_Proc = function(var Group: Integer; var DateBegin, DateEnd: TDateTime): Boolean; stdcall;

  AUi_Dialog_Error_Proc = procedure(const Caption, UserMessage, ExceptMessage: AString_Type); stdcall;
  {$ifdef ADepr}
  AUi_Dialog_ErrorWS_Proc = procedure(const Caption, UserMessage, ExceptMessage: AWideString); stdcall;
  {$endif}
  AUi_Dialog_Font_Proc = function(var FontName: AString_Type; var FontSize: AInteger; FontColor: AColor): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_FontWS_Proc = function(var FontName: AWideString; var FontSize: AInteger; FontColor: AColor): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_GetWindow_Proc = function(Dialog: ADialog): AWindow; stdcall;
  AUi_Dialog_InputBox_Proc = function(const Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBoxWS_Proc = function(const Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_InputBox2_Proc = function(const Caption, Text1, Text2: AString_Type; var Value1, Value2: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBox2WS_Proc = function(const Caption, Text1, Text2: AWideString; var Value1, Value2: AWideString): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_InputBoxA_Proc = function(const Caption, Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBoxAWS_Proc = function(const Caption, Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_Login_Proc = function(var UserName, Password: AString_Type; IsSave: ABoolean): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_LoginWS_Proc = function(var UserName, Password: AWideString; IsSave: ABoolean): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_Message_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_MessageWS_Proc = function(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  {$endif}
  AUi_Dialog_New_Proc = function(Buttons: AUIWindowButtons): ADialog; stdcall;
  AUi_Dialog_OpenFile_Proc = function(const InitialDir, Filter, Title: AString_Type; var FileName: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_OpenFileWS_Proc = function(const InitialDir, Filter, Title: AWideString; var FileName: AWideString): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_OpenFileA_Proc = function(const InitialDir, Filter, DefaultExt, Title: AString_Type; var FileName: AString_Type; var FilterIndex: AInteger): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_OpenFileAWS_Proc = function(const InitialDir, Filter, DefaultExt, Title: AWideString; var FileName: AWideString; var FilterIndex: AInteger): ABoolean; stdcall;
  {$endif}
  AUi_Dialog_SaveFile_Proc = function(const Dir, Ext, DefFileName: AString_Type; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_SaveFileWS_Proc = function(const Dir, Ext, DefFileName: AWideString): AWideString; stdcall;
  {$endif}
  AUi_Dialog_SaveFileA_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AString_Type; var FilterIndex: AInteger; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_SaveFileAWS_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AWideString; var FilterIndex: AInteger): AWideString; stdcall;
  {$endif}

type
  AUi_Edit_CheckDate = function(Edit: AControl; out Value: TDateTime): ABoolean; stdcall;
  AUi_Edit_CheckFloat = function(Edit: AControl; out Value: Double): ABoolean; stdcall;
  // Переводит текст в Int. Если ошибка, то переходит на этот компонент и возвращает false.
  AUi_Edit_CheckInt = function(Edit: AControl; out Value: AInteger): ABoolean; stdcall;
  // Создает новый элемент TEdit
  AUi_Edit_New = function(Parent: AControl): AControl; stdcall;
  { EditType
    0 - TEdit
    1 - TEdit + Button
    2 - TComboBox }
  AUi_Edit_New02_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc02; Left, Top, Width: AInteger): AControl; stdcall;
  AUi_Edit_NewEx_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc03; Left, Top, Width: AInteger): AControl; stdcall;

type // --- V02 ---
  AUi_Grid_AddColumn = procedure(Grid: AControl; const FieldName, Title: AWideString; Width: Integer); stdcall;
  { GridType
    0 - StringGrid
    1 - DBGrid }
  AUi_Grid_New = function(Parent: AControl; GridType: AInteger): AControl; stdcall;
  // Восстанавливает колоноки DBGrid
  AUi_Grid_RestoreColPropsWS_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  // Сохраняет колоноки DBGrid или StringGrid.
  AUi_Grid_SaveColPropsWS02_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  // Изменяет ширину колонки в DBGrid
  AUi_Grid_SetColumnWidth = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger); stdcall;
  AUi_Grid_SetColumnWidthA = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger); stdcall;
  AUi_Grid_SetDataSource = procedure(Grid: AControl; Value: PADataSource); stdcall;
type // --- V03 ---
  AUi_Grid_AddColumn_Proc = procedure(Grid: AControl; const FieldName, Title: AString_Type; Width: Integer); stdcall;
    // Производит очистку таблицы. Пока работает только для TStringGrid.
  AUi_Grid_Clear_Proc = function(Grid: AControl): AError; stdcall;
    // Производит очистку таблицы. Пока работает только для TStringGrid.
  AUi_Grid_ClearA_Proc = function(Grid: AControl; FixedRows: AInteger): AError; stdcall;
    // Удаляет указанную строку.
  AUi_Grid_DeleteRow2_Proc = function(Grid: AControl; Row: AInteger): AError; stdcall;
    // Производит поиск значения в заданной колонке. Работает пока только для TStringGrid.
  AUi_Grid_FindInt_Proc = function(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;
  { GridType
    0 - StringGrid
    1 - DBGrid }
  AUi_Grid_New_Proc = function(Parent: AControl; GridType: AInteger): AControl; stdcall;
  { Восстанавливает колоноки DBGrid }
  AUi_Grid_RestoreColProps_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  { Сохраняет колоноки DBGrid }
  AUi_Grid_SaveColProps_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  { Изменяет ширину колонки в DBGrid }
  AUi_Grid_SetColumnWidth_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger); stdcall;
  AUi_Grid_SetColumnWidthA_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger); stdcall;
  AUi_Grid_SetDataSource_Proc = procedure(Grid: AControl; Value: PADataSource); stdcall;

type
  AUiImage_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): AError; stdcall;
  AUiImage_LoadFromFileA_Proc = function(Image: AControl; FileName: AStr): AError; stdcall;
  {$ifdef ADepr}
  AUi_Image_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): ABoolean; stdcall;
  AUi_Image_LoadFromFileWS_Proc = function(Image: AControl; const FileName: AWideString): ABoolean; stdcall;
  {$endif}
  AUiImage_New_Proc = function(Parent: AControl): AControl; stdcall;
type
  AUi_Label_New = function(Parent: AControl): AControl; stdcall;
type
  AUiListBox_Add_Proc = function(ListBox: AControl; const Text: AString_Type): AInt; stdcall;
  AUiListBox_Clear_Proc = function(ListBox: AControl): AError; stdcall;
  AUiListBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  AUi_ListBox_AddWS_Proc = function(ListBox: AControl; const Text: AWideString): AInt; stdcall;
  AUi_ListBox_Clear = procedure(ListBox: AControl); stdcall;
  {$endif}
type
  AUi_MainToolBar = function: AControl; stdcall;
  {$IFDEF A01}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
  {$IFDEF A02}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
type
  AUi_MainTrayIcon_Proc = function(): ATrayIcon; stdcall;
type
  AUiMainWindow_AddMenuItem_Proc = function(const ParentItemName, Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMainWindow_AddMenuItemA_Proc = function(ParentItemName, Name, Text: AStr;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
type
  AUi_MainWindow = function: AWindow; stdcall;
  AUi_MainWindow_AddMenuItem02WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItem03WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItemWS_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_AddMenuItemWS2_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_Set = procedure(Value: AWindow); stdcall;
  AUi_MainWindow_SetA = procedure(Value: AWindow; ToolBar, StatusBar: AControl; Config: AConfig); stdcall;
type
  AUi_MainWindow_GetLeftContainer = function: AControl; stdcall;
  AUi_MainWindow_GetMainContainer = function: AControl; stdcall;
  AUi_MainWindow_GetRightContainer = function: AControl; stdcall;
type
  AUi_Menu_GetItems = function(Menu: AMenu): AMenuItem; stdcall;
  AUi_Menu_New = function(MenuType: AInteger): AMenu; stdcall;

type
  AUiMenu_AddItem0_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_AddItem1_Proc = function(Menu: AMenu; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_AddItem2_Proc = function(Parent: AMenuItem; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem2WS02_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem2WS03_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem3_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUi_MenuItem_FindByName = function(MenuItem: AMenuItem; const Name: AWideString): AMenuItem; stdcall;
type
  AUi_MenuItem_Add_Proc = function(MenuItem: AMenuItem; const Name, Text: AString_Type; OnClick: ACallbackProc; ImageID, Weight: Integer): AMenuItem; stdcall;
  AUi_MenuItem_Add2_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUi_MenuItem_FindByName_Proc = function(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;

type
  { Создает новую вкладку. Возврашает:
    0 - если произошла ошибка, иначе идентификатор новой вкладки (если операция прошла успешно) }
  AUiPageControl_AddPage_Proc = function(PageControl: AControl; const Name, Text: AString_Type): AControl; stdcall;
  {$ifdef ADepr}
  { Создает новую вкладку. Возврашает:
    0 - если произошла ошибка, иначе идентификатор новой вкладки (если операция прошла успешно) }
  AUi_PageControl_AddPageWS_Proc = function(PageControl: AControl; const Name, Text: AWideString): AControl; stdcall;
  {$endif}
  AUiPageControl_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUi_ProgressBar_New_Proc = function(Parent: AControl; Max: AInteger): AControl; stdcall;
  AUi_ProgressBar_StepIt_Proc = function(ProgressBar: AControl): AInteger; stdcall;

type
  AUi_PropertyBox_Add = function(PropertyBox: AControl; const Caption: AWideString): Integer; stdcall;
  AUi_PropertyBox_AddA = function(PropertyBox: AControl; const Caption, Text, Hint: AWideString; EditWidth: AInteger): AInteger; stdcall;
  AUi_PropertyBox_Item_GetValue = function(PropertyBox: AControl; Index: Integer): AWideString; stdcall;
  AUi_PropertyBox_Item_SetValue = procedure(PropertyBox: AControl; Index: Integer; const Value: AWideString); stdcall;
  AUi_PropertyBox_New = function(Parent: AControl): AControl; stdcall;
  //A_UI_PropertyBox_Add = function(PropertyBox: AControl; const Caption: AString_Type): Integer; stdcall;
  //A_UI_PropertyBox_AddA = function(PropertyBox: AControl; const Caption, Text, Hint: AString_Type; EditWidth: AInteger): AInteger; stdcall;
  //A_UI_PropertyBox_Item_GetValue = function(PropertyBox: AControl; Index: Integer; out Value: AString_Type): AInteger; stdcall;
  //A_UI_PropertyBox_Item_SetValue = procedure(PropertyBox: AControl; Index: Integer; const Value: AString_Type); stdcall;
  //A_UI_PropertyBox_New = function(Parent: AControl): AControl; stdcall;

type
  AUi_Report_New = function(Parent: AControl): AReport; stdcall;
  AUi_Report_SetText = procedure(Report: AReport; const Value: AWideString); stdcall;
  A_UI_Report_SetText = procedure(Report: AReport; const Value: AString_Type); stdcall;

type
  AUi_ReportWin_New = function: AWindow; stdcall;
  // ReportWinType - Тип окна отчета: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewA = function(ReportWinType: AInteger; const Text: AString_Type): AWindow; stdcall;
  // ReportWinType - Тип окна отчета: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewWS_Proc = function(ReportWinType: AInteger; const Text: AWideString): AWindow; stdcall;

type
  AUi_Splitter_New = function(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;

type // --- V02 ---
  // Добавляет строку в элемент TextView
  AUi_TextView_AddLine = function(TextView: AControl; const Text: AWideString): AInteger; stdcall;
  { Создает новый элемент редактирования текста
    ViewType
      0 - TMemo
      1 - RichEdit }
  AUi_TextView_New = function(Parent: AControl; ViewType: AInteger): AControl; stdcall;
  AUi_TextView_SetFont = procedure(TextView: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUi_TextView_SetReadOnly = procedure(TextView: AControl; ReadOnly: ABoolean); stdcall;
  { ScrollBars
      0 - ssNone
      1 - ssHorizontal
      2 - ssVertical
      3 - ssBoth }
  AUi_TextView_SetScrollBars = procedure(TextView: AControl; ScrollBars: AInteger); stdcall;
  AUi_TextView_SetWordWrap = procedure(TextView: AControl; Value: ABoolean); stdcall;
type // --- V03 ---
  { Добавляет строку в элемент TextView }
  A_UI_TextView_AddLine = function(TextView: AControl; const Text: AString_Type): AInteger; stdcall;
  { Создает новый элемент редактирования текста
    ViewType
      0 - TMemo
      1 - RichEdit }
  A_UI_TextView_New = function(Parent: AControl; ViewType: AInteger): AControl; stdcall;
  A_UI_TextView_SetFont = procedure(TextView: AControl; const FontName: AString_Type; FontSize: AInteger); stdcall;
  A_UI_TextView_SetReadOnly = procedure(TextView: AControl; ReadOnly: ABoolean); stdcall;
  { ScrollBars
      0 - ssNone
      1 - ssHorizontal
      2 - ssVertical
      3 - ssBoth }
  A_UI_TextView_SetScrollBars = procedure(TextView: AControl; ScrollBars: AInteger); stdcall;
  A_UI_TextView_SetWordWrap = procedure(TextView: AControl; Value: ABoolean); stdcall;

type
  AUi_ToolBar_AddButton02_Proc = function(ToolBar: AControl; const Name, Text, Hint: AWideString;
      OnClick: ACallbackProc02; ImageID, Weight: AInteger): AButton; stdcall;
  AUi_ToolBar_AddButton03_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      OnClick: ACallbackProc03; ImageID, Weight: AInteger): AButton; stdcall;
  AUi_ToolBar_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUi_TrayIcon_GetMenuItems = function(TrayIcon: ATrayIcon): AMenuItem; stdcall; // $IFNDEF UNIX

type
  AUiTreeView_AddItem_Proc = function(TreeView: AControl; Parent: ATreeNode; Text: AString_Type): ATreeNode; stdcall;
  AUiTreeView_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  AUi_TreeView_AddItem = function(TreeView: AControl; Parent: ATreeNode; Text: AWideString): ATreeNode; stdcall;
  {$endif}

type
  AUi_WaitWin_NewWS_Proc = function(const Caption, Text: AWideString; MaxPosition: Integer): AWindow; stdcall;
  AUi_WaitWin_New_Proc = function(const Caption, Text: AString_Type; MaxPosition: Integer): AWindow; stdcall;
  AUi_WaitWin_StepBy = function(Window: AWindow; Step: AInteger): AInteger; stdcall;

type
  AUiWindow_Free_Proc = function(Window: AWindow): AError; stdcall;
  AUiWindow_New_Proc = function(): AControl; stdcall;
  AUiWindow_ShowModal_Proc = function(Window: AWindow): ABoolean; stdcall;
  AUi_Window_Free = procedure(Window: AWindow); stdcall;
  AUi_Window_GetMenu = function(Window: AWindow): AMenu; stdcall;
  AUi_Window_LoadConfig = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUi_Window_LoadConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  A_UI_Window_LoadConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
  AUi_Window_New = AUiWindow_New_Proc;
  AUi_Window_SaveConfig = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUi_Window_SaveConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  A_UI_Window_SaveConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
    //** Задает стиль окантовки окна.
  AUi_Window_SetBorderStyle02 = procedure(Window: AWindow; BorderStyle: AInteger); stdcall;
    //** Задает стиль окантовки окна.
  AUi_Window_SetBorderStyle03 = function(Window: AWindow; BorderStyle: AInteger): AError; stdcall;
  AUi_Window_SetFormStyle = procedure(Window: AWindow; FormStyle: AInteger); stdcall;
  AUi_Window_SetPosition = procedure(Window: AWindow; Position: AInteger); stdcall;
  AUi_Window_ShowModal = AUiWindow_ShowModal_Proc;

implementation

end.
 