{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit ASystemModClient05;

{$ifndef A01}
  {$ifndef A02}
    {$ifndef A03}
      {$ifndef A04}
        {$define A05}
      {$endif}
    {$endif}
  {$endif}
{$endif}

interface

uses
  ABase, ARuntime, ARuntimeBase, ASystemBase,
  {$ifdef A05}
  ASystemProcSet05;
  {$else}
  ASystemProcSet;
  {$endif}

function ASystem_Boot(): AError;

implementation

function ASystem_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime.Modules_GetByUid(ASystem_Uid, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  if (System_SetProcsP(Module.Procs) < 0) then
  begin
    Result := -3;
    Exit;
  end;
  Result := 0;
end;

end.
 