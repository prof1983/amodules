{**
@Abstract AUiLabel
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 22.11.2012
}
unit AUiLabels;

{$define AStdCall}

interface

uses
  AUiBase, AUiProcVars;

function AUiLabel_New(Parent: AControl): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiLabel_New(Parent: AControl): AControl;
begin
  if Assigned(AUiProcVars.AUiLabel_New) then
  begin
    Result := AUiProcVars.AUiLabel_New(Parent);
    Exit;
  end;
  Result := 0;
end;

end.
 