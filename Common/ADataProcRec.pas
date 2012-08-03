{**
@Abstract AData
@Author Prof1983 <prof1983@ya.ru>
@Created 30.08.2011
@LastMod 30.07.2012
}
unit ADataProcRec;

interface

uses
  ABase, ABaseTypes, ADataBase, ADataProcTypes;

type
  PADataProcs = ^ADataProcs_Type;
  ADataProcs_Type = packed record
    Database_Close: ADatabase_Close;                            // 00
    Database_Connect: ADatabase_Connect;                        // 01
    Database_CreateDatabase: ADatabase_CreateDatabase;          // 02
    Database_Disconnect: ADatabase_Disconnect;                  // 03
    Database_ExecuteSql: ADatabase_ExecuteSql;                  // 04
    Database_ChechDatabaseStructure: ADatabase_ChechDatabaseStructure; // 05
    Database_CheckTableStructure: ADatabase_CheckTableStructure;// 06
    Database_GetConnected: ADatabase_GetConnected;              // 07
    Database_GetConnectionString: ADatabase_GetConnectionString;// 08
    Database_New: ADatabase_New;                                // 09
    Database_NewDataSet: ADatabase_NewDataSet;                  // 10
    Database_NewDataSetA: ADatabase_NewDataSetA;                // 11
    Database_SetConnectionString: ADatabase_SetConnectionString;// 12

    DatabaseStructure_New: ADatabaseStructure_New;              // 13
    Drivers_RegisterDriver: AData_Drivers_RegisterDriver;       // 14
    Database_ChangeDataSet: ADatabase_ChangeDataSet;            // 15
    {$IFDEF A02}
    {$ELSE}
    Init: AData_Init_Proc;                                      // 16
    Fin: AData_Fin_Proc;                                        // 17
    Reserved18: AInteger;
    Reserved19: AInteger;
    Reserved20: AInteger;
    Reserved21: AInteger;
    Reserved22: AInteger;
    Reserved23: AInteger;
    Reserved24: AInteger;
    Reserved25: AInteger;
    Reserved26: AInteger;
    Reserved27: AInteger;
    Reserved28: AInteger;
    Reserved29: AInteger;
    Reserved30: AInteger;
    Reserved31: AInteger;
    {
    function DatabaseStructure_AddTable(const TableName: WideString): PATableStructure;
    function DatabaseStructure_AddTableItem(Table: TATableStructure): Integer;
    procedure DatabaseStructure_Clear;
    function DatabaseStructure_GetTableByIndex(Index: Integer): PATableStructure;
    function DatabaseStructure_GetTableByName(const Name: WideString): PATableStructure;
    function DatabaseStructure_GetTableCount: Integer;

    function TableStructure_AddField(const FieldName: WideString; FieldType: TAFieldType): TAFieldStructure;
    function TableStructure_AddFieldA(const FieldName: WideString; FieldType: TAFieldType; FieldSize: Integer; NotNull: Boolean; const Description: WideString): TAFieldStructure;
    function TableStructure_AddFieldB(const FieldName: WideString; FieldType: TAFieldType; FieldSize: Integer; NotNull: Boolean; const Default, Description: WideString): TAFieldStructure;
    function TableStructure_AddFieldItem(Field: TAFieldStructure): Integer;
    function TableStructure_AddIndex(const IndexName: WideString; IndexType: TAIndexType; const IndexFields: WideString): TAIndexStructure;
    function TableStructure_AddIndexItem(Index: TAIndexStructure): Integer;
    function TableStructure_GetAccess: TATableAccess;
    function TableStructure_GetDescription: WideString;
    function TableStructure_GetFieldByIndex(Index: Integer): TAFieldStructure;
    function TableStructure_GetFieldByName(const Name: WideString): TAFieldStructure;
    function TableStructure_GetFieldCount: Integer;
    function TableStructure_GetIndexByIndex(Index: Integer): TAIndexStructure;
    function TableStructure_GetIndexCount: Integer;
    function TableStructure_GetName: AWideString;
    procedure TableStructure_SetDescription(const Value: AWideString);
    }
    {$ENDIF A03}
  end;

implementation

end.
 