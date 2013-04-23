{**
@Abstract AStrings
@Author Prof1983 <prof1983@ya.ru>
@Created 01.09.2011
@LastMod 23.04.2013
}
unit AStringsProcTypes;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase;

type
  AString_Assign_Proc = function(var S: AString_Type; const Value: AString_Type): AError; stdcall;
  AString_AssignA_Proc = function(var S: AString_Type; Value: AStr): AError; stdcall;
  {$IFDEF ADepr}AString_AssignP_Proc = function(var S: AString_Type; const Value: APascalString): AError; stdcall;{$ENDIF}
  {$IFDEF ADepr}AString_AssignWS_Proc = function(var S: AString_Type; const Value: WideString): AError; stdcall;{$ENDIF}
  AString_Clear_Proc = function(var S: AString_Type): AError; stdcall;
  AString_Copy_Proc = function(var S: AString_Type; const Value: AString_Type): ASize; stdcall;
  AString_CopyA_Proc = function(var S: AString_Type; Value: AStr): ASize; stdcall;
  AString_GetChar_Proc = function(const S: AString_Type; Index: AInt): AChar; stdcall;
  AString_GetLength_Proc = function(const S: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}AString_Free_Proc = AString_Clear_Proc;{$ENDIF}
  {$IFDEF ADepr}AString_ToWideString_Proc = function(const S: AString_Type): WideString; stdcall;{$ENDIF}
  {$IFDEF ADepr}AString_ToPascalString_Proc = function(const S: AString_Type): APascalString; stdcall;{$ENDIF}

  AStrings_Fin_Proc = function(): AError; stdcall;
  AStrings_Init_Proc = function(): AError; stdcall;

implementation

end.
 