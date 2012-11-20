{**
@Abstract AStrings
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 19.11.2012
}
unit AStrings;

interface

uses
  ABase, AStringsProcVars;

function AString_Assign(var S: AString_Type; const Value: AString_Type): AError; stdcall;

function AString_AssignA(var S: AString_Type; Value: AStr): AError; stdcall;

function AString_AssignP(var S: AString_Type; const Value: APascalString): AError; stdcall;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): AError; stdcall;

function AString_Clear(var S: AString_Type): AError; stdcall;

function AString_ToPascalString(const S: AString_Type): APascalString; stdcall;

function AString_ToWideString(const S: AString_Type): WideString; stdcall;

implementation

// --- AString ---

function AString_Assign(var S: AString_Type; const Value: AString_Type): AError;
begin
  if not(Assigned(AStringsProcVars.AString_Assign)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AStringsProcVars.AString_Assign(S, Value);
end;

function AString_AssignA(var S: AString_Type; Value: AStr): AError;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, Value);
end;

function AString_AssignP(var S: AString_Type; const Value: APascalString): AError;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, AStr(AnsiString(Value)));
end;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): AError;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, AStr(AnsiString(Value)));
end;

function AString_Clear(var S: AString_Type): AError;
begin
  if not(Assigned(AStringsProcVars.AString_Clear)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AStringsProcVars.AString_Clear(S);
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
 