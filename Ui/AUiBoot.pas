{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 24.04.2013
}
unit AUiModClient;

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
