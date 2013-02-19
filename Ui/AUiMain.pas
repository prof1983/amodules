{**
@Abstract AUi common functions
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 19.02.2013
}
unit AUiMain;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiProcVars;

// --- AUi ---

function AUi_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUi_ShowHelp(): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUi_ShowHelp2(const FileName: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUi_ShowHelp2P(const FileName: APascalString): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUi ---

function AUi_Init(): AError;
begin
  if not(Assigned(AUiProcVars.AUi_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUi_Init();
end;

function AUi_ShowHelp(): AError;
begin
  if Assigned(AUiProcVars.AUi_ShowHelp) then
  begin
    Result := AUiProcVars.AUi_ShowHelp();
    Exit;
  end;
  Result := -1;
end;

function AUi_ShowHelp2(const FileName: AString_Type): AError;
begin
  if Assigned(AUiProcVars.AUi_ShowHelp2) then
  begin
    Result := AUiProcVars.AUi_ShowHelp2(FileName);
    Exit;
  end;
  Result := -1;
end;

function AUi_ShowHelp2P(const FileName: APascalString): AError;
var
  S: AString_Type;
begin
  if Assigned(AUiProcVars.AUi_ShowHelp2) then
  begin
    AString_AssignP(S, FileName);
    Result := AUi_ShowHelp2(S);
    Exit;
  end;
  Result := -1;
end;

end.
 