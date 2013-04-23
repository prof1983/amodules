{**
@Author Prof1983 <prof1983@ya.ru>
@Created 23.04.2013
@LastMod 23.04.2013
}
unit AStringsBoot;

interface

uses
  ABase,
  AStringsModClient;

// --- AStrings ---

function AStrings_Boot(): AError;

implementation

// --- AStrings ---

function AStrings_Boot(): AError;
begin
  Result := AStringsModClient.AStrings_Boot();
end;

end.
