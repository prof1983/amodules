{**
@Abstract User Interface procs var
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit AUiImages;

{$define AStdCall}

interface

uses
  ABase, AStrings,
  AUiBase, AUiProcVars;

{** Загружает изображение из файла }
function AUiImage_LoadFromFile(Image: AControl; const FileName: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Загружает изображение из файла }
function AUiImage_LoadFromFileA(Image: AControl; FileName: AStr): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Загружает изображение из файла }
function AUiImage_LoadFromFileP(Image: AControl; const FileName: APascalString): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Загружает изображение из файла }
function AUiImage_LoadFromFileWS(Image: AControl; const FileName: AWideString): AError; {$ifdef AStdCall}stdcall;{$endif}

{** Создает новый элемент-изображение }
function AUiImage_New(Parent: AControl): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

function AUiImage_LoadFromFile(Image: AControl; const FileName: AString_Type): AError;
begin
  if not(Assigned(AUiProcVars.AUiImage_LoadFromFile)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiImage_LoadFromFile(Image, FileName);
end;

function AUiImage_LoadFromFileA(Image: AControl; FileName: AStr): AError;
var
  S: AString_Type;
begin
  if Assigned(AUiProcVars.AUiImage_LoadFromFileA) then
    Result := AUiProcVars.AUiImage_LoadFromFileA(Image, FileName)
  else
  begin
    AString_AssignA(S, FileName);
    Result := AUiImage_LoadFromFile(Image, S);
  end;
end;

function AUiImage_LoadFromFileP(Image: AControl; const FileName: APascalString): AError;
var
  S: AString_Type;
begin
  AString_AssignP(S, FileName);
  Result := AUiImage_LoadFromFile(Image, S);
end;

function AUiImage_LoadFromFileWS(Image: AControl; const FileName: AWideString): AError;
var
  S: AString_Type;
begin
  AString_AssignWS(S, FileName);
  Result := AUiImage_LoadFromFile(Image, S);
end;

function AUiImage_New(Parent: AControl): AControl;
begin
  if not(Assigned(AUiProcVars.AUiImage_New)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUiImage_New(Parent);
end;

end.
 