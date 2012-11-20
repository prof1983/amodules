{**
@Abstract AUi common functions
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit AUiMain;

{$define AStdCall}

interface

uses
  ABase, AUiProcVars;

function AUi_Init(): AError; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUi_Init(): AError;
begin
  if not(Assigned(AUiProcVars.AUi_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUi_Init();
end;

end.
 