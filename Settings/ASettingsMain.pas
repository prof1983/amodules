{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 26.12.2012
}
unit ASettingsMain;

interface

uses
  ABase;

function ASettings_Fin(): AError; stdcall;

function ASettings_Init(): AError; stdcall;

implementation

function ASettings_Fin(): AError;
begin
  Result := 0;
end;

function ASettings_Init(): AError;
begin
  Result := 0;
end;

end.
