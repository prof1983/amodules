{**
@Author Prof1983 <prof1983@ya.ru>
@Created 18.02.2013
@LastMod 23.04.2013
}
unit AStringMain;

{define AStdCall}

interface

uses
  ABase,
  AStringsProcVars;

// --- AString ---

function AString_Assign(var S: AString_Type; const Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AString_AssignA(var S: AString_Type; Value: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function AString_AssignP(var S: AString_Type; const Value: APascalString): AError;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): AError;

function AString_Clear(var S: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AString_Copy(var S: AString_Type; const Value: AString_Type): ASize; {$ifdef AStdCall}stdcall;{$endif}

function AString_CopyA(var S: AString_Type; const Value: AStr): ASize; {$ifdef AStdCall}stdcall;{$endif}

function AString_CopyP(var S: AString_Type; const Value: APascalString): ASize;

function AString_GetChar(const S: AString_Type; Index: AInt): AChar; {$ifdef AStdCall}stdcall;{$endif}

function AString_GetLength(const S: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AString_Set(var S: AString_Type; const Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AString_SetA(var S: AString_Type; Value: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

function AString_SetP(var S: AString_Type; const Value: APascalString): AError;

function AString_ToP(const S: AString_Type): APascalString;

function AString_ToPascalString(const S: AString_Type): APascalString;

function AString_ToWideString(const S: AString_Type): WideString;

// --- AnsiString ---

function AnsiString_GetChar(const S: AnsiString; Index: AInt): AChar; stdcall;

// ----

function Str_Assign({var} S: AString; {const} Value: AString): ASize; stdcall;
function Str_AssignA({var} S: AString; Value: AStr): ASize; stdcall;
function Str_AssignP({var} S: AString; const Value: APascalString): ASize;
function Str_AssignW({var} S: AString; {const} Value: PWideChar): ASize; stdcall;
function Str_Copy({var} S: AString; {const} Value: AString): ASize; stdcall;
//function Str_CopyA({var} S: AString; {const} Value: AStr): ASize; stdcall;
function Str_CopyP({var} S: AString; const Value: APascalString): ASize;
function Str_CopyW({var} S: AString; {const} Value: PWideChar): ASize; stdcall;
function Str_Free({var} S: AString): AError; stdcall;
function Str_Length({const} S: AString): AInt; stdcall;

implementation

// --- AnsiString ---

function AnsiString_GetChar(const S: AnsiString; Index: AInt): AChar; 
begin
  if (Index >= 1) and (Length(S) >= Index) then
    Result := S[Index]
  else
    Result := #0;
end;

// --- AString ---

function AString_Assign(var S: AString_Type; const Value: AString_Type): AError;
begin
  if not(Assigned(AStringsProcVars.AString_Assign)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AStringsProcVars.AString_Assign(S, Value);
end;

function AString_AssignA(var S: AString_Type; Value: AStr): AError;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, Value);
end;

function AString_AssignP(var S: AString_Type; const Value: APascalString): AError;
begin
  if not(Assigned(AStringsProcVars.AString_AssignA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AStringsProcVars.AString_AssignA(S, AStr(AnsiString(Value)));
end;

function AString_AssignWS(var S: AString_Type; const Value: AWideString): AError;
begin
  Result := AString_AssignP(S, Value);
end;

function AString_Clear(var S: AString_Type): AError;
begin
  if not(Assigned(AStringsProcVars.AString_Clear)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AStringsProcVars.AString_Clear(S);
end;

function AString_Copy(var S: AString_Type; const Value: AString_Type): ASize;
begin
  if not(Assigned(AStringsProcVars.AString_Copy)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_Copy(S, Value);
end;

function AString_CopyA(var S: AString_Type; const Value: AStr): ASize;
begin
  if not(Assigned(AStringsProcVars.AString_CopyA)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AStringsProcVars.AString_CopyA(S, Value);
end;

function AString_CopyP(var S: AString_Type; const Value: APascalString): ASize;
begin
  Result := AString_CopyP(S, AStr(AnsiString(Value)));
end;

function AString_GetChar(const S: AString_Type; Index: AInt): AChar;
begin
  if not(Assigned(AStringsProcVars.AString_GetChar)) then
  begin
    Result := #0;
    Exit;
  end;
  Result := AStringsProcVars.AString_GetChar(S, Index);
end;

function AString_GetLength(const S: AString_Type): AInt;
begin
  if not(Assigned(AStringsProcVars.AString_GetLength)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AStringsProcVars.AString_GetLength(S);
end;

function AString_Set(var S: AString_Type; const Value: AString_Type): AError;
begin
  FillChar(S, SizeOf(AString_Type), 0);
  Result := AString_Assign(S, Value);
end;

function AString_SetA(var S: AString_Type; Value: AStr): AError;
begin
  FillChar(S, SizeOf(AString_Type), 0);
  Result := AString_AssignA(S, Value);
end;

function AString_SetP(var S: AString_Type; const Value: APascalString): AError;
begin
  FillChar(S, SizeOf(AString_Type), 0);
  Result := AString_AssignP(S, Value);
end;

function AString_ToP(const S: AString_Type): APascalString;
begin
  Result := AString_ToPascalString(S);
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

// ----

function Str_Assign(S: AString; Value: AString): ASize;
begin
  Result := AString_Assign(S^, Value^);
end;

function Str_AssignA(S: AString; Value: AStr): ASize;
begin
  Result := AString_AssignA(S^, Value);
end;

function Str_AssignP(S: AString; const Value: APascalString): ASize;
begin
  Result := AString_AssignP(S^, Value);
end;

function Str_AssignW(S: AString; Value: PWideChar): ASize;
var
  Tmp: WideString;
begin
  Tmp := WideString(Value);
  Result := AString_AssignP(S^, Tmp);
end;

function Str_Copy(S: AString; Value: AString): ASize;
begin
  Result := AString_Copy(S^, Value^);
end;

{function Str_CopyA(S: AString; Value: AStr): ASize;
begin
  Result := AString_CopyA(S^, Value);
end;}

function Str_CopyP(S: AString; const Value: APascalString): ASize;
begin
  Result := AString_CopyP(S^, Value);
end;

function Str_CopyW(S: AString; Value: PWideChar): ASize;
begin
  Result := AString_CopyP(S^, AWideString(Value));
end;

function Str_Free(S: AString): AError;
begin
  Result := AString_Clear(S^);
end;

function Str_Length(S: AString): AInt;
begin
  Result := AString_GetLength(S^);
end;

end.
