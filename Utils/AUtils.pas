{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 21.11.2012
}
unit AUtils;

interface

uses
  ABase, AUtilsMain;

// ----

function ExtractFileExtWS(const FileName: AWideString): AWideString; stdcall;

function FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function GetNowDateTime(): TDateTime; stdcall;

function Init(): AError; stdcall;

function IntToStrWS(Value: AInt): AWideString; stdcall;

function ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar = #0;
    ClearSpace: ABoolean = True): AWideString; stdcall;

{** ќжидает указанное кол-во миллисекунд }
function Sleep(Milliseconds: AUInt): AError; stdcall;

function StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat; stdcall;

function StrToFloatWS(const S: AWideString): AFloat; stdcall;

function StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt; stdcall;

function StrToIntWS(const S: AWideString): AInt; stdcall;

function Time_Now(): TDateTime; stdcall; deprecated; // Use GetNowDateTime()

function TrimWS(const S: AWideString): AWideString; stdcall;

implementation

// --- Public ---

function ExtractFileExtWS(const FileName: AWideString): AWideString;
begin
  Result := AUtils_ExtractFileExtWS(FileName);
end;

function FileExistsWS(const FileName: AWideString): ABoolean;
begin
  Result := AUtils_FileExistsWS(FileName);
end;

function GetNowDateTime(): TDateTime;
begin
  Result := AUtils_GetNowDateTime();
end;

function Init(): AError;
begin
  Result := AUtils_Init();
end;

function IntToStrWS(Value: AInt): AWideString;
begin
  Result := AUtils_IntToStrWS(Value);
end;

function ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar;
    ClearSpace: ABoolean): AWideString;
begin
  Result := AUtils_ReplaceCommaWS(S, DecimalSeparator, ClearSpace);
end;

function Sleep(Milliseconds: AUInt): AError;
begin
  Result := AUtils_Sleep(Milliseconds);
end;

function StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat;
begin
  Result := AUtils_StrToFloatDefWS(S, DefValue);
end;

function StrToFloatWS(const S: AWideString): AFloat;
begin
  Result := AUtils_StrToFloatDefWS(S, 0);
end;

function StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt;
begin
  Result := AUtils_StrToIntDefWS(S, DefValue);
end;

function StrToIntWS(const S: AWideString): AInt;
begin
  Result := AUtils_StrToIntDefWS(S, 0);
end;

function Time_Now(): TDateTime;
begin
  Result := AUtils_GetNowDateTime();
end;

function TrimWS(const S: AWideString): AWideString;
begin
  Result := AUtils_TrimWS(S);
end;

end.
 