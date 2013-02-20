{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 01.08.2012
@LastMod 20.02.2013
}
unit ACollections;

interface

uses
  ABase,
  ACollectionsProcVars;

// --- Public ---

function Fin(): AError; stdcall;

function Init(): AError; stdcall;

implementation

// --- Public ---

function Fin(): AError;
begin
  if not(Assigned(ACollections_Fin)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_Fin();
end;

function Init(): AError;
begin
  if not(Assigned(ACollections_Init)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_Init();
end;

end.
 