{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 31.05.2011
@LastMod 06.08.2012

Prototype:
CS: System.Collection.ICollection
CS: System.Collection.IList
CS: System.Collection.IEnumerable
CS: System.Collection.IEnumerator
CS: System.Collection.IComparer

CS: ArrayList
CS: Hashtable
CS: Queue
CS: SortedList
CS: Stack
}
unit ACollectionsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ACollections, ACollectionsBase, {$IFDEF ADepr}ACollectionsProcRec,{$ENDIF} 
  ARuntime, ARuntimeBase;

function ACollectionsMod_Boot(): AError; stdcall;

function ACollectionsMod_Fin(): AError; stdcall;

function ACollectionMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ACollectionsMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  CollectionsProcs: ACollectionsProcs_Type = (
    StringList_Add: ACollections.StringList_Add;                // 00
    StringList_AddP: ACollections.StringList_AddP;              // 01
    StringList_Clear: ACollections.StringList_Clear;            // 02
    StringList_Count: ACollections.StringList_Count;            // 03
    StringList_Delete: ACollections.StringList_Delete;          // 04
    StringList_Insert: ACollections.StringList_Insert;          // 05
    StringList_InsertP: ACollections.StringList_InsertP;        // 06
    StringList_New: ACollections.StringList_New;                // 07
    StringList_RemoveAt: ACollections.StringList_RemoveAt;      // 08
    Init: ACollectionsMod_Init;                                 // 09
    Fin: ACollectionsMod_Fin;                                   // 10
    StringList_AddA: ACollections.StringList_AddA;              // 11
    Reserved12: 0;
    Reserved13: 0;
    Reserved14: 0;
    Reserved15: 0;
    Reserved16: 0;
    Reserved17: 0;
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
  ACollections_Version = $00040000;

const
  CollectionsModule: AModule_Type = (
    Version: ACollections_Version;      // Module version ($AABBCCDD). AA=00h, BB=03h.
    Uid: ACollections_Uid;              // Module unique identificator $YYMMDDxx YY - Year, MM - Month, DD - Day
    Name: ACollections_Name;            // Module unuque name
    Description: nil;                   // Module information and description
    Init: ACollectionsMod_Init;         // Initialize proc
    Fin: ACollectionsMod_Fin;           // Finalize proc
    GetProc: ACollectionMod_GetProc;    // Get proc address
    Procs: {$IFDEF ADepr}Addr(CollectionsProcs){$ELSE}nil{$ENDIF};
    );

// --- ACollectionsMod ---

function ACollectionsMod_Boot(): AError;
begin
  Result := AModule_Register(CollectionsModule);
end;

function ACollectionsMod_Fin(): AError;
begin
  Result := 0;
end;

function ACollectionMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function ACollectionsMod_Init(): AError;
begin
  if (ARuntime_FindModuleByUid(ACollections_Uid) > 0) then
  begin
    Result := -2;
    Exit;
  end;

  if (ARuntime_FindModuleByName(ACollections_Name) > 0) then
  begin
    Result := -3;
    Exit;
  end;

  //Result := ACollections.Init();
  Result := 0;
end;

end.
 