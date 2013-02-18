{**
@Abstract AStrings
@Author Prof1983 <prof1983@ya.ru>
@Created 01.09.2011
@LastMod 18.02.2013
}
unit AStringsProcTypes;

interface

uses
  ABase;

type
  AString_Assign_Proc = function(var S: AString_Type; const Value: AString_Type): AError; stdcall;
  AString_AssignA_Proc = function(var S: AString_Type; Value: AStr): AError; stdcall;
  AString_Clear_Proc = function(var S: AString_Type): AError; stdcall;
  AString_Copy_Proc = function(var S: AString_Type; const Value: AString_Type): ASize; stdcall;
  AString_CopyA_Proc = function(var S: AString_Type; const Value: AStr): ASize; stdcall;
  AString_GetChar_Proc = function(const S: AString_Type; Index: AInt): AChar; stdcall;
  AString_GetLength_Proc = function(const S: AString_Type): AInteger; stdcall;

  AStrings_Fin_Proc = function(): AError; stdcall;
  AStrings_Init_Proc = function(): AError; stdcall;

implementation

end.
 