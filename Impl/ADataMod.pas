{**
@Abstract ћодуль работы с базами и структурами данных
@Author Prof1983 <prof1983@ya.ru>
@Created 13.10.2008
@LastMod 03.08.2012
}
unit ADataMod;

interface

uses
  ABase, AData, ADataBase, ADataProcRec, ARuntime, ARuntimeBase;

function Data_Boot(): AInteger; stdcall;

function Data_Fin(): AError; stdcall;

function Data_GetProc(ProcName: AStr): Pointer; stdcall;

function Data_Init(): AError; stdcall;

const
  DataProcs: ADataProcs_Type = (
    Database_Close: AData.Database_Close;                       // 00
    Database_Connect: AData.Database_Connect;                   // 01
    Database_CreateDatabase: AData.Database_CreateDatabase;     // 02
    Database_Disconnect: AData.Database_Disconnect;             // 03
    Database_ExecuteSql: AData.Database_ExecuteSql;             // 04
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
    Init: Data_Init;                                                    // 16
    Fin: Data_Fin;                                                      // 17
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

implementation

{uses
  AData0;}

const
  AData_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AData_Version;
    Uid: AData_Uid;
    Name: AData_Name;
    Description: nil;
    Init: Data_Init;
    Fin: Data_Fin;
    GetProc: Data_GetProc;
    Procs: Addr(DataProcs);
    );

var
  FDrivers: array of ADataDriver;
  FInitialized: ABoolean;

{ Module }

function Data_Boot(): AInteger;
begin
  Result := ARuntime.Module_Register(Module);
end;

function Data_Fin(): AError;
{var
  I: Integer;}
begin
  {for I := 0 to High(FDrivers) do
    FDrivers[I]._Release();
  SetLength(FDrivers, 0);}

  FInitialized := False;
  Result := 0;
end;

function Data_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function Data_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  FInitialized := True;
  Result := 0;
end;

initialization
  //Data_SetProcs(DataProcs);
end.
