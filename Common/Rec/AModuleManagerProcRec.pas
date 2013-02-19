{**
@Abstract(AModuleManager proc types)
@Author(Prof1983 prof1983@yandex.ru)
@Created(23.07.2010)
@LastMod(29.03.2012)
@Version(0.3)
}
unit AModuleManagerProcs;

{DEFINE A02}

interface

uses
  ABase;

const
  AModuleManager_Name = {$IFDEF A02}'ModuleManager'{$ELSE}'AModuleManager'{$ENDIF};
  AModuleManager_Uid = $11051601;
  //AModuleManager_Version = {$IFDEF A02}$00020600{$ELSE}$00030100{$ENDIF};

type {8x4} {16x4}
  //AModuleManagerProcs = ^AModuleManagerProcs_Type;
  AModuleManagerProcs_Type = packed record
    Reserved00: AInteger;
    Reserved01: AInteger;
    Reserved02: AInteger;
    Reserved03: AInteger;
    Reserved04: AInteger;
    Reserved05: AInteger;
    Reserved06: AInteger;
    Reserved07: AInteger;
    {$IFDEF A02}
    {$ELSE}
    Reserved08: AInteger;
    Reserved09: AInteger;
    Reserved10: AInteger;
    Reserved11: AInteger;
    Reserved12: AInteger;
    Reserved13: AInteger;
    Reserved14: AInteger;
    Reserved15: AInteger;
    {$ENDIF A02}
  end;

implementation

end.
 