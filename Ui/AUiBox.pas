{**
@Abstract User Interface box functions
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit AUiBox;

{$define AStdCall}

interface

uses
  ABase, AUiBase, AUiProcVars;

{** Creates a new panel
    @param BoxType: 0 - Simple; 1 - HBox; 2 - VBox }
function AUiBox_New(Parent: AControl; BoxType: AInteger): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiBox_New(Parent: AControl; BoxType: AInteger): AControl;
begin
  if not(Assigned(AUiProcVars.AUiBox_New)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiBox_New(Parent, BoxType);
end;

end.
 