{**
@Abstract AStringsModule
@Author Prof1983 <prof1983@ya.ru>
@Created 03.06.2011
@LastMod 22.02.2013
}
unit AStringsMod;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  AStringMain,
  AStringsBase,
  AStringsMain;

// --- AStringsMod ---

function AStringsMod_Boot(): AError; stdcall;

function AStringsMod_Fin(): AError; stdcall;

function AStringsMod_GetProc(ProcName: AStr): Pointer; stdcall;

function AStringsMod_Init(): AError; stdcall;

implementation

const
  AStrings_Version = $00070100;

const
  Module: AModule_Type = (
    Version: AStrings_Version;
    Uid: AStrings_Uid;
    Name: AStrings_Name;
    Description: nil;
    Init: AStringsMod_Init;
    Fin: AStringsMod_Fin;
    GetProc: AStringsMod_GetProc;
    Procs: nil;
    );

// --- AStringsMod ---

function AStringsMod_Boot(): AError;
begin
  Result := ARuntime_AddModule(Module);
end;

function AStringsMod_Fin(): AError;
begin
  Result := 0;
end;

function AStringsMod_GetProc(ProcName: AStr): Pointer;
begin
  if (ProcName = 'AString_Assign') then
    Result := Addr(AString_Assign)
  else if (ProcName = 'AString_AssignA') then
    Result := Addr(AString_AssignA)
  else if (ProcName = 'AString_Clear') then
    Result := Addr(AString_Clear)
  else if (ProcName = 'AString_Copy') then
    Result := Addr(AString_Copy)
  else if (ProcName = 'AString_CopyA') then
    Result := Addr(AString_CopyA)
  else if (ProcName = 'AString_GetChar') then
    Result := Addr(AString_GetChar)
  else if (ProcName = 'AString_GetLength') then
    Result := Addr(AString_GetLength)
  else if (ProcName = 'AStrings_Fin') then
    Result := Addr(AStrings_Fin)
  else if (ProcName = 'AStrings_Init') then
    Result := Addr(AStrings_Init)
  else
    Result := nil
end;

function AStringsMod_Init(): AError;
begin
  Result := 0;
end;

end.
