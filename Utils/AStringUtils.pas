{**
@Abstract AStringUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.02.2013
}
unit AStringUtils;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUtilsProcVars;

// --- AString ---

function AString_ToLower(const S: AString_Type; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AString_ToLowerP(const S: APascalString): APascalString;

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AString_ToUpperP(const S: APascalString): APascalString;

implementation

// --- AString ---

function AString_ToLower(const S: AString_Type; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AString_ToLower)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := AUtilsProcVars.AString_ToLower(S, Res);
end;

function AString_ToLowerP(const S: APascalString): APascalString;
var
  SS: AString_Type;
  Res: AString_Type;
begin
  AString_AssignP(SS, S);
  AString_Clear(Res);
  if (AString_ToLower(SS, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInt;
begin
  if not(Assigned(AUtilsProcVars.AString_ToUpper)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AString_ToUpper(S, Res);
end;

function AString_ToUpperP(const S: APascalString): APascalString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_AssignP(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  AString_Clear(Res);
  if (AString_ToUpper(Str, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

end.
 