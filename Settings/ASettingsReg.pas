{**
@Author Prof1983 <prof1983@ya.ru>
@Created 18.02.2013
@LastMod 18.02.2013
}
unit ASettingsReg;

{define AStdCall}

interface

uses
  ABase;

// --- ASettings ---

function ASettings_NewRegConfig(const Prefix: AString_Type; Key: AInt): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_NewRegConfigA(Prefix: AStr; Key: AInt): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_NewRegConfigP(const Prefix: APascalString; Key: AInt): AConfig;

implementation

// --- ASettings ---

function ASettings_NewRegConfig(const Prefix: AString_Type; Key: AInt): AConfig;
begin
  xxx
end;

function ASettings_NewRegConfigA(Prefix: AStr; Key: AInt): AConfig;
begin
  xxx
end;

function ASettings_NewRegConfigP(const Prefix: APascalString; Key: AInt): AConfig;
begin
  xxx
end;

end.
