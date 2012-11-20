{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 01.08.2012
@LastMod 08.08.2012
}
unit ACollections;

interface

uses
  ABase, ACollectionsBase, ACollectionsProcVars;

// --- StringList ---

function StringList_AddA(StringList: AStringList; Value: AStr): AInt; stdcall;

function StringList_Clear(StringList: AStringList): AError; stdcall;

implementation

// --- StringList ---

function StringList_AddA(StringList: AStringList; Value: AStr): AInt;
begin
  if not(Assigned(ACollections_StringList_AddA)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ACollections_StringList_AddA(StringList, Value);
end;

function StringList_Clear(StringList: AStringList): AError;
begin
  if not(Assigned(ACollections_StringList_Clear)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ACollections_StringList_Clear(StringList);
end;

end.
 