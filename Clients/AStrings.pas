{**
@Abstract AStrings
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 02.08.2012
}
unit AStrings;

interface

uses
  ABase, AStringsProcVars;

function AString_Assign(var S: AString_Type; const Value: AString_Type): ASize; stdcall;

function AString_AssignP(var S: AString_Type; const Value: APascalString): ASize; stdcall;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): ASize; stdcall;

function AString_ToPascalString(const S: AString_Type): APascalString; stdcall;

function AString_ToWideString(const S: AString_Type): WideString; stdcall;

implementation

// --- AString ---

function AString_Assign(var S: AString_Type; const Value: AString_Type): ASize;
begin
  if not(Assigned(AStringsProcVars.AString_Assign)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_Assign(S, Value);
end;

function AString_AssignP(var S: AString_Type; const Value: APascalString): ASize;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, AStr(AnsiString(Value)));
end;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): ASize;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, AStr(AnsiString(Value)));
end;

function AString_ToPascalString(const S: AString_Type): APascalString;
var
  A: AnsiString;
begin
  A := S.Str;
  Result := A;
end;

function AString_ToWideString(const S: AString_Type): WideString;
begin
  Result := AString_ToPascalString(S);
end;

end.
 