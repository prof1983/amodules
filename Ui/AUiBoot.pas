{**
@Author Prof1983 <prof1983@ya.ru>
@Created 23.04.2013
@LastMod 23.04.2013
}
unit AUiBoot;

interface

uses
  ABase,
  AUiModClient;

// --- AUi ---

function AUi_Boot(): AError;

implementation

// --- AUi ---

function AUi_Boot(): AError;
begin
  Result := AUiModClient.AUi_Boot();
end;

end.
