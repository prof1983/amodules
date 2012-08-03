{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 30.07.2012
}
unit ASystem;

interface

uses
  ABase, ABaseTypes, AStrings, ASystemProcVars;

// --- ASystem ---

function ASystem_GetExePathWS(): AWideString; stdcall;

// ----

function GetExePathWS(): AWideString; stdcall;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands; stdcall;

implementation

// --- ASystem ---

function ASystem_GetExePathWS(): AWideString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(S);
end;

// --- Public ---

function GetExePathWS(): AWideString;
begin
  Result := ASystem_GetExePathWS();
end;

function ShowMessageWS(const Msg: AWideString): ADialogBoxCommands;
var
  Msg1: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := 0;
    Exit;
  end;
  AString_AssignWS(Msg1, Msg);
  Result := ASystem_ShowMessage(Msg1);
end;

end.
 