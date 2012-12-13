{**
@Abstract User Interface
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 13.12.2012
}
unit AUiMod;

{$IFDEF FPC}
  {$mode delphi}{$h+}
{$ENDIF}

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase,
  AUi, AUiBase, AUiBox, AUiButtons, AUiCalendar, AUiComboBox, AUiControls, AUiControlsA,
  AUiDataSource, AUiDialogs, AUiEdit, AUiGrids, AUiImages, AUiInit, AUiLabels, AUiLabelsEx, AUiListBox,
  AUiMain, AUiMainWindow2, AUiMenus, AUiPageControl, {$IFDEF ADepr}AUiProcRec,{$ENDIF}
  AUiProgressBar, AUiPropertyBox, AUiReports, AUiSpin, AUiSpinEdit, AUiSplitter,
  AUiTextView, AUiToolBar, AUiToolMenu, AUiTrayIcon, AUiTreeView,
  AUiWaitWin, AUiWindows, AUiWindowSettings;

// --- AUi ---

function AUiMod_Boot(): AError; stdcall;

function AUiMod_Fin(): AError; stdcall;

function AUiMod_GetProc(ProcName: AStr): Pointer; stdcall;

function AUiMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  UIProcs: AUIProcs_Type = (
    IsShowApp: UI_GetIsShowApp;                                     // 00
    InitMainTrayIcon: AUi_InitMainTrayIcon;                         // 01
    InitMenus02: AUI.InitMenus02;                                   // 02
    ProcessMessages02: AUI.ProcessMessages02;                       // 03
    IsShowApp_Set: UI_SetIsShowApp;                                 // 04
    ShowHelp02: AUI.ShowHelp02;                                     // 05
    Shutdown02: AUI.Shutdown02;                                     // 06

    Box_New: AUI.Box_New;                                           // 07
    Button_New: AUI.Button_New;                                     // 08

    Control_Free: UI_Control_Free;                                  // 09
    Control_FreeAndNil: UI_Control_FreeAndNil;                      // 10
    Control_GetEnabled: AUI.Control_GetEnabled;                     // 11
    Control_GetHeight: AUI.Control_GetHeight;                       // 12
    Control_GetHintW: UI_Control_GetHint;                           // 13
    Control_GetNameW: UI_Control_GetName;                           // 14
    Control_GetTextW: UI_Control_GetText;                           // 15
    Control_GetVisible: AUI.Control_GetVisible;                     // 16
    Control_GetWidth: AUI.Control_GetWidth;                         // 17
    Control_SetAlign: AUI.Control_SetAlign02;                       // 18
    Control_SetClientSize: UI_Control_SetClientSize;                // 19
    Control_SetColor: AUI.Control_SetColor02;                       // 20
    Control_SetEnabled: UI_Control_SetEnabled;                      // 21
    Control_SetFocus: AUI.Control_SetFocus;                         // 22
    Control_SetHintW: AUI.Control_SetHint02;                        // 23
    Control_SetNameW: AUI.Control_SetName02;                        // 24
    Control_SetOnChange02: AUI.Control_SetOnChange02;               // 25
    Control_SetOnClick02: AUI.Control_SetOnClick02;                 // 26
    Control_SetPosition02: AUI.Control_SetPosition02;               // 27
    Control_SetSize02: AUI.Control_SetSize02;                       // 28
    Control_SetTextWS: AUI.Control_SetText02;                       // 29
    Control_SetVisible: AUI.Control_SetVisible02;                   // 30
    Control_SetWidth: AUI.Control_SetWidth;                         // 31

    DataSource_New: UI_DataSource_New;                              // 32
    DataSource_SetOnDataChange02: AUI.DataSource_SetOnDataChange02; // 33

    Dialog_About: UI_Dialog_About;                                  // 34
    Dialog_Calendar: UI_Dialog_Calendar;                            // 35
    Dialog_Color: UI_Dialog_Color;                                  // 36
    Dialog_DateFilter: UI_Dialog_DateFilter;                        // 37
    Dialog_Error: UI_Dialog_Error;                                  // 38
    Dialog_Font: UI_Dialog_Font;                                    // 39
    Dialog_GetWindow: AUI.Dialog_GetWindow;                         // 40
    Dialog_InputBox: AUI.Dialog_InputBox1WS;                        // 41
    Dialog_InputBox2: AUI.Dialog_InputBox2WS;                       // 42
    Dialog_InputBoxA: AUI.Dialog_InputBox3WS;                       // 43
    Dialog_Login: UI_Dialog_Login;                                  // 44
    Dialog_Message: UI_Dialog_Message;                              // 45
    Dialog_New: AUI.Dialog_New;                                     // 46
    Dialog_OpenFile: UI_Dialog_OpenFile;                            // 47
    Dialog_OpenFileA: UI_Dialog_OpenFileA;                          // 48
    Dialog_SaveFile: UI_Dialog_SaveFile;                            // 49
    Dialog_SaveFileA: UI_Dialog_SaveFileA;                          // 50

    Edit_CheckDate: AUI.Edit_CheckDate;                             // 51
    Edit_CheckFloat: AUI.Edit_CheckFloat;                           // 52
    Edit_CheckInt: AUI.Edit_CheckInt;                               // 53
    Edit_New: AUI.Edit_New;                                         // 54
    Edit_NewA: AUI.Edit_New02;                                      // 55

    Grid_AddColumn: UI_Grid_AddColumn;                              // 56
    Grid_New: AUI.Grid_New;                                         // 57
    Grid_RestoreColProps: AUI.Grid_RestoreColPropsWS02;             // 58
    Grid_SaveColProps: AUI.Grid_SaveColPropsWS02;                   // 59
    Grid_SetColumnWidth: AUI.Grid_SetColumnWidth02;                 // 60
    Grid_SetColumnWidthA: AUI.Grid_SetColumnWidthA;                 // 61
    Grid_SetDataSource: AUI.Grid_SetDataSource02;                   // 62

    Image_New: AUi_Image_New;                                       // 63
    Image_LoadFromFile: UI_Image_LoadFromFile;                      // 64

    Label_New: AUi_Label_New;                                       // 65
    Reserved66: 0; //Label_SetFont: AUI_Control_SetFont1;           // 66

    ListBox_Add: UI_ListBox_Add;                                    // 67
    ListBox_Clear: AUi_ListBox_Clear;                               // 68
    ListBox_New: AUi_ListBox_New;                                   // 69

    MainToolBar: AUI.MainToolBar;                                   // 70
    Reserved71: 0; //MainToolBar_Set: AUI_MainToolBar_Set;          // 71

    MainTrayIcon: AUi_GetMainTrayIcon;                              // 72

    MainWindow: AUI.MainWindow;                                     // 73
    MainWindow_AddMenuItem02: AUI.MainWindow_AddMenuItem02;         // 74
    MainWindow_AddMenuItem2: AUI.MainWindow_AddMenuItem2WS02;       // 75
    MainWindow_GetLeftContainer: AUI.MainWindow_GetLeftContainer;   // 76
    MainWindow_GetMainContainer: AUI.MainWindow_GetMainContainer;   // 77
    MainWindow_GetRightContainer: AUI.MainWindow_GetRightContainer; // 78
    MainWindow_Set: AUI.MainWindow_Set;                             // 79

    Menu_GetItems: AUI.Menu_GetItems;                               // 80
    Menu_New: AUI.Menu_New;                                         // 81

    Menu_AddItem2WS02: AUI.Menu_AddItem2WS02;                       // 82
    Menu_AddItem3: AUI.Menu_AddItem3;                               // 83
    MenuItem_FindByName: AUI.MenuItem_FindByName;                   // 84

    PageControl_AddPageWS: AUI.PageControl_AddPageWS;               // 85
    PageControl_New: AUI.PageControl_New;                           // 86

    ProgressBar_New: AUI.ProgressBar_New;                           // 87
    ProgressBar_StepIt: AUI.ProgressBar_StepIt;                     // 88

    PropertyBox_Add: UI_PropertyBox_Add;                            // 89
    PropertyBox_AddA: UI_PropertyBox_AddA;                          // 90
    PropertyBox_Item_GetValue: UI_PropertyBox_Item_GetValue;        // 91
    PropertyBox_Item_SetValue: UI_PropertyBox_Item_SetValue;        // 92
    PropertyBox_New: AUi_PropertyBox_New;                           // 93

    Splitter_New: AUiSplitter_New;                                  // 94

    TextView_AddLine: UI_TextView_AddLine;                          // 95
    TextView_New: AUi_TextView_New;                                 // 96
    TextView_SetFont: UI_TextView_SetFont;                          // 97
    TextView_SetReadOnly: AUi_TextView_SetReadOnly;                 // 98
    TextView_SetScrollBars: AUi_TextView_SetScrollBars;             // 99
    TextView_SetWordWrap: AUi_TextView_SetWordWrap;                 // 100

    ToolBar_AddButton: AUI.ToolBar_AddButtonWS02;                   // 101
    ToolBar_New: AUI.ToolBar_New;                                   // 102

    TrayIcon_GetMenuItems: AUi_TrayIcon_GetMenuItems;               // 103

    TreeView_AddItemWS: AUI.TreeView_AddItemWS;                     // 104
    TreeView_New: AUI.TreeView_New;                                 // 105

    Window_Free: AUI.Window_Free;                                   // 106
    Window_GetMenu: AUI.Window_GetMenu;                             // 107
    Window_LoadConfig: AUI.Window_LoadConfig;                       // 108
    Window_LoadConfig2: AUI_Window_LoadConfig2P;                    // 109
    Window_New: AUI.Window_New;                                     // 110
    Window_SaveConfig: AUi_Window_SaveConfig;                       // 111
    Window_SaveConfig2: UI_Window_SaveConfig2;                      // 112
    Window_SetBorderStyle02: AUI.Window_SetBorderStyle02;           // 113
    Window_SetFormStyle: Ui_Window_SetFormStyle;                    // 114
    Window_SetPosition: Ui_Window_SetPosition;                      // 115
    Window_ShowModal: Ui_Window_ShowModal;                          // 116

    ReportWin_New: AUI.ReportWin_New;                               // 117
    WaitWin_NewWS: AUI.WaitWin_NewWS;                               // 118
    WaitWin_StepBy: AUI.WaitWin_StepBy;                             // 119
    SetOnMainFormCreate02: AUI.SetOnMainFormCreate02;               // 120
    MainWindow_SetA: AUI.MainWindow_SetA;                           // 121

    ReportWin_NewA: AUI.ReportWin_NewWS;                            // 122
    Calendar_GetDate: AUI.Calendar_GetDate;                         // 123
    Calendar_New: AUI.Calendar_New;                                 // 124
    Calendar_SetMonth: UI_Calendar_SetMonth;                        // 125
    Report_New: AUI.Report_New;                                     // 126
    Report_SetText: UI_Report_SetText;                              // 127
    InitMainMenu: UI_InitMainMenu;                                  // 128
    Control_SetFont1: AUiControl_SetFont1P_Old;                     // 129
    Control_SetFont2: UI_Control_SetFont2;                          // 130
    Dialog_About_New: UI_Dialog_About_New;                          // 131
    Dialog_AddButton: UI_Dialog_AddButton02;                        // 132
    OnDone_Connect: AUI.OnDone_Connect;                             // 133
    Init: AUiMod_Init;                                              // 134
    Fin: AUiMod_Fin;                                                // 135
    InitMenus: AUI.InitMenus;                                       // 136
    ProcessMessages: AUI.ProcessMessages;                           // 137
    ShowHelp: AUI.ShowHelp;                                         // 138
    Shutdown: AUI.Shutdown;                                         // 139
    Grid_ClearA: AUI.Grid_ClearA;                                   // 140
    Grid_Clear: AUI.Grid_Clear;                                     // 141
    Menu_AddItem2WS: AUI.Menu_AddItem2WS;                           // 142
    Grid_FindInt: AUI.Grid_FindInt;                                 // 143

    Control_SetOnChange: AUI.Control_SetOnChange;                   // 144
    Grid_DeleteRow2: AUI.Grid_DeleteRow2;                           // 145
    ShowHelp2WS: AUI.ShowHelp2WS;                                   // 146
    Window_SetBorderStyle: AUI.Window_SetBorderStyle;               // 147
    MainWindow_AddMenuItem03WS: AUI.MainWindow_AddMenuItem03WS;     // 148
    OnDone_Disconnect03: AUI.OnDone_Disconnect;                     // 149
    MainWindow_AddMenuItem: AUiMainWindow_AddMenuItem;              // 150
    MainWindow_AddMenuItemA: AUiMainWindow_AddMenuItemA;            // 151
    Reserved152: 0;
    Reserved153: 0;
    Reserved154: 0;
    Reserved155: 0;
    Reserved156: 0;
    Reserved157: 0;
    Reserved158: 0;
    Reserved159: 0;

    Reserved160: 0;
    Reserved161: 0;
    Reserved162: 0;
    Reserved163: 0;
    Reserved164: 0;
    Reserved165: 0;
    Reserved166: 0;
    Reserved167: 0;
    Reserved168: 0;
    Reserved169: 0;
    Reserved170: 0;
    Reserved171: 0;
    Reserved172: 0;
    Reserved173: 0;
    Reserved174: 0;
    Reserved175: 0;

    Reserved176: 0;
    Reserved177: 0;
    Reserved178: 0;
    Reserved179: 0;
    Reserved180: 0;
    Reserved181: 0;
    Reserved182: 0;
    Reserved183: 0;
    Reserved184: 0;
    Reserved185: 0;
    Reserved186: 0;
    Reserved187: 0;
    Reserved188: 0;
    Reserved189: 0;
    Reserved190: 0;
    Reserved191: 0;

    Reserved192: 0;
    Reserved193: 0;
    Reserved194: 0;
    Reserved195: 0;
    Reserved196: 0;
    Reserved197: 0;
    Reserved198: 0;
    Reserved199: 0;
    Reserved200: 0;
    Reserved201: 0;
    Reserved202: 0;
    Reserved203: 0;
    Reserved204: 0;
    Reserved205: 0;
    Reserved206: 0;
    Reserved207: 0;

    Reserved208: 0;
    Reserved209: 0;
    Reserved210: 0;
    Reserved211: 0;
    Reserved212: 0;
    Reserved213: 0;
    Reserved214: 0;
    Reserved215: 0;
    Reserved216: 0;
    Reserved217: 0;
    Reserved218: 0;
    Reserved219: 0;
    Reserved220: 0;
    Reserved221: 0;
    Reserved222: 0;
    Reserved223: 0;

    Reserved224: 0;
    Reserved225: 0;
    Reserved226: 0;
    Reserved227: 0;
    Reserved228: 0;
    Reserved229: 0;
    Reserved230: 0;
    Reserved231: 0;
    Reserved232: 0;
    Reserved233: 0;
    Reserved234: 0;
    Reserved235: 0;
    Reserved236: 0;
    Reserved237: 0;
    Reserved238: 0;
    Reserved239: 0;

    Reserved240: 0;
    Reserved241: 0;
    Reserved242: 0;
    Reserved243: 0;
    Reserved244: 0;
    Reserved245: 0;
    Reserved246: 0;
    Reserved247: 0;
    Reserved248: 0;
    Reserved249: 0;
    Reserved250: 0;
    Reserved251: 0;
    Reserved252: 0;
    Reserved253: 0;
    Reserved254: 0;
    Reserved255: 0;
    );
{$ENDIF ADepr}

implementation

const
  AUi_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AUi_Version;
    Uid: AUi_Uid;
    Name: AUi_Name;
    Description: nil;
    Init: AUiMod_Init;
    Fin: AUiMod_Fin;
    GetProc: AUiMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(UiProcs){$ELSE}nil{$ENDIF};
    );

// --- AUi ---

function AUiMod_Boot(): AError;
begin
  Result := AModule_Register(Module);
end;

function AUiMod_Fin(): AError;
begin
  Result := AUi_Fin();
end;

function AUiMod_GetProc(ProcName: AStr): Pointer;
begin
  // --- Main ---
  if (ProcName = 'AUi_CreateMainForm') then
    Result := Addr(AUi_CreateMainForm)
  else if (ProcName = 'AUi_Fin') then
    Result := Addr(AUi_Fin)
  else if (ProcName = 'AUi_GetMainMenuItem') then
    Result := Addr(AUi_GetMainMenuItem)
  else if (ProcName = 'AUi_GetMainToolBar') then
    Result := Addr(AUi_GetMainToolBar)
  else if (ProcName = 'AUi_GetMainTrayIcon') then
    Result := Addr(AUi_GetMainTrayIcon)
  else if (ProcName = 'AUi_GetMainWindow') then
    Result := Addr(AUi_GetMainWindow)
  else if (ProcName = 'AUi_Init') then
    Result := Addr(AUi_Init)
  else if (ProcName = 'AUi_Run') then
    Result := Addr(AUi_Run)
  else if (ProcName = 'AUi_SetHideOnClose') then
    Result := Addr(AUi_SetHideOnClose)
  else if (ProcName = 'AUi_SetMainToolBar') then
    Result := Addr(AUi_SetMainToolBar)
  else if (ProcName = 'AUi_SetProgramState') then
    Result := Addr(AUi_SetProgramState)
  else if (ProcName = 'AUi_ShellExecute') then
    Result := Addr(AUi_ShellExecute)
  else if (ProcName = 'AUi_ShellExecuteA') then
    Result := Addr(AUi_ShellExecuteA)
  else if (ProcName = 'AUi_ShowHelp') then
    Result := Addr(AUi_ShowHelp)
  else if (ProcName = 'AUi_ShowHelp2') then
    Result := Addr(AUi_ShowHelp2)
  else if (ProcName = 'AUi_Shutdown') then
    Result := Addr(AUi_Shutdown)
  // --- Dialogs ---
  else if (ProcName = 'AUi_ExecuteAboutDialog') then
    Result := Addr(AUi_ExecuteAboutDialog)
  else if (ProcName = 'AUi_ExecuteCalendarDialog') then
    Result := Addr(AUi_ExecuteCalendarDialog)
  else if (ProcName = 'AUi_ExecuteColorDialog') then
    Result := Addr(AUi_ExecuteColorDialog)
  else if (ProcName = 'AUi_ExecuteDateFilterDialog') then
    Result := Addr(AUi_ExecuteDateFilterDialog)
  else if (ProcName = 'AUi_ExecuteErrorDialog') then
    Result := Addr(AUi_ExecuteErrorDialog)
  else if (ProcName = 'AUi_ExecuteErrorDialogA') then
    Result := Addr(AUi_ExecuteErrorDialogA)
  else if (ProcName = 'AUi_ExecuteFontDialog') then
    Result := Addr(AUi_ExecuteFontDialog)
  else if (ProcName = 'AUi_ExecuteFontDialogA') then
    Result := Addr(AUi_ExecuteFontDialogA)
  else if (ProcName = 'AUi_ExecuteInputBox1') then
    Result := Addr(AUi_ExecuteInputBox1)
  else if (ProcName = 'AUi_ExecuteInputBox1A') then
    Result := Addr(AUi_ExecuteInputBox1A)
  else if (ProcName = 'AUi_ExecuteInputBox2') then
    Result := Addr(AUi_ExecuteInputBox2)
  else if (ProcName = 'AUi_ExecuteInputBox2A') then
    Result := Addr(AUi_ExecuteInputBox2A)
  else if (ProcName = 'AUi_ExecuteMessageDialog1A') then
    Result := Addr(AUi_ExecuteMessageDialog1A)
  else if (ProcName = 'AUi_ExecutePrinterSetupDialog') then
    Result := Addr(AUi_ExecutePrinterSetupDialog)
  else if (ProcName = 'AUi_InitAboutDialog1') then
    Result := Addr(AUi_InitAboutDialog1)
  else if (ProcName = 'AUi_InitAboutDialog2') then
    Result := Addr(AUi_InitAboutDialog2)
  else if (ProcName = 'AUi_NewAboutDialog') then
    Result := Addr(AUi_NewAboutDialog)
  else if (ProcName = 'AUi_NewDialog') then
    Result := Addr(AUi_NewDialog)
  // --- Box ---
  else if (ProcName = 'AUiBox_New') then
    Result := Addr(AUiBox_New)
  // --- Button ---
  else if (ProcName = 'AUiButton_New') then
    Result := Addr(AUiButton_New)
  else if (ProcName = 'AUiButton_SetKind') then
    Result := Addr(AUiButton_SetKind)
  // --- Calendar ---
  else if (ProcName = 'AUiCalendar_GetDate') then
    Result := Addr(AUiCalendar_GetDate)
  else if (ProcName = 'AUiCalendar_New') then
    Result := Addr(AUiCalendar_New)
  else if (ProcName = 'AUiCalendar_SetMonth') then
    Result := Addr(AUiCalendar_SetMonth)
  // --- ComboBox ---
  else if (ProcName = 'AUiComboBox_Add') then
    Result := Addr(AUiComboBox_Add)
  else if (ProcName = 'AUiComboBox_AddA') then
    Result := Addr(AUiComboBox_AddA)
  else if (ProcName = 'AUiComboBox_GetItemIndex') then
    Result := Addr(AUiComboBox_GetItemIndex)
  else if (ProcName = 'AUiComboBox_New') then
    Result := Addr(AUiComboBox_New)
  else if (ProcName = 'AUiComboBox_New2') then
    Result := Addr(AUiComboBox_New2)
  else if (ProcName = 'AUiComboBox_SetItemIndex') then
    Result := Addr(AUiComboBox_SetItemIndex)
  // --- Control ---
  else if (ProcName = 'AUiControl_Free') then
    Result := Addr(AUiControl_Free)
  else if (ProcName = 'AUiControl_FreeAndNil') then
    Result := Addr(AUiControl_FreeAndNil)
  else if (ProcName = 'AUiControl_GetColor') then
    Result := Addr(AUiControl_GetColor)
  else if (ProcName = 'AUiControl_GetEnabled') then
    Result := Addr(AUiControl_GetEnabled)
  else if (ProcName = 'AUiControl_GetHeight') then
    Result := Addr(AUiControl_GetHeight)
  else if (ProcName = 'AUiControl_GetHint') then
    Result := Addr(AUiControl_GetHint)
  else if (ProcName = 'AUiControl_GetHintA') then
    Result := Addr(AUiControl_GetHintA)
  else if (ProcName = 'AUiControl_GetMenu') then
    Result := Addr(AUiControl_GetMenu)
  else if (ProcName = 'AUiControl_GetName') then
    Result := Addr(AUiControl_GetName)
  else if (ProcName = 'AUiControl_GetNameA') then
    Result := Addr(AUiControl_GetNameA)
  else if (ProcName = 'AUiControl_GetPosition') then
    Result := Addr(AUiControl_GetPosition)
  else if (ProcName = 'AUiControl_GetText') then
    Result := Addr(AUiControl_GetText)
  else if (ProcName = 'AUiControl_GetVisible') then
    Result := Addr(AUiControl_GetVisible)
  else if (ProcName = 'AUiControl_GetWidth') then
    Result := Addr(AUiControl_GetWidth)
  else if (ProcName = 'AUiControl_SetAlign') then
    Result := Addr(AUiControl_SetAlign)
  else if (ProcName = 'AUiControl_SetAnchors') then
    Result := Addr(AUiControl_SetAnchors)
  else if (ProcName = 'AUiControl_SetClientSize') then
    Result := Addr(AUiControl_SetClientSize)
  else if (ProcName = 'AUiControl_SetColor') then
    Result := Addr(AUiControl_SetColor)
  else if (ProcName = 'AUiControl_SetEnabled') then
    Result := Addr(AUiControl_SetEnabled)
  else if (ProcName = 'AUiControl_SetFocus') then
    Result := Addr(AUiControl_SetFocus)
  else if (ProcName = 'AUiControl_SetFont1A') then
    Result := Addr(AUiControl_SetFont1A)
  else if (ProcName = 'AUiControl_SetHeight') then
    Result := Addr(AUiControl_SetHeight)
  else if (ProcName = 'AUiControl_SetHint') then
    Result := Addr(AUiControl_SetHint)
  else if (ProcName = 'AUiControl_SetHintA') then
    Result := Addr(AUiControl_SetHintA)
  else if (ProcName = 'AUiControl_SetName') then
    Result := Addr(AUiControl_SetName)
  else if (ProcName = 'AUiControl_SetNameA') then
    Result := Addr(AUiControl_SetNameA)
  else if (ProcName = 'AUiControl_SetOnClick') then
    Result := Addr(AUiControl_SetOnClick)
  else if (ProcName = 'AUiControl_SetPosition') then
    Result := Addr(AUiControl_SetPosition)
  else if (ProcName = 'AUiControl_SetSize') then
    Result := Addr(AUiControl_SetSize)
  else if (ProcName = 'AUiControl_SetTabStop') then
    Result := Addr(AUiControl_SetTabStop)
  else if (ProcName = 'AUiControl_SetText') then
    Result := Addr(AUiControl_SetText)
  else if (ProcName = 'AUiControl_SetTextA') then
    Result := Addr(AUiControl_SetTextA)
  else if (ProcName = 'AUiControl_SetVisible') then
    Result := Addr(AUiControl_SetVisible)
  else if (ProcName = 'AUiControl_SetWidth') then
    Result := Addr(AUiControl_SetWidth)
  else if (ProcName = 'AUiControl_SetOnChange') then
    Result := Addr(AUiControl_SetOnChange)
  // --- Edit ---
  else if (ProcName = 'AUiEdit_CheckDate') then
    Result := Addr(AUiEdit_CheckDate)
  else if (ProcName = 'AUiEdit_CheckFloat') then
    Result := Addr(AUiEdit_CheckFloat)
  else if (ProcName = 'AUiEdit_CheckFloat32') then
    Result := Addr(AUiEdit_CheckFloat32)
  else if (ProcName = 'AUiEdit_CheckFloat64') then
    Result := Addr(AUiEdit_CheckFloat64)
  else if (ProcName = 'AUiEdit_CheckInt') then
    Result := Addr(AUiEdit_CheckInt)
  else if (ProcName = 'AUiEdit_New') then
    Result := Addr(AUiEdit_New)
  else if (ProcName = 'AUiEdit_NewEx') then
    Result := Addr(AUiEdit_NewEx)
  // --- Grid ---
  else if (ProcName = 'AUiGrid_Clear') then
    Result := Addr(AUiGrid_Clear)
  else if (ProcName = 'AUiGrid_Clear2') then
    Result := Addr(AUiGrid_Clear2)
  else if (ProcName = 'AUiGrid_DeleteRow') then
    Result := Addr(AUiGrid_DeleteRow)
  else if (ProcName = 'AUiGrid_DeleteRow2') then
    Result := Addr(AUiGrid_DeleteRow2)
  else if (ProcName = 'AUiGrid_FindInt') then
    Result := Addr(AUiGrid_FindInt)
  else if (ProcName = 'AUiGrid_New') then
    Result := Addr(AUiGrid_New)
  else if (ProcName = 'AUiGrid_RestoreColProps') then
    Result := Addr(AUiGrid_RestoreColProps)
  else if (ProcName = 'AUiGrid_RestoreColPropsA') then
    Result := Addr(AUiGrid_RestoreColPropsA)
  else if (ProcName = 'AUiGrid_RowDown') then
    Result := Addr(AUiGrid_RowDown)
  else if (ProcName = 'AUiGrid_RowUp') then
    Result := Addr(AUiGrid_RowUp)
  else if (ProcName = 'AUiGrid_SaveColProps') then
    Result := Addr(AUiGrid_SaveColProps)
  else if (ProcName = 'AUiGrid_SaveColPropsA') then
    Result := Addr(AUiGrid_SaveColPropsA)
  else if (ProcName = 'AUiGrid_SetColumnWidth') then
    Result := Addr(AUiGrid_SetColumnWidth)
  else if (ProcName = 'AUiGrid_SetColumnWidth2') then
    Result := Addr(AUiGrid_SetColumnWidth2)
  else if (ProcName = 'AUiGrid_SetDataSource') then
    Result := Addr(AUiGrid_SetDataSource)
  else if (ProcName = 'AUiGrid_SetRowCount') then
    Result := Addr(AUiGrid_SetRowCount)
  // --- Image ---
  else if (ProcName = 'AUiImage_LoadFromFile') then
    Result := Addr(AUiImage_LoadFromFile)
  else if (ProcName = 'AUiImage_LoadFromFileA') then
    Result := Addr(AUiImage_LoadFromFileA)
  else if (ProcName = 'AUiImage_New') then
    Result := Addr(AUiImage_New)
  // --- Label ---
  else if (ProcName = 'AUiLabel_New') then
    Result := Addr(AUiLabel_New)
  else if (ProcName = 'AUiLabel_SetAlignment') then
    Result := Addr(AUiLabel_SetAlignment)
  else if (ProcName = 'AUiLabel_SetAutoSize') then
    Result := Addr(AUiLabel_SetAutoSize)
  else if (ProcName = 'AUiLabel_SetWordWrap') then
    Result := Addr(AUiLabel_SetWordWrap)
  else if (ProcName = 'AUiLabel_New2') then
    Result := Addr(AUiLabel_New2)
  // --- ListBox ---
  else if (ProcName = 'AUiListBox_Add') then
    Result := Addr(AUiListBox_Add)
  else if (ProcName = 'AUiListBox_Clear') then
    Result := Addr(AUiListBox_Clear)
  else if (ProcName = 'AUiListBox_DeleteItem') then
    Result := Addr(AUiListBox_DeleteItem)
  else if (ProcName = 'AUiListBox_GetCount') then
    Result := Addr(AUiListBox_GetCount)
  else if (ProcName = 'AUiListBox_GetItem') then
    Result := Addr(AUiListBox_GetItem)
  else if (ProcName = 'AUiListBox_GetItemIndex') then
    Result := Addr(AUiListBox_GetItemIndex)
  else if (ProcName = 'AUiListBox_New') then
    Result := Addr(AUiListBox_New)
  else if (ProcName = 'AUiListBox_New2') then
    Result := Addr(AUiListBox_New2)
  else if (ProcName = 'AUiListBox_SetItem') then
    Result := Addr(AUiListBox_SetItem)
  else if (ProcName = 'AUiListBox_SetItemHeight') then
    Result := Addr(AUiListBox_SetItemHeight)
  else if (ProcName = 'AUiListBox_SetItemIndex') then
    Result := Addr(AUiListBox_SetItemIndex)
  else if (ProcName = 'AUiListBox_SetOnDblClick') then
    Result := Addr(AUiListBox_SetOnDblClick)
  // --- MainWindow ---
  else if (ProcName = 'AUiMainWindow_AddMenuItem') then
    Result := Addr(AUiMainWindow_AddMenuItem)
  else if (ProcName = 'AUiMainWindow_AddMenuItemA') then
    Result := Addr(AUiMainWindow_AddMenuItemA)
  // --- Menu ---
  else if (ProcName = 'AUiMenu_AddItem0') then
    Result := Addr(AUiMenu_AddItem0)
  else if (ProcName = 'AUiMenu_AddItem1') then
    Result := Addr(AUiMenu_AddItem1)
  else if (ProcName = 'AUiMenu_AddItem2') then
    Result := Addr(AUiMenu_AddItem2)
  else if (ProcName = 'AUiMenu_AddItem3') then
    Result := Addr(AUiMenu_AddItem3)
  else if (ProcName = 'AUiMenu_GetItems') then
    Result := Addr(AUiMenu_GetItems)
  else if (ProcName = 'AUiMenu_New') then
    Result := Addr(AUiMenu_New)
  // --- PageControl ---
  else if (ProcName = 'AUiPageControl_AddPage') then
    Result := Addr(AUiPageControl_AddPage)
  else if (ProcName = 'AUiPageControl_AddPageA') then
    Result := Addr(AUiPageControl_AddPageA)
  else if (ProcName = 'AUiPageControl_New') then
    Result := Addr(AUiPageControl_New)
  // --- ProgressBar ---
  else if (ProcName = 'AUiProgressBar_New') then
    Result := Addr(AUiProgressBar_New)
  else if (ProcName = 'AUiProgressBar_StepIt') then
    Result := Addr(AUiProgressBar_StepIt)
  // --- PropertyBox ---
  else if (ProcName = 'AUiPropertyBox_Add') then
    Result := Addr(AUiPropertyBox_Add)
  else if (ProcName = 'AUiPropertyBox_Add2') then
    Result := Addr(AUiPropertyBox_Add2)
  else if (ProcName = 'AUiPropertyBox_Item_GetValue') then
    Result := Addr(AUiPropertyBox_Item_GetValue)
  else if (ProcName = 'AUiPropertyBox_Item_SetValue') then
    Result := Addr(AUiPropertyBox_Item_SetValue)
  else if (ProcName = 'AUiPropertyBox_New') then
    Result := Addr(AUiPropertyBox_New)
  // --- Report ---
  else if (ProcName = 'AUiReport_New') then
    Result := Addr(AUiReport_New)
  else if (ProcName = 'AUiReport_SetText') then
    Result := Addr(AUiReport_SetText)
  // --- SpinButton ---
  else if (ProcName = 'AUiSpinButton_New') then
    Result := Addr(AUiSpinButton_New)
  // --- SpinEdit ---
  else if (ProcName = 'AUiSpinEdit_New') then
    Result := Addr(AUiSpinEdit_New)
  else if (ProcName = 'AUiSpinEdit_NewEx') then
    Result := Addr(AUiSpinEdit_NewEx)
  // --- Splitter ---
  else if (ProcName = 'AUiSplitter_New') then
    Result := Addr(AUiSplitter_New)
  // --- TextView ---
  else if (ProcName = 'AUiTextView_AddLine') then
    Result := Addr(AUiTextView_AddLine)
  else if (ProcName = 'AUiTextView_New') then
    Result := Addr(AUiTextView_New)
  else if (ProcName = 'AUiTextView_SetFont') then
    Result := Addr(AUiTextView_SetFont)
  else if (ProcName = 'AUiTextView_SetReadOnly') then
    Result := Addr(AUiTextView_SetReadOnly)
  else if (ProcName = 'AUiTextView_SetScrollBars') then
    Result := Addr(AUiTextView_SetScrollBars)
  else if (ProcName = 'AUiTextView_SetWordWrap') then
    Result := Addr(AUiTextView_SetWordWrap)
  // --- ToolBar ---
  else if (ProcName = 'AUiToolBar_AddButton') then
    Result := Addr(AUiToolBar_AddButton)
  else if (ProcName = 'AUiToolBar_AddButton1') then
    Result := Addr(AUiToolBar_AddButton1)
  else if (ProcName = 'AUiToolBar_New') then
    Result := Addr(AUiToolBar_New)
  // --- ToolMenu ---
  else if (ProcName = 'AUiToolMenu_AddNewItem') then
    Result := Addr(AUiToolMenu_AddNewItem)
  else if (ProcName = 'AUiToolMenu_AddNewSubMenu') then
    Result := Addr(AUiToolMenu_AddNewSubMenu)
  else if (ProcName = 'AUiToolMenu_GetSubMenu') then
    Result := Addr(AUiToolMenu_GetSubMenu)
  else if (ProcName = 'AUiToolMenu_New') then
    Result := Addr(AUiToolMenu_New)
  // --- TrayIcon ---
  else if (ProcName = 'AUiTrayIcon_Free') then
    Result := Addr(AUiTrayIcon_Free)
  else if (ProcName = 'AUiTrayIcon_GetHint') then
    Result := Addr(AUiTrayIcon_GetHint)
  else if (ProcName = 'AUiTrayIcon_GetMenuItems') then
    Result := Addr(AUiTrayIcon_GetMenuItems)
  else if (ProcName = 'AUiTrayIcon_GetPopupMenu') then
    Result := Addr(AUiTrayIcon_GetPopupMenu)
  else if (ProcName = 'AUiTrayIcon_SetHint') then
    Result := Addr(AUiTrayIcon_SetHint)
  else if (ProcName = 'AUiTrayIcon_SetOnLeftClick') then
    Result := Addr(AUiTrayIcon_SetOnLeftClick)
  else if (ProcName = 'AUiTrayIcon_SetOnRightClick') then
    Result := Addr(AUiTrayIcon_SetOnRightClick)
  else if (ProcName = 'AUiTrayIcon_SetPopupMenu') then
    Result := Addr(AUiTrayIcon_SetPopupMenu)
  // --- TreeView ---
  else if (ProcName = 'AUiTreeView_AddItem') then
    Result := Addr(AUiTreeView_AddItem)
  else if (ProcName = 'AUiTreeView_New') then
    Result := Addr(AUiTreeView_New)
  // --- WaitWin ---
  else if (ProcName = 'AUiWaitWin_New') then
    Result := Addr(AUiWaitWin_New)
  else if (ProcName = 'AUiWaitWin_SetMaxPosition') then
    Result := Addr(AUiWaitWin_SetMaxPosition)
  else if (ProcName = 'AUiWaitWin_SetPosition') then
    Result := Addr(AUiWaitWin_SetPosition)
  else if (ProcName = 'AUiWaitWin_SetText') then
    Result := Addr(AUiWaitWin_SetText)
  else if (ProcName = 'AUiWaitWin_StepBy') then
    Result := Addr(AUiWaitWin_StepBy)
  // --- Window ---
  else if (ProcName = 'AUiWindow_Add') then
    Result := Addr(AUiWindow_Add)
  else if (ProcName = 'AUiWindow_Free') then
    Result := Addr(AUiWindow_Free)
  else if (ProcName = 'AUiWindow_FreeAndNil') then
    Result := Addr(AUiWindow_FreeAndNil)
  else if (ProcName = 'AUiWindow_GetMenu') then
    Result := Addr(AUiWindow_GetMenu)
  else if (ProcName = 'AUiWindow_New') then
    Result := Addr(AUiWindow_New)
  else if (ProcName = 'AUiWindow_SetBorderStyle') then
    Result := Addr(AUiWindow_SetBorderStyle)
  else if (ProcName = 'AUiWindow_SetFormStyle') then
    Result := Addr(AUiWindow_SetFormStyle)
  else if (ProcName = 'AUiWindow_SetPosition') then
    Result := Addr(AUiWindow_SetPosition)
  else if (ProcName = 'AUiWindow_SetState') then
    Result := Addr(AUiWindow_SetState)
  else if (ProcName = 'AUiWindow_ShowModal') then
    Result := Addr(AUiWindow_ShowModal)
  // --- WindowSettings ---
  else if (ProcName = 'AUiWindow_LoadConfig') then
    Result := Addr(AUiWindow_LoadConfig)
  else if (ProcName = 'AUiWindow_LoadConfig2') then
    Result := Addr(AUiWindow_LoadConfig2)
  else if (ProcName = 'AUiWindow_SaveConfig') then
    Result := Addr(AUiWindow_SaveConfig)
  else if (ProcName = 'AUiWindow_SaveConfig2') then
    Result := Addr(AUiWindow_SaveConfig2)
  else
    Result := nil;
end;

function AUiMod_Init(): AError;
begin
  {if (ARuntime.Modules_InitByUid(ASystem_Uid) < 0) then
  begin
    Result := -1;
    Exit;
  end;}

  //FOnDone := AEvents.Event_NewW(0, nil);

  //ARuntime.Modules_InitByUid(ASystem_Uid);

  Result := AUi_Init();
end;

{ Menu }

{
function A_UI_Menu_GetItems(Menu: AMenu): AMenuItem; stdcall;
begin
  try
    Result := UI_Menu_GetItems(Menu);
  except
    Result := 0;
  end;
end;

function A_UI_Menu_New(MenuType: AInteger): AMenu; stdcall;
begin
  try
    Result := UI_Menu_New(MenuType);
  except
    Result := 0;
  end;
end;
}

{ MenuItem }

{
function A_UI_MenuItem_Add2(Parent: AMenuItem; MenuItem: AMenuItem; Weight: Integer): AMenuItem; stdcall;
begin
  try
    Result := UI_MenuItem_Add2(Parent, MenuItem, Weight);
  except
    Result := 0;
  end;
end;

function A_UI_MenuItem_FindByName(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;
begin
  try
    Result := UI_MenuItem_FindByName(MenuItem, AStrings.String_ToWideString(Name));
  except
    Result := 0;
  end;
end;
}

{ Objects }

{
function A_UI_Object_Add(Value: AInteger): AInteger; stdcall;
begin
  try
    Result := UI_Object_Add(Value);
  except
    Result := 0;
  end;
end;
}

{ PageControl }

{
function A_UI_PageControl_AddPage(PageControl: AControl; const Name, Text: AString_Type): AControl; stdcall;
begin
  try
    Result := UI_PageControl_AddPage(PageControl, AStrings.String_ToWideString(Name), AStrings.String_ToWideString(Text));
  except
    Result := 0;
  end;
end;

function A_UI_PageControl_New(Parent: AControl): AControl; stdcall;
begin
  try
    Result := UI_PageControl_New(Parent);
  except
    Result := 0;
  end;
end;
}

{ ProgressBar }

{
function A_UI_ProgressBar_New(Parent: AControl; Max: AInteger): AControl; stdcall;
begin
  try
    Result := UI_ProgressBar_New(Parent, Max);
  except
    Result := 0;
  end;
end;

function A_UI_ProgressBar_StepIt(ProgressBar: AControl): AInteger; stdcall;
begin
  try
    Result := UI_ProgressBar_StepIt(ProgressBar);
  except
    Result := 0;
  end;
end;
}

initialization
  {$IFDEF USEA0}UI_SetProcs(UIProcs);{$ENDIF}
end.
