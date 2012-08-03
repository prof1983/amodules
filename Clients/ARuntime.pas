{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 19.12.2011
@LastMod 01.08.2012
}
unit ARuntime;

interface

uses
  ABase, ARuntimeBase, ARuntimeProcRec;

function ARuntime_AddModule(const Module: AModule_Type): AInteger; stdcall;

function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInteger; stdcall;

function ARuntime_FindModuleByName(Name: PAnsiChar): AInteger; stdcall;

function ARuntime_FindModuleByUid(Uid: AModuleUid): AInteger; stdcall;

function ARuntime_GetModuleByName(Name: PAnsiChar; out Module: AModule_Type): AInteger; stdcall;

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall;

function ARuntime_GetModuleNameByIndexWS(Index: AInteger): AWideString; stdcall;

function ARuntime_GetModulesCount(): AInteger; stdcall;

function ARuntime_InitModuleByName(Name: PAnsiChar): AInteger; stdcall;

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInteger; stdcall;

// ----

function Module_Register(const Module: AModule_Type): AInteger; stdcall; deprecated; // Use ARuntime_AddModule()

function Modules_Count(): AInteger; stdcall; deprecated; // Use ARuntime_GetModuleCount()

function Modules_DeleteByUid(Uid: AModuleUid): AInteger; stdcall; deprecated; // Use ARuntime_DeleteModuleByUid()

function Modules_FindByName(Name: PAnsiChar): AInteger; stdcall; deprecated; // Use ARuntime_FindModuleByName()

function Modules_FindByUid(Uid: AModuleUid): AInteger; stdcall; deprecated; // Use ARuntime_FindModuleByUid()

function Modules_GetByName(Name: PAnsiChar; out Module: AModule_Type): AInteger; stdcall; deprecated;

function Modules_GetByNameWS(const Name: AWideString; out Module: AModule_Type): AInteger; stdcall; deprecated;

function Modules_GetByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall; deprecated;

function Modules_GetNameByIndexWS(Index: AInteger): AWideString; stdcall; deprecated;

function Modules_InitByName(Name: PAnsiChar): AInteger; stdcall; deprecated;

function Modules_InitByUid(Uid: AModuleUid): AInteger; stdcall; deprecated;

implementation

var
  FRuntime: ARuntimeProcs_Type;

// --- ARuntime ---

function ARuntime_AddModule(const Module: AModule_Type): AInteger;
begin
  Result := FRuntime.AddModule(Module);
end;

function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;
begin
  FRuntime := Runtime;
  Result := 0;
end;

function ARuntime_DeleteModuleByUid(Uid: AModuleUid): AInteger;
begin
  Result := FRuntime.DeleteModuleByUid(Uid);
end;

function ARuntime_FindModuleByName(Name: PAnsiChar): AInteger;
begin
  Result := FRuntime.FindModuleByName(Name);
end;

function ARuntime_FindModuleByUid(Uid: AModuleUid): AInteger;
begin
  Result := FRuntime.FindModuleByUid(Uid);
end;

function ARuntime_GetModuleByName(Name: PAnsiChar; out Module: AModule_Type): AInteger;
begin
  Result := FRuntime.GetModuleByName(Name, Module);
end;

function ARuntime_GetModuleByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger;
begin
  Result := FRuntime.GetModuleByUid(Uid, Module);
end;

function ARuntime_GetModuleNameByIndexWS(Index: AInteger): AWideString;
var
  TmpName: array[0..256] of AnsiChar;
begin
  if (FRuntime.GetModuleNameByIndex(Index, TmpName, 255) > 0) then
    Result := AWideString(AnsiString(TmpName));
end;

function ARuntime_GetModulesCount(): AInteger;
begin
  Result := FRuntime.GetModulesCount();
end;

function ARuntime_InitModuleByName(Name: PAnsiChar): AInteger;
begin
  Result := FRuntime.InitModuleByName(Name);
end;

function ARuntime_InitModuleByUid(Uid: AModuleUid): AInteger;
begin
  Result := FRuntime.InitModuleByUid(Uid);
end;

{ Module }

function Module_Register(const Module: AModule_Type): AInteger; stdcall;
begin
  Result := ARuntime_AddModule(Module);
end;

{ Modules }

function Modules_Count: AInteger; stdcall;
begin
  Result := ARuntime_GetModulesCount();
end;

function Modules_DeleteByUid(Uid: AModuleUid): AInteger; stdcall;
begin
  Result := ARuntime_DeleteModuleByUid(Uid);
end;

function Modules_FindByName(Name: PAnsiChar): AInteger; stdcall;
begin
  Result := ARuntime_FindModuleByName(Name);
end;

function Modules_FindByUid(Uid: AModuleUid): AInteger; stdcall;
begin
  Result := ARuntime_FindModuleByUid(Uid);
end;

function Modules_GetByName(Name: PAnsiChar; out Module: AModule_Type): AInteger; stdcall;
begin
  Result := ARuntime_GetModuleByName(Name, Module);
end;

function Modules_GetByNameWS(const Name: AWideString; out Module: AModule_Type): AInteger; stdcall;
begin
  Result := ARuntime_GetModuleByName(PAnsiChar(AnsiString(Name)), Module);
end;

function Modules_GetByUid(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall;
begin
  Result := ARuntime_GetModuleByUid(Uid, Module);
end;

function Modules_GetNameByIndexWS(Index: AInteger): AWideString; stdcall;
begin
  Result := ARuntime_GetModuleNameByIndexWS(Index);
end;

function Modules_InitByName(Name: PAnsiChar): AInteger; stdcall;
begin
  Result := ARuntime_InitModuleByName(Name);
end;

function Modules_InitByUid(Uid: AModuleUid): AInteger; stdcall;
begin
  Result := ARuntime_InitModuleByUid(Uid);
end;

end.
 