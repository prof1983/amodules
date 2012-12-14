{**
@Abstract User interface proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 14.12.2012
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
  AUi_CreateMainForm_Proc = function(): AError; stdcall;
  AUi_InitMainMenu_Proc = function: AInteger; stdcall;
  AUi_InitMainTrayIcon_Proc = function(): AError; stdcall;
  AUi_InitMenus_Proc = function(): AError; stdcall;
  AUi_GetIsShowApp_Proc = function(): ABoolean; stdcall;
  AUi_GetMainMenuItem_Proc = function(): AMenuItem; stdcall;
  AUi_GetMainToolBar_Proc = function(): AControl; stdcall;
  AUi_GetMainTrayIcon_Proc = function(): ATrayIcon; stdcall;
  AUi_GetMainWindow_Proc = function(): AWindow; stdcall;
  AUi_OnDone_Connect_Proc = function(Proc: ACallbackProc): AInteger; stdcall;
  AUi_OnDone_Disconnect_Proc = function(Proc: ACallbackProc): AInteger; stdcall;
  AUi_ProcessMessages_Proc = function(): AError; stdcall;
  AUi_Run_Proc = function(): AInteger; stdcall;
  AUi_SetProgramState_Proc = function(State: AInteger): AError; stdcall;
  AUi_SetHideOnClose_Proc = function(Value: ABoolean): AError; stdcall;
  AUi_SetMainToolBar_Proc = function(ToolBar: AControl): AError; stdcall;
  AUi_ShellExecute_Proc = function(const Operation, FileName, Parameters, Directory: AString_Type): AInt; stdcall;
  AUi_ShellExecuteA_Proc = function(Operation, FileName, Parameters, Directory: AStr): AInt; stdcall;
  AUi_ShowHelp_Proc = function(): AError; stdcall;
  AUi_ShowHelp2_Proc = function(const FileName: AString_Type): AError; stdcall;
  AUi_Shutdown_Proc = function(): AError; stdcall;
  AUi_Shutdown02_Proc = procedure(); stdcall;
  {$ifdef ADepr}
  AUi_InitMenus02_Proc = procedure(); stdcall;
  AUi_ProcessMessages02_Proc = procedure(); stdcall;
  AUi_SetIsShowApp_Proc = procedure(Value: ABoolean); stdcall;
  AUi_SetOnMainFormCreate02_Proc = procedure(Value: AProc02); stdcall;
  AUi_ShowHelp02_Proc = procedure(); stdcall;
  AUi_ShowHelp2WS_Proc = function(const FileName: AWideString): AError; stdcall;
  {$endif}

type
  { BoxType: 0 - Simple; 1 - HBox; 2 - VBox }
  AUiBox_New_Proc = function(Parent: AControl; BoxType: AInteger): AControl; stdcall;
type
  AUiButton_New_Proc = function(Parent: AControl): AButton; stdcall;
  AUiButton_SetKind_Proc = function(Button: AButton; Kind: TAUiButtonKind): AError; stdcall;
type
  AUiCalendar_GetDate_Proc = function(Calendar: AControl): TDateTime; stdcall;
  AUiCalendar_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiCalendar_SetMonth02_Proc = procedure(Calendar: AControl; Value: AInt); stdcall;
  AUiCalendar_SetMonth04_Proc = function(Calendar: AControl; Value: AInt): AError; stdcall;
type
  AUiComboBox_Add_Proc = function(ComboBox: AControl; const Value: AString_Type): AInteger; stdcall;
  AUiComboBox_AddA_Proc = function(ComboBox: AControl; Value: AStr): AInteger; stdcall;
  AUiComboBox_GetItemIndex_Proc = function(ComboBox: AControl): AInteger; stdcall;
  AUiComboBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiComboBox_New2_Proc = function(Parent: AControl; Left, Top, Width: AInteger): AControl; stdcall;
  AUiComboBox_SetItemIndex_Proc = function(ComboBox: AControl; Value: AInteger): AError; stdcall;
type
  AUiControl_Free04_Proc = function(Control: AControl): AError; stdcall;
  AUiControl_FreeAndNil04_Proc = function(var Control: AControl): AError; stdcall;
  AUiControl_GetColor_Proc = function(Control: AControl): AColor; stdcall;
  AUiControl_GetEnabled_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_GetHeight_Proc = function(Control: AControl): AInteger; stdcall;
  AUiControl_GetHint_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  AUiControl_GetHintA_Proc = function(Control: AControl; Value: AStr; MaxLen: AInt): AError; stdcall;
  AUiControl_GetMenu_Proc = function(Control: AControl): AMenu; stdcall;
  AUiControl_GetName_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  AUiControl_GetNameA_Proc = function(Control: AControl; Value: AStr; MaxLen: AInt): AError; stdcall;
  AUiControl_GetPosition_Proc = function(Control: AControl; out Left, Top: AInteger): AError; stdcall;
  AUiControl_GetText_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  AUiControl_GetVisible_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_GetWidth_Proc = function(Control: AControl): AInteger; stdcall;
  AUiControl_SetAlign04_Proc = function(Control: AControl; Align: TUiAlign): AError; stdcall;
  AUiControl_SetAnchors_Proc = function(Control: AControl; Anchors: TUiAnchors): AError; stdcall;
  AUiControl_SetClientSize04_Proc = function(Control: AControl; ClientWidth, ClientHeight: AInt): AError; stdcall;
  AUiControl_SetColor04_Proc = function(Control: AControl; Color: AColor): AError; stdcall;
  AUiControl_SetEnabled04_Proc = function(Control: AControl; Value: ABoolean): AError; stdcall;
  AUiControl_SetFocus_Proc = function(Control: AControl): ABoolean; stdcall;
  AUiControl_SetFont1_Proc = function(Control: AControl; const FontName: AString_Type; FontSize: AInt): AError; stdcall;
  AUiControl_SetFont1A_Proc = function(Control: AControl; FontName: AStr; FontSize: AInt): AError; stdcall;
  AUiControl_SetHeight_Proc = function(Control: AControl; Value: AInt): AInt; stdcall;
  AUiControl_SetHint04_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetHintA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetName04_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetNameA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetOnChange_Proc = function(Control: AControl; OnChange: ACallbackProc03): AError; stdcall;
  AUiControl_SetOnClick02_New_Proc = function(Control: AControl; Value: ACallbackProc02): AError; stdcall;
  AUiControl_SetOnClick03_New_Proc = function(Control: AControl; Value: ACallbackProc03): AError; stdcall;
  AUiControl_SetOnClick04_Proc = function(Control: AControl; Value: ACallbackProc): AError; stdcall;
  AUiControl_SetPosition04_Proc = function(Control: AControl; Left, Top: AInt): AError; stdcall;
  AUiControl_SetSize04_Proc = function(Control: AControl; Width, Height: AInt): AError; stdcall;
  AUiControl_SetTabStop_Proc = function(Control: AControl; Value: ABoolean): AError; stdcall;
  AUiControl_SetText04_Proc = function(Control: AControl; const Value: AString_Type): AError; stdcall;
  AUiControl_SetTextA_Proc = function(Control: AControl; Value: AStr): AError; stdcall;
  AUiControl_SetVisible04_Proc = function(Control: AControl; Value: ABoolean): AError; stdcall;
  AUiControl_SetWidth_Proc = function(Control: AControl; Value: AInteger): AInteger; stdcall;
  {$ifdef ADepr}
  AUiControl_Free02_Proc = procedure(Control: AControl); stdcall;
  AUiControl_FreeAndNil02_Proc = procedure(var Control: AControl); stdcall;
  AUiControl_GetHintWS_Proc = function(Control: AControl): AWideString; stdcall;
  AUiControl_GetNameWS_Proc = function(Control: AControl): AWideString; stdcall;
  AUiControl_GetTextWS_Proc = function(Control: AControl): AWideString; stdcall;
  AUiControl_SetAlign02_Proc = procedure(Control: AControl; Align: TUiAlign); stdcall;
  AUiControl_SetClientSize02_Proc = procedure(Control: AControl; ClientWidth, ClientHeight: AInteger); stdcall;
  AUiControl_SetColor02_Proc = procedure(Control: AControl; Color: AColor); stdcall;
  AUiControl_SetEnabled02_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  AUiControl_SetFont2_Old_Proc = procedure(Control: AControl; const FontName: AString_Type; FontSize: AInteger; Color: AColor); stdcall;
  AUiControl_SetFontW1_Proc = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUiControl_SetFontW2_Proc = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger; Color: AColor); stdcall;
  AUiControl_SetHint02_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  AUiControl_SetHintWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  AUiControl_SetName02_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  AUiControl_SetNameWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  AUiControl_SetOnChange02_Proc = procedure(Control: AControl; OnChange: ACallbackProc02); stdcall;
  AUiControl_SetOnClick02_Old_Proc = procedure(Control: AControl; Value: ACallbackProc02); stdcall;
  AUiControl_SetOnClick03_Old_Proc = procedure(Control: AControl; Value: ACallbackProc03); stdcall;
  AUiControl_SetPosition02_Proc = procedure(Control: AControl; Left, Top: AInt); stdcall;
  AUiControl_SetSize02_Proc = procedure(Control: AControl; Width, Height: AInteger); stdcall;
  AUiControl_SetText02_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  AUiControl_SetTextWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  AUiControl_SetVisible02_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  {$endif}

type
  AUiDataSource_New_Proc = function(): PADataSource; stdcall;
  {$ifdef ADepr}
  AUi_DataSource_SetOnDataChange02_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc02); stdcall;
  AUi_DataSource_SetOnDataChange03_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc03); stdcall;
  {$endif}

type
  AUi_ExecuteAboutDialog_Proc = function(): AError; stdcall;
  AUi_ExecuteCalendarDialog_Proc = function(var Date: TDateTime; CenterX, CenterY: AInteger): ABoolean; stdcall;
  AUi_ExecuteColorDialog_Proc = function(var Color: AColor): ABoolean; stdcall;
  AUi_ExecuteDateFilterDialog_Proc = function(var Group: AInt; var DateBegin, DateEnd: TDateTime): ABoolean; stdcall;
  AUi_ExecuteErrorDialog_Proc = function(const Caption, UserMessage, ExceptMessage: AString_Type): AError; stdcall;
  AUi_ExecuteErrorDialogA_Proc = function(Caption, UserMessage, ExceptMessage: AStr): AError; stdcall;
  AUi_ExecuteFontDialog_Proc = function(var FontName: AString_Type; var FontSize: AInt; FontColor: AColor): ABoolean; stdcall;
  AUi_ExecuteFontDialogA_Proc = function(FontName: AStr; MaxLen: AInt; var FontSize: AInt;
      var FontColor: AColor): ABoolean; stdcall;
  AUi_ExecuteInputBox1_Proc = function(const Text: AString_Type; var Value: AString_Type): AError; stdcall;
  AUi_ExecuteInputBox1A_Proc = function(Text: AStr; Value: AStr; ValueMaxLen: AInt): AError; stdcall;
  AUi_ExecuteInputBox2_Proc = function(const Caption, Text1, Text2: AString_Type;
      var Value1, Value2: AString_Type): AError; stdcall;
  AUi_ExecuteInputBox2A_Proc = function(Caption, Text1, Text2: AStr;
      Value1: AStr; MaxLenValue1: AInt; Value2: AStr; MaxLenValue2: AInt): AError; stdcall;
  AUi_ExecuteLoginDialog_Proc = function(var UserName, Password: AString_Type; IsSave: ABoolean): ABoolean; stdcall;
  AUi_ExecuteMessageDialog1_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_ExecuteMessageDialog1A_Proc = function(Text, Caption: AStr; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_ExecuteOpenFileDialog_Proc = function(const InitialDir, Filter, Title: AString_Type;
      var FileName: AString_Type): ABoolean; stdcall;
  AUi_ExecutePrinterSetupDialog_Proc = function(): AError; stdcall;
  AUi_ExecuteSaveFileDialog_Proc = function(const Dir, Ext, DefFileName: AString_Type;
      out Value: AString_Type): AInteger; stdcall;
  AUi_InitAboutDialog1_Proc = function(AboutDialog: AWindow): AError; stdcall;
  AUi_InitAboutDialog2_Proc = function(AboutDialog: AWindow): AError; stdcall;
  AUi_NewAboutDialog_Proc = function(): AWindow; stdcall;
  // --- AUiDialog ---
  AUiDialog_AddButton_Proc = function(Win: AWindow; Left, Width: AInt;
      const Text: AString_Type; OnClick: ACallbackProc): AControl; stdcall;
  AUiDialog_GetWindow_Proc = function(Dialog: ADialog): AWindow; stdcall;
  AUiDialog_New_Proc = function(Buttons: AUiWindowButtons): ADialog; stdcall;
  {$ifdef ADepr}
  AUi_NewDialog_Proc = AUiDialog_New_Proc;
  AUi_Dialog_About_Proc = procedure(); stdcall;
  AUi_Dialog_About_New_Proc = AUi_NewAboutDialog_Proc;
  AUi_Dialog_AddButton_Proc = AUiDialog_AddButton_Proc;
  AUi_Dialog_AddButton02 = function(Win: AWindow; Left, Width: AInteger;
      const Text: AWideString; OnClick: ACallbackProc02): AControl; stdcall;
  AUi_Dialog_Calendar_Proc = AUi_ExecuteCalendarDialog_Proc;
  AUi_Dialog_Color_Proc = AUi_ExecuteColorDialog_Proc;
  AUi_Dialog_DateFilter_Proc = AUi_ExecuteDateFilterDialog_Proc;
  AUi_Dialog_Error_Proc = procedure(const Caption, UserMessage, ExceptMessage: AString_Type); stdcall;
  AUi_Dialog_Font_Proc = AUi_ExecuteFontDialog_Proc;
  AUi_Dialog_GetWindow_Proc = AUiDialog_GetWindow_Proc;
  AUi_Dialog_InputBox_Proc = function(const Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  AUi_Dialog_InputBox2_Proc = function(const Caption, Text1, Text2: AString_Type; var Value1, Value2: AString_Type): ABoolean; stdcall;
  AUi_Dialog_InputBoxA_Proc = function(const Caption, Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  AUi_Dialog_Login_Proc = AUi_ExecuteLoginDialog_Proc;
  AUi_Dialog_Message_Proc = function(const Text, Caption: APascalString;
      Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_Dialog_New_Proc = AUi_NewDialog_Proc;
  AUi_Dialog_OpenFile_Proc = AUi_ExecuteOpenFileDialog_Proc;
  AUi_Dialog_OpenFileA_Proc = function(const InitialDir, Filter, DefaultExt, Title: AString_Type;
      var FileName: AString_Type; var FilterIndex: AInteger): ABoolean; stdcall;
  AUi_Dialog_SaveFile_Proc = AUi_ExecuteSaveFileDialog_Proc;
  AUi_Dialog_SaveFileA_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AString_Type;
      var FilterIndex: AInteger; out Value: AString_Type): AInteger; stdcall;

  AUi_Dialog_ErrorWS_Proc = procedure(const Caption, UserMessage, ExceptMessage: AWideString); stdcall;
  AUi_Dialog_FontWS_Proc = function(var FontName: AWideString; var FontSize: AInteger; FontColor: AColor): ABoolean; stdcall;
  AUi_Dialog_InputBoxWS_Proc = function(const Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  AUi_Dialog_InputBox2WS_Proc = function(const Caption, Text1, Text2: AWideString; var Value1, Value2: AWideString): ABoolean; stdcall;
  AUi_Dialog_InputBoxAWS_Proc = function(const Caption, Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  AUi_Dialog_LoginWS_Proc = function(var UserName, Password: AWideString; IsSave: ABoolean): ABoolean; stdcall;
  AUi_Dialog_MessageWS_Proc = function(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  AUi_Dialog_OpenFileWS_Proc = function(const InitialDir, Filter, Title: AWideString; var FileName: AWideString): ABoolean; stdcall;
  AUi_Dialog_OpenFileAWS_Proc = function(const InitialDir, Filter, DefaultExt, Title: AWideString; var FileName: AWideString; var FilterIndex: AInteger): ABoolean; stdcall;
  AUi_Dialog_SaveFileWS_Proc = function(const Dir, Ext, DefFileName: AWideString): AWideString; stdcall;
  AUi_Dialog_SaveFileAWS_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AWideString; var FilterIndex: AInteger): AWideString; stdcall;
  {$endif}

type
  AUiEdit_CheckDate_Proc = function(Edit: AControl; out Value: TDateTime): AError; stdcall;
  AUiEdit_CheckFloat_Proc = function(Edit: AControl; out Value: AFloat): AError; stdcall;
  AUiEdit_CheckFloat32_Proc = function(Edit: AControl; out Value: AFloat32): AError; stdcall;
  AUiEdit_CheckFloat64_Proc = function(Edit: AControl; out Value: AFloat64): AError; stdcall;
  AUiEdit_CheckInt_Proc = function(Edit: AControl; out Value: AInteger): AError; stdcall;
  AUiEdit_New_Proc = function(Parent: AControl): AControl; stdcall;
  {** Create new edit
      @param EditType: 0 - TEdit; 1 - TEdit + Button; 2 - TComboBox }
  AUiEdit_NewEx_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc03; Left, Top, Width: AInteger): AControl; stdcall;
  {$ifdef ADepr}
  AUi_Edit_CheckDate = function(Edit: AControl; out Value: TDateTime): ABoolean; stdcall;
  AUi_Edit_CheckFloat = function(Edit: AControl; out Value: Double): ABoolean; stdcall;
  // Переводит текст в Int. Если ошибка, то переходит на этот компонент и возвращает false.
  AUi_Edit_CheckInt = function(Edit: AControl; out Value: AInteger): ABoolean; stdcall;
  // Создает новый элемент TEdit
  AUi_Edit_New = AUiEdit_New_Proc;
  { EditType
    0 - TEdit
    1 - TEdit + Button
    2 - TComboBox }
  AUi_Edit_New02_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc02; Left, Top, Width: AInteger): AControl; stdcall;
  AUi_Edit_NewEx_Proc = AUiEdit_NewEx_Proc;
  {$endif}

type
  AUiGrid_AddColumn04_Proc = function(Grid: AControl; const FieldName, Title: AString_Type;
      Width: AInteger): AError; stdcall;
    // Производит очистку таблицы. Пока работает только для TStringGrid.
  AUiGrid_Clear_Proc = function(Grid: AControl): AError; stdcall;
    // Производит очистку таблицы. Пока работает только для TStringGrid.
  AUiGrid_Clear2_Proc = function(Grid: AControl; FixedRows: AInteger): AError; stdcall;
  AUiGrid_DeleteRow_Proc = function(Grid: AControl): AError; stdcall;
    // Удаляет указанную строку.
  AUiGrid_DeleteRow2_Proc = function(Grid: AControl; Row: AInteger): AError; stdcall;
    // Производит поиск значения в заданной колонке. Работает пока только для TStringGrid.
  AUiGrid_FindInt_Proc = function(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;
  { GridType
    0 - StringGrid
    1 - DBGrid }
  AUiGrid_New_Proc = function(Parent: AControl; GridType: AInteger): AControl; stdcall;
  AUiGrid_RestoreColProps04_Proc = function(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_RestoreColPropsA_Proc = function(Grid: AControl; Config: AConfig; Key: AStr;
      Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_RowDown_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_RowUp_Proc = function(Grid: AControl): AError; stdcall;
  AUiGrid_SaveColProps04_Proc = function(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_SaveColPropsA_Proc = function(Grid: AControl; Config: AConfig; Key: AStr;
      Delimer: AChar = '\'): AError; stdcall;
  AUiGrid_SetColumnWidth04_Proc = function(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger): AError; stdcall;
  AUiGrid_SetColumnWidth2_Proc = function(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger): AError; stdcall;
  AUiGrid_SetDataSource04_Proc = function(Grid: AControl; Value: PADataSource): AError; stdcall;
  AUiGrid_SetRowCount_Proc = function(Grid: AControl; Count: AInteger): AError; stdcall;
  {$ifdef ADepr}
  AUiGrid_AddColumn02_Proc = procedure(Grid: AControl; const FieldName, Title: AString_Type; Width: Integer); stdcall;
  AUiGrid_AddColumnWS_Proc = procedure(Grid: AControl; const FieldName, Title: AWideString; Width: AInteger); stdcall;
  AUiGrid_RestoreColProps02_Proc = procedure(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  AUiGrid_RestoreColPropsWS_Proc = procedure(Grid: AControl; Config: AConfig;
      const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  AUiGrid_SaveColProps02_Proc = procedure(Grid: AControl; Config: AConfig;
      const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  AUiGrid_SaveColPropsWS02_Proc = procedure(Grid: AControl; Config: AConfig;
      const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  AUiGrid_SetColumnWidth02_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger); stdcall;
  AUiGrid_SetColumnWidthA_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger); stdcall;
  AUiGrid_SetDataSource02_Proc = procedure(Grid: AControl; Value: PADataSource); stdcall;
  {$endif}

type
  AUiImage_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): AError; stdcall;
  AUiImage_LoadFromFileA_Proc = function(Image: AControl; FileName: AStr): AError; stdcall;
  {$ifdef ADepr}
  AUi_Image_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): ABoolean; stdcall;
  AUi_Image_LoadFromFileWS_Proc = function(Image: AControl; const FileName: AWideString): ABoolean; stdcall;
  {$endif}
  AUiImage_New_Proc = function(Parent: AControl): AControl; stdcall;
type
  AUiLabel_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiLabel_New2_Proc = function(Parent: AControl; Typ: AInt): AControl; stdcall;
  AUiLabel_SetAlignment_Proc = function(Control: AControl; Value: AUiAlignment): AError; stdcall;
  AUiLabel_SetAutoSize_Proc = function(Control: AControl; Value: ABoolean): AError; stdcall;
  AUiLabel_SetWordWrap_Proc = function(Control: AControl; Value: ABoolean): AError; stdcall;
type
  AUiListBox_Add_Proc = function(ListBox: AControl; const Text: AString_Type): AInt; stdcall;
  AUiListBox_Clear_Proc = function(ListBox: AControl): AError; stdcall;
  AUiListBox_DeleteItem_Proc = function(ListBox: AControl; Index: AInteger): AError; stdcall;
  AUiListBox_GetCount_Proc = function(ListBox: AControl): AInteger; stdcall;
  AUiListBox_GetItem_Proc = function(ListBox: AControl; Index: AInteger; out Value: AString_Type): AInteger; stdcall;
  AUiListBox_GetItemIndex_Proc = function(ListBox: AControl): AInteger; stdcall;
  AUiListBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiListBox_New2_Proc = function(Parent: AControl; Typ: AInteger): AControl; stdcall;
  AUiListBox_SetItem_Proc = function(ListBox: AControl; Index: AInteger; const Value: AString_Type): AError; stdcall;
  AUiListBox_SetItemHeight_Proc = function(ListBox: AControl; Value: AInt): AError; stdcall;
  AUiListBox_SetItemIndex_Proc = function(ListBox: AControl; Index: AInteger): AError; stdcall;
  AUiListBox_SetOnDblClick_Proc = function(ListBox: AControl; Value: ACallbackProc): AError; stdcall;
  {$ifdef ADepr}
  AUi_ListBox_AddWS_Proc = function(ListBox: AControl; const Text: AWideString): AInt; stdcall;
  AUi_ListBox_Clear = procedure(ListBox: AControl); stdcall;
  {$endif}
{$ifdef ADepr}
type
  AUi_MainToolBar = AUi_GetMainToolBar_Proc;
  {$IFDEF A01}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
  {$IFDEF A02}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
type
  AUi_MainTrayIcon_Proc = AUi_GetMainTrayIcon_Proc;
{$endif}
type
  AUiMainWindow_AddMenuItem_Proc = function(const ParentItemName, Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMainWindow_AddMenuItemA_Proc = function(ParentItemName, Name, Text: AStr;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMainWindow_GetLeftContainer_Proc = function(): AControl; stdcall;
  AUiMainWindow_GetMainContainer_Proc = function(): AControl; stdcall;
  AUiMainWindow_GetRightContainer_Proc = function(): AControl; stdcall;
  {$ifdef ADepr}
  AUi_MainWindow = AUi_GetMainWindow_Proc;
  AUi_MainWindow_AddMenuItem02WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItem03WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItemWS_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_AddMenuItemWS2_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_GetLeftContainer = AUiMainWindow_GetLeftContainer_Proc;
  AUi_MainWindow_GetMainContainer = AUiMainWindow_GetMainContainer_Proc;
  AUi_MainWindow_GetRightContainer = AUiMainWindow_GetRightContainer_Proc;
  AUi_MainWindow_Set = procedure(Value: AWindow); stdcall;
  AUi_MainWindow_SetA = procedure(Value: AWindow; ToolBar, StatusBar: AControl; Config: AConfig); stdcall;
  {$endif}
type
  AUiMenu_AddItem0_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_AddItem1_Proc = function(Menu: AMenu; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_AddItem2_Proc = function(Parent: AMenuItem; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_AddItem3_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUiMenu_Clear_Proc = function(MenuItem: AMenuItem): AError; stdcall;
  AUiMenu_FindItemByName_Proc = function(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;
  AUiMenu_GetItems_Proc = function(Menu: AMenu): AMenuItem; stdcall;
  AUiMenu_New_Proc = function(MenuType: AInteger): AMenu; stdcall;
  AUiMenu_SetChecked_Proc = function(MenuItem: AMenuItem; Checked: ABoolean): AError; stdcall;
  {$ifdef ADepr}
  AUi_Menu_AddItem2WS02_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem2WS03_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem3_Proc = AUiMenu_AddItem3_Proc;
  AUi_Menu_GetItems = AUiMenu_GetItems_Proc;
  AUi_Menu_New = AUiMenu_New_Proc;
  AUi_MenuItem_Add_Proc = function(MenuItem: AMenuItem; const Name, Text: AString_Type; OnClick: ACallbackProc; ImageID, Weight: Integer): AMenuItem; stdcall;
  AUi_MenuItem_Add2_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUi_MenuItem_FindByName_Proc = function(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;
  AUi_MenuItem_FindByNameWS_Proc = function(MenuItem: AMenuItem; const Name: AWideString): AMenuItem; stdcall;
  AUi_MenuItem_FindByName = AUi_MenuItem_FindByNameWS_Proc;
  {$endif}

type
  { Создает новую вкладку. Возврашает:
    0 - если произошла ошибка, иначе идентификатор новой вкладки (если операция прошла успешно) }
  AUiPageControl_AddPage_Proc = function(PageControl: AControl; const Name, Text: AString_Type): AControl; stdcall;
  AUiPageControl_AddPageA_Proc = function(PageControl: AControl; Name, Text: AStr): AControl; stdcall;
  AUiPageControl_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  { Создает новую вкладку. Возврашает:
    0 - если произошла ошибка, иначе идентификатор новой вкладки (если операция прошла успешно) }
  AUi_PageControl_AddPageWS_Proc = function(PageControl: AControl; const Name, Text: AWideString): AControl; stdcall;
  {$endif}

type
  AUiProgressBar_New_Proc = function(Parent: AControl; Max: AInteger): AControl; stdcall;
  AUiProgressBar_StepIt_Proc = function(ProgressBar: AControl): AInteger; stdcall;

type
  AUiPropertyBox_Add_Proc = function(PropertyBox: AControl; const Caption: AString_Type): AInt; stdcall;
  AUiPropertyBox_Add2_Proc = function(PropertyBox: AControl; const Caption, Text, Hint: AString_Type; EditWidth: AInt): AInt; stdcall;
  AUiPropertyBox_Item_GetValue_Proc = function(PropertyBox: AControl; Index: AInt; out Value: AString_Type): AInt; stdcall;
  AUiPropertyBox_Item_SetValue_Proc = function(PropertyBox: AControl; Index: AInt; const Value: AString_Type): AError; stdcall;
  AUiPropertyBox_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  AUi_PropertyBox_Add = function(PropertyBox: AControl; const Caption: AWideString): Integer; stdcall;
  AUi_PropertyBox_AddA = function(PropertyBox: AControl; const Caption, Text, Hint: AWideString; EditWidth: AInteger): AInteger; stdcall;
  AUi_PropertyBox_Item_GetValue = function(PropertyBox: AControl; Index: Integer): AWideString; stdcall;
  AUi_PropertyBox_Item_SetValue = procedure(PropertyBox: AControl; Index: Integer; const Value: AWideString); stdcall;
  AUi_PropertyBox_New = AUiPropertyBox_New_Proc;
  {$endif}

type
  AUiReport_New_Proc = function(Parent: AControl): AReport; stdcall;
  AUiReport_SetText_Proc = function(Report: AReport; const Value: AString_Type): AError; stdcall;
  {$ifdef ADepr}
  AUi_Report_New = AUiReport_New_Proc;
  AUi_Report_SetText = procedure(Report: AReport; const Value: AWideString); stdcall;
  A_UI_Report_SetText = procedure(Report: AReport; const Value: AString_Type); stdcall;
  {$endif}

type
  AUiReportWin_New_Proc = function(): AWindow; stdcall;
  AUiReportWin_New2_Proc = function(ReportWinType: AInt; const Text: AString_Type): AWindow; stdcall;
  AUiReportWin_ShowReport_Proc = function(const Text: AString_Type; Font: AFont): AError; stdcall;
  {$ifdef ADepr}
  AUi_ReportWin_New = AUiReportWin_New_Proc;
  // ReportWinType - Тип окна отчета: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewA = AUiReportWin_New2_Proc;
  // ReportWinType - Тип окна отчета: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewWS_Proc = function(ReportWinType: AInteger; const Text: AWideString): AWindow; stdcall;
  {$endif}

type
  AUiSpinButton_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUiSpinEdit_New_Proc = function(Parent: AControl): AControl; stdcall;
  AUiSpinEdit_NewEx_Proc = function(Parent: AControl; Value, MinValue, MaxValue: AInteger): AControl; stdcall;

type
  AUiSplitter_New_Proc = function(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;

type
  AUiTextView_AddLine04_Proc = function(TextView: AControl; const Text: AString_Type): AInteger; stdcall;
  { Создает новый элемент редактирования текста
    ViewType
      0 - TMemo
      1 - RichEdit }
  AUiTextView_New_Proc = function(Parent: AControl; ViewType: AInteger): AControl; stdcall;
  AUiTextView_SetFont04_Proc = function(TextView: AControl; const FontName: AString_Type; FontSize: AInteger): AError; stdcall;
  AUiTextView_SetReadOnly04_Proc = function(TextView: AControl; ReadOnly: ABoolean): AError; stdcall;
  AUiTextView_SetScrollBars04_Proc = function(TextView: AControl; ScrollBars: AUiScrollStyle): AError; stdcall;
  AUiTextView_SetWordWrap04_Proc = function(TextView: AControl; Value: ABoolean): AError; stdcall;
  {$ifdef ADepr}
  AUiTextView_AddLineWS_Proc = function(TextView: AControl; const Text: AWideString): AInteger; stdcall;
  AUiTextView_SetFont02_Proc = procedure(TextView: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUiTextView_SetFont03_Proc = procedure(TextView: AControl; const FontName: AString_Type; FontSize: AInteger); stdcall;
  AUiTextView_SetReadOnly02_Proc = procedure(TextView: AControl; ReadOnly: ABoolean); stdcall;
  AUiTextView_SetScrollBars02_Proc = procedure(TextView: AControl; ScrollBars: AInteger); stdcall;
  AUiTextView_SetWordWrap02_Proc = procedure(TextView: AControl; Value: ABoolean); stdcall;
  {$endif}

type
  AUiToolBar_AddButton_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AButton; stdcall;
  AUiToolBar_AddButton1_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      ImageId, Weight: AInteger): AButton; stdcall;
  AUiToolBar_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  AUi_ToolBar_AddButton02_Proc = function(ToolBar: AControl; const Name, Text, Hint: AWideString;
      OnClick: ACallbackProc02; ImageID, Weight: AInteger): AButton; stdcall;
  AUi_ToolBar_AddButton03_Proc = AUiToolBar_AddButton_Proc;
  AUi_ToolBar_New_Proc = AUiToolBar_New_Proc;
  {$endif}

type
  AUiToolMenu_AddNewItem_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      OnClick: ACallbackProc; ImageId, Weight: AInteger): AToolMenu; stdcall;
  AUiToolMenu_AddNewSubMenu_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      ImageId, Weight: AInteger): AToolMenu; stdcall;
  AUiToolMenu_GetSubMenu_Proc = function(Parent: AToolMenu; const Name, Text: AString_Type;
      ImageId, Weight: AInteger): AToolMenu; stdcall;
  AUiToolMenu_New_Proc = function(Parent: AControl): AToolMenu; stdcall;

type
  AUiTrayIcon_Free_Proc = function(TrayIcon: ATrayIcon): AError; stdcall;
  AUiTrayIcon_GetHint_Proc = function(TrayIcon: ATrayIcon; out Value: AString_Type): AError; stdcall;
  AUiTrayIcon_GetMenuItems_Proc = function(TrayIcon: ATrayIcon): AMenuItem; stdcall;
  AUiTrayIcon_GetPopupMenu_Proc = function(TrayIcon: ATrayIcon): AInteger; stdcall;
  AUiTrayIcon_SetHint_Proc = function(TrayIcon: ATrayIcon; const Value: AString_Type): AError; stdcall;
  AUiTrayIcon_SetOnLeftClick_Proc = function(TrayIcon: ATrayIcon; Value: AProc): AError; stdcall;
  AUiTrayIcon_SetOnRightClick_Proc = function(TrayIcon: ATrayIcon; Value: AProc): AError; stdcall;
  AUiTrayIcon_SetPopupMenu_Proc = function(TrayIcon: ATrayIcon; Value: AInteger): AError; stdcall;
  {$ifdef ADepr}
  AUi_TrayIcon_GetMenuItems = AUiTrayIcon_GetMenuItems_Proc;
  {$endif}

type
  AUiTreeView_AddItem_Proc = function(TreeView: AControl; Parent: ATreeNode; Text: AString_Type): ATreeNode; stdcall;
  AUiTreeView_New_Proc = function(Parent: AControl): AControl; stdcall;
  {$ifdef ADepr}
  AUi_TreeView_AddItem = function(TreeView: AControl; Parent: ATreeNode; Text: AWideString): ATreeNode; stdcall;
  {$endif}

type
  AUiWaitWin_New_Proc = function(const Caption, Text: AString_Type; MaxPosition: AInteger): AWindow; stdcall;
  AUiWaitWin_SetMaxPosition_Proc = function(WaitWin: AWindow; MaxPosition: AInteger): AError; stdcall;
  AUiWaitWin_SetPosition_Proc = function(WaitWin: AWindow; Position: AInteger): AError; stdcall;
  AUiWaitWin_SetText_Proc = function(Window: AWindow; const Text: AString_Type): AError; stdcall;
  AUiWaitWin_StepBy_Proc = function(Window: AWindow; Step: AInteger): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_WaitWin_NewWS_Proc = function(const Caption, Text: AWideString; MaxPosition: Integer): AWindow; stdcall;
  AUi_WaitWin_New_Proc = AUiWaitWin_New_Proc;
  AUi_WaitWin_StepBy = AUiWaitWin_StepBy_Proc;
  {$endif}

type
  AUiWindow_Add_Proc = function(Window: AWindow): AError; stdcall;
  AUiWindow_Free_Proc = function(Window: AWindow): AError; stdcall;
  AUiWindow_FreeAndNil_Proc = function(var Window: AWindow): AError; stdcall;
  AUiWindow_GetMenu_Proc = function(Window: AWindow): AMenu; stdcall;
  AUiWindow_LoadConfig_04_Proc = function(Window: AWindow; Config: AConfig): AError; stdcall;
  AUiWindow_LoadConfig2_04_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): AError; stdcall;
  AUiWindow_New_Proc = function(): AControl; stdcall;
  AUiWindow_SaveConfig_04_Proc = function(Window: AWindow; Config: AConfig): AError; stdcall;
  AUiWindow_SaveConfig2_04_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): AError; stdcall;
  AUiWindow_SetFormStyle04_Proc = function(Window: AWindow; FormStyle: AInt): AError; stdcall;
  AUiWindow_SetPosition04_Proc = function(Window: AWindow; Position: AInt): AError; stdcall;
  AUiWindow_SetState_Proc = function(Window: AWindow; State: AInt): AError; stdcall;
  AUiWindow_ShowModal_Proc = function(Window: AWindow): ABoolean; stdcall;
  {$ifdef ADepr}
  AUiWindow_Free02_Proc = procedure(Window: AWindow); stdcall;
  AUiWindow_LoadConfig_02_Proc = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUiWindow_LoadConfig2_02_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
  AUiWindow_LoadConfig2_WS_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  AUiWindow_SaveConfig_02_Proc = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUiWindow_SaveConfig2_02_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
  AUiWindow_SaveConfig2_WS_Proc = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  AUiWindow_SetBorderStyle02_Proc = procedure(Window: AWindow; BorderStyle: AInt); stdcall;
  AUiWindow_SetBorderStyle03_Proc = function(Window: AWindow; BorderStyle: AInt): AError; stdcall;
  AUiWindow_SetFormStyle02_Proc = procedure(Window: AWindow; FormStyle: AInt); stdcall;
  AUiWindow_SetPosition02_Proc = procedure(Window: AWindow; Position: AInt); stdcall;
  {$endif}

implementation

end.
 