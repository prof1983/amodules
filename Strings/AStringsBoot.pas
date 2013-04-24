{**
@Author Prof1983 <prof1983@ya.ru>
@Created 24.04.2013
@LastMod 24.04.2013
}
unit AStringsModClient;

interface

uses
  ABase,
  AStringsModClient;

// --- AStrings ---

function AStrings_Boot(): AError; stdcall;

implementation

// --- AStrings ---

function AStrings_Boot(): AError;
begin
  Result := AStringsModClient.AStrings_Boot();
end;

end.
 