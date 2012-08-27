{**
@Abstract APlugins procs
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 27.08.2012
}
unit APluginsProcRec;

interface

uses
  ABase, APluginsProcTypes;

type
  //APluginsProcs = ^APluginsProcs_Type;
  APluginsProcs_Type = packed record {8x4} {32x4}
    AddPlugin: APlugins_AddPluginW_Proc;                        // 00
    Clear: APlugins_Clear_Proc;                                 // 01
    Count: APlugins_GetCount_Proc;                              // 02
    Delete: APlugins_Delete_Proc;                               // 03
    Find: APlugins_FindW_Proc;                                  // 04

    Init: APlugins_Init_Proc;                                   // 05
    Fin: APlugins_Fin_Proc;                                     // 06

    Reserved07: Integer;

    {$IFNDEF A01}
    {$IFNDEF A02}
    Reserved08: AInteger;
    Reserved09: AInteger;
    Reserved10: AInteger;
    Reserved11: AInteger;
    Reserved12: AInteger;
    Reserved13: AInteger;
    Reserved14: AInteger;
    Reserved15: AInteger;

    Reserved16: AInteger;
    Reserved17: AInteger;
    Reserved18: AInteger;
    Reserved19: AInteger;
    Reserved20: AInteger;
    Reserved21: AInteger;
    Reserved22: AInteger;
    Reserved23: AInteger;
    Reserved24: AInteger;
    Reserved25: AInteger;
    Reserved26: AInteger;
    Reserved27: AInteger;
    Reserved28: AInteger;
    Reserved29: AInteger;
    Reserved30: AInteger;
    Reserved31: AInteger;
    {$ENDIF} // A02
    {$ENDIF} // A01
  end;

implementation

end.
 