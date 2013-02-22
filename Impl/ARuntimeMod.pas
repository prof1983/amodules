{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2007
@LastMod 22.02.2013
}
unit ARuntimeMod;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain;

// --- ARuntimeMod ---

{** Preinitialize Runtime }
function ARuntimeMod_Boot(): AError; stdcall;

{** Finalize Runtime (Shutdown, Work end, Unloading of modules) }
function ARuntimeMod_Fin(): AError; stdcall;

{** Initialize Runtime }
function ARuntimeMod_Init(): AError; stdcall;

implementation

// --- ARuntimeMod ---

function ARuntimeMod_Boot(): AError;
begin
  Result := 0;
end;

function ARuntimeMod_Fin(): AError;
begin
  Result := ARuntime_Fin();
end;

function ARuntimeMod_Init(): AError;
begin
  Result := ARuntime_Init();
end;

end.
