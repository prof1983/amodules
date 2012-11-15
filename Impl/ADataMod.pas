{**
@Abstract ћодуль работы с базами и структурами данных
@Author Prof1983 <prof1983@ya.ru>
@Created 13.10.2008
@LastMod 15.11.2012
}
unit ADataMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, AData, ADataBase, {$IFDEF ADepr}ADataProcRec,{$ENDIF} ARuntimeBase, ARuntimeMain;

function ADataMod_Boot(): AError; stdcall;

function ADataMod_Fin(): AError; stdcall;

function ADataMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ADataMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  DataProcs: ADataProcs_Type = (
    Database_Close: AData.Database_Close;                               // 00
    Database_Connect: AData.Database_Connect;                           // 01
    Database_CreateDatabase: AData.Database_CreateDatabase;             // 02
    Database_Disconnect: AData.Database_Disconnect;                     // 03
    Database_ExecuteSql: AData.Database_ExecuteSql;                     // 04
    Database_ChechDatabaseStructure: AData.Database_CheckDatabaseStructure; // 05
    Database_CheckTableStructure: AData.Database_CheckTableStructure;   // 06
    Database_GetConnected: AData.Database_GetConnected;                 // 07
    Database_GetConnectionString: AData.Database_GetConnectionString;   // 08
    Database_New: AData.Data_NewDatabase;                               // 09
    Database_NewDataSet: AData.Database_NewDataSet;                     // 10
    Database_NewDataSetA: AData.Database_NewDataSetA;                   // 11
    Database_SetConnectionString: AData.Database_SetConnectionString;   // 12
    DatabaseStructure_New: AData.Data_NewDatabaseStructure;             // 13
    Drivers_RegisterDriver: AData.Data_RegisterDriver;                  // 14
    Database_ChangeDataSet: AData.Database_ChangeDataSet;               // 15
    Init: ADataMod_Init;                                                // 16
    Fin: ADataMod_Fin;                                                  // 17
    Reserved18: 0;
    Reserved19: 0;
    Reserved20: 0;
    Reserved21: 0;
    Reserved22: 0;
    Reserved23: 0;
    Reserved24: 0;
    Reserved25: 0;
    Reserved26: 0;
    Reserved27: 0;
    Reserved28: 0;
    Reserved29: 0;
    Reserved30: 0;
    Reserved31: 0;
    );
{$ENDIF ADepr}

implementation

const
  AData_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AData_Version;
    Uid: AData_Uid;
    Name: AData_Name;
    Description: nil;
    Init: ADataMod_Init;
    Fin: ADataMod_Fin;
    GetProc: ADataMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(DataProcs){$ELSE}nil{$ENDIF};
    );

var
  FDrivers: array of ADataDriver;
  FInitialized: ABoolean;

// --- ADataMod ---

function ADataMod_Boot(): AError;
begin
  Result := ARuntime_RegisterModule(Module);
end;

function ADataMod_Fin(): AError;
{var
  I: Integer;}
begin
  {for I := 0 to High(FDrivers) do
    FDrivers[I]._Release();
  SetLength(FDrivers, 0);}

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
