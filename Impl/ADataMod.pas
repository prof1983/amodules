{**
@Author Prof1983 <prof1983@ya.ru>
@Created 13.10.2008
@LastMod 22.02.2013
}
unit ADataMod;

interface

uses
  ABase,
  AData,
  ADataBase,
  ADataMain,
  ARuntimeBase,
  ARuntimeMain;

// --- ADataMod ---

function ADataMod_Boot(): AError; stdcall;

function ADataMod_Fin(): AError; stdcall;

function ADataMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ADataMod_Init(): AError; stdcall;

implementation

const
  AData_Version = $00070100;

const
  Module: AModule_Type = (
    Version: AData_Version;
    Uid: AData_Uid;
    Name: AData_Name;
    Description: nil;
    Init: ADataMod_Init;
    Fin: ADataMod_Fin;
    GetProc: ADataMod_GetProc;
    Procs: nil;
    );

var
  FInitialized: ABoolean;

// --- ADataMod ---

function ADataMod_Boot(): AError;
begin
  Result := ARuntime_RegisterModule(Module);
end;

function ADataMod_Fin(): AError;
begin
  FInitialized := False;
  Result := 0;
end;

function ADataMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function ADataMod_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  FInitialized := True;
  Result := 0;
end;

end.
