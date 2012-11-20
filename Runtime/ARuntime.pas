{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 19.12.2011
@LastMod 20.11.2012
}
unit ARuntime;

interface

uses
  ABase, ARuntimeBase, ARuntimeMain;

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
 