{**
@Abstract AStringUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
}
unit AStringUtils;

interface

uses
  ABase,
  AStringMain,
  AUtilsProcVars;

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger; stdcall;

function AString_ToUpperP(const S: APascalString): APascalString; stdcall;

function AString_ToUpperWS(const S: AWideString): AWideString; stdcall;

// --- String ---

function String_ToUpperWS(const S: AWideString): AWideString; stdcall; deprecated; // Use AString_ToUpperWS()

implementation

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger;
begin
  if (AString_Assign(Res, S) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if Assigned(AUtilsProcVars.AString_ToUpper) then
  begin
    Result := AUtilsProcVars.AString_ToUpper(S, Res);
    Exit;
  end;
  {$ifdef ADepr}
  if Assigned(AUtilsProcVars.AUtils_UpperString) then
  begin
    Result := AUtilsProcVars.AUtils_UpperString(Res);
    Exit;
  end;
  {$endif}
  Result := -1;
end;

function AString_ToUpperP(const S: APascalString): APascalString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_SetP(Str, S) < 0) then
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

function AString_ToUpperWS(const S: AWideString): AWideString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_SetP(Str, S) < 0) then
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
  Result := AString_ToWideString(Res);
end;

// --- String ---

function String_ToUpperWS(const S: AWideString): AWideString;
begin
  Result := AString_ToUpperWS(S);
end;

end.
 