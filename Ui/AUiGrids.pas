{**
@Abstract AUi grids
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 22.11.2012
}
unit AUiGrids;

interface

uses
  ABase, AUiBase, AUiProcVars;

function AUiGrid_Clear(Grid: AControl): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiGrid_DeleteRow(Grid: AControl): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiGrid_DeleteRow2(Grid: AControl; Row: AInteger): AError; {$ifdef AStdCall}stdcall;{$endif}

function AUiGrid_FindInt(Grid: AControl; Col, Value: AInteger): AInteger; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiGrid_Clear(Grid: AControl): AError;
begin
  if Assigned(AUiProcVars.AUiGrid_Clear) then
  begin
    Result := AUiProcVars.AUiGrid_Clear(Grid);
    Exit;
  end;
  Result := -1;
end;

function AUiGrid_DeleteRow(Grid: AControl): AError;
begin
  if Assigned(AUiProcVars.AUiGrid_DeleteRow) then
  begin
    Result := AUiProcVars.AUiGrid_DeleteRow(Grid);
    Exit;
  end;
  Result := -1;
end;

function AUiGrid_DeleteRow2(Grid: AControl; Row: AInteger): AError;
begin
  if Assigned(AUiProcVars.AUiGrid_DeleteRow2) then
  begin
    Result := AUiProcVars.AUiGrid_DeleteRow2(Grid, Row);
    Exit;
  end;
  Result := -1;
end;

function AUiGrid_FindInt(Grid: AControl; Col, Value: AInteger): AInteger;
begin
  if Assigned(AUiProcVars.AUiGrid_FindInt) then
  begin
    Result := AUiProcVars.AUiGrid_FindInt(Grid, Col, Value);
    Exit;
  end;
  Result := -1;
end;

end.
 