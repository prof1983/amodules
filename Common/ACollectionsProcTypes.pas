{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 24.12.2012
}
unit ACollectionsProcTypes;

interface

uses
  ABase,
  ABaseTypes,
  ACollectionsBase;

{ --- Procs --- }

type
  {** ƒобавл€ет строку в список. ¬озвращает индекс, по которому эта строка сохранена. }
  A_Collections_StringList_Add_Proc = function(StringList: AStringList;
      const Value: AString_Type): AInteger; stdcall;

  {** ƒобавл€ет строку в список. ¬озвращает индекс, по которому эта строка сохранена. }
  A_Collections_StringList_AddA_Proc = function(StringList: AStringList;
      Value: PAnsiChar): AInteger; stdcall;

  {** ƒобавл€ет строку в список. ¬озвращает индекс, по которому эта строка сохранена. }
  A_Collections_StringList_AddP_Proc = function(StringList: AStringList;
      const Value: APascalString): AInteger; stdcall;

  {** ”дал€ет все элементы. }
  A_Collections_StringList_Clear_Proc = function(StringList: AStringList): AError; stdcall;

  {** ¬озвращает кол-во элементов в коллекции. }
  A_Collections_StringList_Count_Proc = function(StringList: AStringList): AInteger; stdcall;

  {** ”дал€ет из списка строку, расположенную по указанному индексу.
      Ёлементы, наход€щиес€ за удал€емым смещаютс€ назад, чтобы ликвидировать образовавшуюс€ брешь. }
  A_Collections_StringList_Delete_Proc = function(StringList: AStringList; Index: AInteger): AError; stdcall;

  {** ¬ставл€ет в список строку по указанному индексу.
      Ёлементы, находившиес€ до этого по индексу Index и далее, смещаютс€ вперед, чтобы освободить
      место дл€ вставл€емого объекта. }
  A_Collections_StringList_Insert_Proc = function(StringList: AStringList; Index: AInteger;
      Value: AString_Type): AInteger; stdcall;

  {** ¬ставл€ет в список строку по указанному индексу.
      Ёлементы, находившиес€ до этого по индексу Index и далее, смещаютс€ вперед, чтобы освободить
      место дл€ вставл€емого объекта. }
  A_Collections_StringList_InsertP_Proc = function(StringList: AStringList; Index: AInteger;
      const Value: APascalString): AError; stdcall;

  {** —оздает коллекцию-список строк. }
  A_Collections_StringList_New_Proc = function(): AStringList; stdcall;

  {** ”дал€ет из списка строку, расположенную по указанному индексу.
      Ёлементы, наход€щиес€ за удал€емым смещаютс€ назад, чтобы ликвидировать образовавшуюс€ брешь. }
  A_Collections_StringList_RemoveAt_Proc = function(StringList: AStringList;
      Index: AInteger): AInteger; stdcall;

  {** Initialize }
  A_Collections_Init_Proc = function(): AError; stdcall;

  {** Finalize }
  A_Collections_Fin_Proc = function(): AError; stdcall;

implementation

end.
 