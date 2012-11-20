{**
@Abstract ASystem resource
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit ASystemResourceString;

{$define AStdCall}

interface

uses
  ABase, AStrings, ASystemProcVars;

function ASystem_GetResourceString(const Section, Name, Default: AString_Type; out Value: AString_Type): AInteger; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetResourceStringP(const Section, Name, Default: APascalString): APascalString; {$ifdef AStdCall}stdcall;{$endif}

implementation

function ASystem_GetResourceString(const Section, Name, Default: AString_Type; out Value: AString_Type): AInteger;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetResourceString)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetResourceString(Section, Name, Default, Value);
end;

function ASystem_GetResourceStringP(const Section, Name, Default: APascalString): APascalString;
var
  SSection: AString_Type;
  SName: AString_Type;
  SDefault: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(SSection, Section);
  AString_AssignP(SName, Name);
  AString_AssignP(SDefault, Default);
  AString_Clear(Res);
  ASystem_GetResourceString(SSection, SName, SDefault, Res);
  Result := AString_ToPascalString(Res);
end;

end.
 