{**
@Abstract AUi splitter
@Author Prof1983 <prof1983@ya.ru>
@Created 22.11.2012
@LastMod 22.11.2012
}
unit AUiSplitter;

{$define AStdCall}

interface

uses
  ABase, AUiBase, AUiProcVars;

{** Creates a dynamic separator
    @param SplitterType 0 - HSplitter (Align=alTop); 1 - VSplitter (Align=alLeft);
        2 - HSplitter (Align=alBottom); 3 - VSplitter (Align=alRight) }
function AUiSplitter_New(Parent: AControl; SplitterType: AUiSplitterType): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiSplitter_New(Parent: AControl; SplitterType: AUiSplitterType): AControl;
begin
  if Assigned(AUiProcVars.AUiSplitter_New) then
  begin
    Result := AUiProcVars.AUiSplitter_New(Parent, SplitterType);
    Exit;
  end;
  Result := 0;
end;

end.
 