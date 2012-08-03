{**
@Abstract AData
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 30.07.2012
}
unit ADataProcTypes;

interface

uses
  ABase, ABaseTypes, ADataBase;

type
  AData_Fin_Proc = function(): AError; stdcall;
  AData_Init_Proc = function(): AError; stdcall;
type
  ADatabase_Close = procedure(Database: ADataConnection); stdcall;
  ADatabase_Connect = function(Database: ADataConnection): ABoolean; stdcall;
  ADatabase_CreateDatabase = function(Database: ADataConnection): ABoolean; stdcall;
  ADatabase_Disconnect = procedure(Database: ADataConnection); stdcall;
  ADatabase_ExecuteSql = function(Database: ADataConnection; const Sql: AWideString): ABoolean; stdcall;
  ADatabase_ChangeDataSet = function(Database: ADataConnection; DataSet: ADataSet; const SelectSql: AWideString): AError; stdcall;
  ADatabase_ChechDatabaseStructure = function(Database: ADataConnection; Struct: ADataStructure; Logger: TAddToLogWSProc): ABoolean; stdcall;
  ADatabase_CheckTableStructure = function(Database: ADataConnection; TableStruct: ATableStructure; Logger: TAddToLogWSProc): ABoolean; stdcall;
  ADatabase_GetConnected = function(Database: ADataConnection): ABoolean; stdcall;
  ADatabase_GetConnectionString = function(Database: ADataConnection): AWideString; stdcall;
  ADatabase_New = function(const DriverName: AWideString): ADataConnection; stdcall;
  ADatabase_NewDataSet = function(Database: ADataConnection; const SelectSqlText: AWideString; ReadOnly: ABoolean): ADataSet; stdcall;
  ADatabase_NewDataSetA = function(Database: ADataConnection; const SelectSqlText, UpdateSqlText, InsertSqlText, DeleteSqlText, RefreshSqlText: AWideString): ADataSet; stdcall;
  ADatabase_SetConnectionString = procedure(Database: ADataConnection; const Value: AWideString); stdcall;
type
  ADatabaseStructure_New = function: ADataStructure; stdcall;
type
  AData_Drivers_RegisterDriver = function(DataDriver: ADataDriver): AInteger; stdcall;

implementation

end.
 