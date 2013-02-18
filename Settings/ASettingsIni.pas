{**
@Author Prof1983 <prof1983@ya.ru>
@Created 18.02.2013
@LastMod 18.02.2013
}
unit ASettingsIni;

{define AStdCall}

interface

uses
  ABase;

// --- ASettings ---

function ASettings_NewIniConfig(const FileName: AString_Type): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_NewIniConfigA(FileName: AStr): AConfig; {$ifdef AStdCall}stdcall;{$endif}

function ASettings_NewIniConfigP(const FileName: APascalString): AConfig;

implementation

// --- ASettings ---

function ASettings_NewIniConfig(const FileName: AString_Type): AConfig;
begin
  xxx
end;

function ASettings_NewIniConfigA(FileName: AStr): AConfig;
begin
  xxx
end;

function ASettings_NewIniConfigP(const FileName: APascalString): AConfig;
begin
  xxx
end;

end.
