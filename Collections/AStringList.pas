{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 01.08.2012
@LastMod 20.02.2013
}
unit ACollections;

interface

uses
  ABase,
  //ABaseTypes,
  ACollectionsProcVars;

// --- AStringList ---

function AStringList_Add(StringList: AStringList; const Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_AddA(StringList: AStringList; Value: AStr): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_AddP(StringList: AStringList; const Value: APascalString): AInt;

function AStringList_Clear(StringList: AStringList): AError; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_Delete(StringList: AStringList; Index: AInt): AError; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_GetCount(StringList: AStringList): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_Insert(StringList: AStringList; Index: AInt; Value: AString_Type): AInt; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_InsertP(StringList: AStringList; Index: AInt;
    const Value: APascalString): AError;

function AStringList_New(): AStringList; {$ifdef AStdCall}stdcall;{$endif}

function AStringList_RemoveAt(StringList: AStringList; Index: AInt): AInt; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AStringList ---

function AStringList_Add(StringList: AStringList; const Value: AString_Type): AInt;
begin
  if not(Assigned(ACollections_StringList_Add)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_Add(StringList, Value);
end;

function AStringList_AddA(StringList: AStringList; Value: AStr): AInt;
begin
  if not(Assigned(ACollections_StringList_AddA)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_AddA(StringList, Value);
end;

function AStringList_AddP(StringList: AStringList; const Value: APascalString): AInt;
var
  S: AString_Type;
begin
  AString_AssignP(S, Value);
  Result := StringList_Add(StringList, S);
end;

function AStringList_Clear(StringList: AStringList): AError;
begin
  if not(Assigned(ACollections_StringList_Clear)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_Clear(StringList);
end;

function AStringList_Delete(StringList: AStringList; Index: AInt): AError;
begin
  if not(Assigned(ACollections_StringList_Delete)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_Delete(StringList, Index);
end;

function AStringList_GetCount(StringList: AStringList): AInt;
begin
  if not(Assigned(ACollections_StringList_GetCount)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_GetCount(StringList);
end;

function AStringList_Insert(StringList: AStringList; Index: AInt; Value: AString_Type): AInt;
begin
  if not(Assigned(ACollections_StringList_Insert)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_Insert(StringList, Index, Value);
end;

function AStringList_InsertP(StringList: AStringList; Index: AInt;
    const Value: APascalString): AError;
var
  S: AString_Type;
begin
  AString_AssignP(S, Value);
  Result := AStringList_Insert(StringList, Index, S);
end;

function AStringList_New(): AStringList;
begin
  if not(Assigned(ACollections_StringList_New)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_New();
end;

function AStringList_RemoveAt(StringList: AStringList; Index: AInt): AInt;
begin
  if not(Assigned(ACollections_StringList_RemoveAt)) then
  begin
    Result := -100;
    Exit;
  end;
  Result := ACollections_StringList_RemoveAt(StringList, Index);
end;

end.
 