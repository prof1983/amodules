{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 20.02.2013
}
unit ACollectionsProcTypes;

interface

uses
  ABase,
  ABaseTypes,
  ACollectionsBase;

{ --- Procs --- }

type
  ACollections_Fin_Proc = function(): AError; stdcall;
  ACollections_Init_Proc = function(): AError; stdcall;
  AStringList_Add_Proc = function(StringList: AStringList; const Value: AString_Type): AInt; stdcall;
  AStringList_AddA_Proc = function(StringList: AStringList; Value: AStr): AInt; stdcall;
  AStringList_Clear_Proc = function(StringList: AStringList): AError; stdcall;
  AStringList_Delete_Proc = function(StringList: AStringList; Index: AInt): AError; stdcall;
  AStringList_GetCount_Proc = function(StringList: AStringList): AInt; stdcall;
  AStringList_Insert_Proc = function(StringList: AStringList; Index: AInt; Value: AString_Type): AInt; stdcall;
  AStringList_New_Proc = function(): AStringList; stdcall;
  AStringList_RemoveAt_Proc = function(StringList: AStringList; Index: AInt): AInt; stdcall;

implementation

end.
 