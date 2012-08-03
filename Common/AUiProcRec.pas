{**
@Abstract User interface proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 30.07.2012
}
unit AUiProcRec;

{$IFNDEF A01}
  {$IFNDEF A02}
    {$DEFINE A03}
  {$ENDIF}
{$ENDIF}

{$IFDEF A03} {$DEFINE A03UP} {$ENDIF}

interface

uses
  ABase, AUiBase, AUiProcTypes;

type
  PUiProcs = ^AUiProcs_Type;
  AUiProcs_Type = packed record { A02: 144x4 = 576 bytes; A03: 256x4 = 1024 bytes }
    IsShowApp: AUi_IsShowApp_Proc;                                  // 00
    InitMainTrayIcon: AUi_InitMainTrayIcon_Proc;                    // 01
    InitMenus02: AUi_InitMenus02_Proc;                              // 02
    ProcessMessages02: AUi_ProcessMessages02_Proc;                  // 03
    IsShowApp_Set: AUi_IsShowApp_Set_Proc;                          // 04
    ShowHelp02: AUi_ShowHelp02_Proc;                                // 05
    Shutdown02: AUi_Shutdown02_Proc;                                // 06

    Box_New: AUi_Box_New;                                           // 07
    Button_New: AUi_Button_New;                                     // 08

    Control_Free: AUi_Control_Free_Proc;                            // 09
    Control_FreeAndNil: AUi_Control_FreeAndNil_Proc;                // 10
    Control_GetEnabled: AUi_Control_GetEnabled_Proc;                // 11
    Control_GetHeight: AUi_Control_GetHeight_Proc;                  // 12
    Control_GetHintW: AUI_Control_GetHintW;                         // 13
    Control_GetNameW: AUI_Control_GetNameW;                         // 14
    Control_GetTextW: AUI_Control_GetTextW;                         // 15
    Control_GetVisible: AUi_Control_GetVisible_Proc;                // 16
    Control_GetWidth: AUi_Control_GetWidth_Proc;                    // 17
    Control_SetAlign: AUi_Control_SetAlign_Proc;                    // 18
    Control_SetClientSize: AUi_Control_SetClientSize_Proc;          // 19
    Control_SetColor: AUi_Control_SetColor_Proc;                    // 20
    Control_SetEnabled: AUi_Control_SetEnabled_Proc;                // 21
    Control_SetFocus: AUi_Control_SetFocus_Proc;                    // 22
    Control_SetHintW: AUi_Control_SetHintW;                         // 23
    Control_SetNameW: AUi_Control_SetNameW;                         // 24
    Control_SetOnChange02: AUi_Control_SetOnChange02;               // 25
    Control_SetOnClick02: AUi_Control_SetOnClick02;                 // 26
    Control_SetPosition: AUi_Control_SetPosition_Proc;              // 27
    Control_SetSize: AUi_Control_SetSize_Proc;                      // 28
    Control_SetTextWS: AUi_Control_SetTextWS_Proc;                  // 29
    Control_SetVisible: AUi_Control_SetVisible_Proc;                // 30
    Control_SetWidth: AUi_Control_SetWidth_Proc;                    // 31

    DataSource_New: AUi_DataSource_New_Proc;                        // 32
    DataSource_SetOnDataChange02: AUi_DataSource_SetOnDataChange02_Proc; // 33

    Dialog_About: AUi_Dialog_About_Proc;                            // 34
    Dialog_Calendar: AUi_Dialog_Calendar_Proc;                      // 35
    Dialog_Color: AUi_Dialog_Color_Proc;                            // 36
    Dialog_DateFilter: AUi_Dialog_DateFilter_Proc;                  // 37
    Dialog_Error: AUi_Dialog_ErrorWS_Proc;                          // 38
    Dialog_Font: AUi_Dialog_FontWS_Proc;                            // 39
    Dialog_GetWindow: AUi_Dialog_GetWindow_Proc;                    // 40
    Dialog_InputBox: AUi_Dialog_InputBoxWS_Proc;                    // 41
    Dialog_InputBox2: AUi_Dialog_InputBox2WS_Proc;                  // 42
    Dialog_InputBoxA: AUi_Dialog_InputBoxAWS_Proc;                  // 43
    Dialog_Login: AUi_Dialog_LoginWS_Proc;                          // 44
    Dialog_Message: AUi_Dialog_MessageWS_Proc;                      // 45
    Dialog_New: AUi_Dialog_New_Proc;                                // 46
    Dialog_OpenFile: AUi_Dialog_OpenFileWS_Proc;                    // 47
    Dialog_OpenFileA: AUi_Dialog_OpenFileAWS_Proc;                  // 48
    Dialog_SaveFile: AUi_Dialog_SaveFileWS_Proc;                    // 49
    Dialog_SaveFileA: AUi_Dialog_SaveFileAWS_Proc;                  // 50

    Edit_CheckDate: AUi_Edit_CheckDate;                             // 51
    Edit_CheckFloat: AUi_Edit_CheckFloat;                           // 52
    Edit_CheckInt: AUi_Edit_CheckInt;                               // 53
    Edit_New: AUi_Edit_New;                                         // 54
    Edit_NewA: AUi_Edit_New02_Proc;                                 // 55

    Grid_AddColumn: AUi_Grid_AddColumn;                             // 56
    Grid_New: AUi_Grid_New;                                         // 57
    Grid_RestoreColProps: AUi_Grid_RestoreColPropsWS_Proc;          // 58
    Grid_SaveColProps: AUi_Grid_SaveColPropsWS02_Proc;              // 59
    Grid_SetColumnWidth: AUi_Grid_SetColumnWidth;                   // 60
    Grid_SetColumnWidthA: AUi_Grid_SetColumnWidthA;                 // 61
    Grid_SetDataSource: AUi_Grid_SetDataSource;                     // 62

    Image_New: AUi_Image_New;                                       // 63
    Image_LoadFromFile: AUi_Image_LoadFromFileWS_Proc;              // 64

    Label_New: AUi_Label_New;                                       // 65

    {$IFDEF A02}
    Label_SetFont: AUi_Control_SetFontW1;                           // 66
    {$ELSE}
    Reserved66: AInteger;
    {$ENDIF}

    ListBox_Add: AUi_ListBox_AddWS_Proc;                            // 67
    ListBox_Clear: AUi_ListBox_Clear;                               // 68
    ListBox_New: AUi_ListBox_New;                                   // 69

    MainToolBar: AUi_MainToolBar;                                   // 70
    {$IFDEF A02}
    MainToolBar_Set: AUi_MainToolBar_Set;                           // 71
    {$ELSE}
    Reserved71: AInteger;
    {$ENDIF}

    MainTrayIcon: AUi_MainTrayIcon;                                 // 72

    MainWindow: AUi_MainWindow;                                     // 73
    MainWindow_AddMenuItem02: AUi_MainWindow_AddMenuItem02WS_Proc;  // 74
    MainWindow_AddMenuItem2: AUi_MainWindow_AddMenuItemWS2_Proc;    // 75
    MainWindow_GetLeftContainer: AUi_MainWindow_GetLeftContainer;   // 76
    MainWindow_GetMainContainer: AUi_MainWindow_GetMainContainer;   // 77
    MainWindow_GetRightContainer: AUi_MainWindow_GetRightContainer; // 78
    MainWindow_Set: AUi_MainWindow_Set;                             // 79

    Menu_GetItems: AUi_Menu_GetItems;                               // 80
    Menu_New: AUi_Menu_New;                                         // 81

    Menu_AddItem2WS02: AUi_Menu_AddItem2WS02_Proc;                  // 82
    Menu_AddItem3: AUi_Menu_AddItem3_Proc;                          // 83
    MenuItem_FindByName: AUi_MenuItem_FindByName;                   // 84

    PageControl_AddPageWS: AUi_PageControl_AddPageWS_Proc;          // 85
    PageControl_New: AUi_PageControl_New_Proc;                      // 86

    ProgressBar_New: AUi_ProgressBar_New_Proc;                      // 87
    ProgressBar_StepIt: AUi_ProgressBar_StepIt_Proc;                // 88

    PropertyBox_Add: AUi_PropertyBox_Add;                           // 89
    PropertyBox_AddA: AUi_PropertyBox_AddA;                         // 90
    PropertyBox_Item_GetValue: AUi_PropertyBox_Item_GetValue;       // 91
    PropertyBox_Item_SetValue: AUi_PropertyBox_Item_SetValue;       // 92
    PropertyBox_New: AUi_PropertyBox_New;                           // 93

    Splitter_New: AUi_Splitter_New;                                 // 94

    TextView_AddLine: AUi_TextView_AddLine;                         // 95
    TextView_New: AUi_TextView_New;                                 // 96
    TextView_SetFont: AUi_TextView_SetFont;                         // 97
    TextView_SetReadOnly: AUi_TextView_SetReadOnly;                 // 98
    TextView_SetScrollBars: AUi_TextView_SetScrollBars;             // 99
    TextView_SetWordWrap: AUi_TextView_SetWordWrap;                 // 100

    ToolBar_AddButton: AUi_ToolBar_AddButton02_Proc;                // 101
    ToolBar_New: AUi_ToolBar_New_Proc;                              // 102

    TrayIcon_GetMenuItems: AUi_TrayIcon_GetMenuItems;               // 103

    TreeView_AddItemWS: AUi_TreeView_AddItem;                       // 104
    TreeView_New: AUi_TreeView_New;                                 // 105

    Window_Free: AUi_Window_Free;                                   // 106
    Window_GetMenu: AUi_Window_GetMenu;                             // 107
    Window_LoadConfig: AUi_Window_LoadConfig;                       // 108
    Window_LoadConfig2: AUi_Window_LoadConfig2;                     // 109
    Window_New: AUi_Window_New;                                     // 110
    Window_SaveConfig: AUi_Window_SaveConfig;                       // 111
    Window_SaveConfig2: AUi_Window_SaveConfig2;                     // 112
    Window_SetBorderStyle02: AUi_Window_SetBorderStyle02;           // 113
    Window_SetFormStyle: AUi_Window_SetFormStyle;                   // 114
    Window_SetPosition: AUi_Window_SetPosition;                     // 115
    Window_ShowModal: AUi_Window_ShowModal;                         // 116

    ReportWin_New: AUi_ReportWin_New;                               // 117
    WaitWin_NewWS: AUi_WaitWin_NewWS_Proc;                          // 118
    WaitWin_StepBy: AUi_WaitWin_StepBy;                             // 119
    SetOnMainFormCreate02: AUi_SetOnMainFormCreate02_Proc;          // 120
    MainWindow_SetA: AUi_MainWindow_SetA;                           // 121

    ReportWin_NewA: AUi_ReportWin_NewWS_Proc;                       // 122
    Calendar_GetDate: AUi_Calendar_GetDate;                         // 123
    Calendar_New: AUi_Calendar_New;                                 // 124
    Calendar_SetMonth: AUi_Calendar_SetMonth;                       // 125
    Report_New: AUi_Report_New;                                     // 126
    Report_SetText: AUi_Report_SetText;                             // 127

    {$IFDEF A01}
      Reserved128: AInteger;
      Reserved129: AInteger;
      Reserved130: AInteger;
      Reserved131: AInteger;
      Reserved132: AInteger;
      Reserved133: AInteger;
      Reserved134: AInteger;
      Reserved135: AInteger;
      Reserved136: AInteger;
      Reserved137: AInteger;
      Reserved138: AInteger;
      Reserved139: AInteger;
      Reserved140: AInteger;
      Reserved141: AInteger;
      Reserved142: AInteger;
    {$ELSE}
      InitMainMenu: AUi_InitMainMenu_Proc;                          // 128
      Control_SetFont1: AUi_Control_SetFontW1;                      // 129
      Control_SetFont2: AUi_Control_SetFontW2;                      // 130
      Dialog_About_New: AUi_Dialog_About_New_Proc;                  // 131
      Dialog_AddButton: AUi_Dialog_AddButton02;                     // 132
      OnDone_Connect: AUi_OnDone_Connect_Proc;                      // 133
      Init: AUi_Init_Proc;                                          // 134
      Fin: AUi_Fin_Proc;                                            // 135
      InitMenus: AUi_InitMenus_Proc;                                // 136
      ProcessMessages: AUi_ProcessMessages_Proc;                    // 137
      ShowHelp: AUi_ShowHelp_Proc;                                  // 138
      Shutdown: AUi_Shutdown_Proc;                                  // 139
      Grid_ClearA: AUi_Grid_ClearA_Proc;                            // 140
      Grid_Clear: AUi_Grid_Clear_Proc;                              // 141
      Menu_AddItem2WS: AUi_Menu_AddItem2WS03_Proc;                  // 142
      Grid_FindInt: AUi_Grid_FindInt_Proc;                          // 143
    {$ENDIF A01}

    {$IFDEF A03UP}
    Control_SetOnChange: AUi_Control_SetOnChange_Proc;              // 144
    Grid_DeleteRow2: AUi_Grid_DeleteRow2_Proc;                      // 145
    ShowHelp2WS: AUi_ShowHelp2WS_Proc;                              // 146
    Window_SetBorderStyle: AUI_Window_SetBorderStyle03;             // 147
    MainWindow_AddMenuItem: AUi_MainWindow_AddMenuItem03WS_Proc;    // 148
    OnDone_Disconnect03: AUi_OnDone_Disconnect03_Proc;              // 149
      Reserved150: Integer;
      Reserved151: Integer;
      Reserved152: Integer;
      Reserved153: Integer;
      Reserved154: Integer;
      Reserved155: Integer;
      Reserved156: Integer;
      Reserved157: Integer;
      Reserved158: Integer;
      Reserved159: Integer;

      Reserved160: Integer;
      Reserved161: Integer;
      Reserved162: Integer;
      Reserved163: Integer;
      Reserved164: Integer;
      Reserved165: Integer;
      Reserved166: Integer;
      Reserved167: Integer;
      Reserved168: Integer;
      Reserved169: Integer;
      Reserved170: Integer;
      Reserved171: Integer;
      Reserved172: Integer;
      Reserved173: Integer;
      Reserved174: Integer;
      Reserved175: Integer;

      Reserved176: Integer;
      Reserved177: Integer;
      Reserved178: Integer;
      Reserved179: Integer;
      Reserved180: Integer;
      Reserved181: Integer;
      Reserved182: Integer;
      Reserved183: Integer;
      Reserved184: Integer;
      Reserved185: Integer;
      Reserved186: Integer;
      Reserved187: Integer;
      Reserved188: Integer;
      Reserved189: Integer;
      Reserved190: Integer;
      Reserved191: Integer;

      Reserved192: Integer;
      Reserved193: Integer;
      Reserved194: Integer;
      Reserved195: Integer;
      Reserved196: Integer;
      Reserved197: Integer;
      Reserved198: Integer;
      Reserved199: Integer;
      Reserved200: Integer;
      Reserved201: Integer;
      Reserved202: Integer;
      Reserved203: Integer;
      Reserved204: Integer;
      Reserved205: Integer;
      Reserved206: Integer;
      Reserved207: Integer;

      Reserved208: Integer;
      Reserved209: Integer;
      Reserved210: Integer;
      Reserved211: Integer;
      Reserved212: Integer;
      Reserved213: Integer;
      Reserved214: Integer;
      Reserved215: Integer;
      Reserved216: Integer;
      Reserved217: Integer;
      Reserved218: Integer;
      Reserved219: Integer;
      Reserved220: Integer;
      Reserved221: Integer;
      Reserved222: Integer;
      Reserved223: Integer;

      Reserved224: Integer;
      Reserved225: Integer;
      Reserved226: Integer;
      Reserved227: Integer;
      Reserved228: Integer;
      Reserved229: Integer;
      Reserved230: Integer;
      Reserved231: Integer;
      Reserved232: Integer;
      Reserved233: Integer;
      Reserved234: Integer;
      Reserved235: Integer;
      Reserved236: Integer;
      Reserved237: Integer;
      Reserved238: Integer;
      Reserved239: Integer;

      Reserved240: Integer;
      Reserved241: Integer;
      Reserved242: Integer;
      Reserved243: Integer;
      Reserved244: Integer;
      Reserved245: Integer;
      Reserved246: Integer;
      Reserved247: Integer;
      Reserved248: Integer;
      Reserved249: Integer;
      Reserved250: Integer;
      Reserved251: Integer;
      Reserved252: Integer;
      Reserved253: Integer;
      Reserved254: Integer;
      Reserved255: Integer;
    {$ENDIF A03UP}
  end;

implementation

end.
 