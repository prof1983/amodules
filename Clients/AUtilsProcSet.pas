{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 25.01.2013
}
unit AUtilsProcSet;

interface

uses
  ABase, AUtilsProcRec, AUtilsProcVars;

{$ifdef ADepr}
function AUtils_SetProcs(const Procs: AUtilsProcs_Type): AError;

function AUtils_SetProcsP(Procs: PUtilsProcs): AError;
{$endif}

implementation

{$ifdef ADepr}
function AUtils_SetProcs(const Procs: AUtilsProcs_Type): AError;
begin
  AUtilsProcVars.AUtils_NormalizeFloat := Procs.NormalizeFloat;
  AUtilsProcVars.AUtils_NormalizeStrWS := Procs.NormalizeStrWS;
  AUtilsProcVars.AUtils_FileExistsWS := Procs.FileExistsWS;
  AUtilsProcVars.AUtils_Sleep02 := Procs.Sleep;
  AUtilsProcVars.AUtils_Time_Now := Procs.Time_Now;
  AUtilsProcVars.AUtils_IntToStrWS := Procs.IntToStrWS;
  AUtilsProcVars.AUtils_StrToFloatWS := Procs.StrToFloatWS;
  AUtilsProcVars.AUtils_StrToIntWS := Procs.StrToIntWS;
  AUtilsProcVars.AUtils_ExtractFilePathWS := Procs.ExtractFilePathWS;
  AUtilsProcVars.AUtils_Power := Procs.Power;
  AUtilsProcVars.AUtils_ReplaceCommaWS := Procs.ReplaceCommaWS;
  AUtilsProcVars.AUtils_StrToFloatDefWS := Procs.StrToFloatDefWS;
  AUtilsProcVars.AUtils_StrToIntDefWS := Procs.StrToIntDefWS;
  AUtilsProcVars.AUtils_TryStrToFloatWS := Procs.TryStrToFloatWS;
  AUtilsProcVars.AUtils_TryStrToFloat32WS := Procs.TryStrToFloat32WS;
  AUtilsProcVars.AUtils_TryStrToFloat64WS := Procs.TryStrToFloat64WS;
  AUtilsProcVars.AUtils_TryStrToDateWS := Procs.TryStrToDateWS;
  AUtilsProcVars.AUtils_TryStrToIntWS := Procs.TryStrToIntWS;
  AUtilsProcVars.AUtils_FloatToStr := Procs.FloatToStr;
  AUtilsProcVars.AUtils_TrimWS := Procs.TrimWS;
  AUtilsProcVars.AUtils_UpperStringWS := Procs.UpperStringWS;
  AUtilsProcVars.AUtils_ExtractFileExtWS := Procs.ExtractFileExtWS;
  AUtilsProcVars.AUtils_FormatFloatWS := Procs.FormatFloatWS;
  AUtilsProcVars.AUtils_FormatIntWS := Procs.FormatIntWS;
  AUtilsProcVars.AUtils_StrToDateWS := Procs.StrToDateWS;
  AUtilsProcVars.AUtils_FormatStrWS := Procs.FormatStrWS;
  AUtilsProcVars.AUtils_Init := Procs.Init;
  AUtilsProcVars.AUtils_Fin := Procs.Fin;
  AUtilsProcVars.AUtils_FormatStrStrWS := Procs.FormatStrStrWS;
  AUtilsProcVars.AUtils_ExpandFileNameWS := Procs.ExpandFileNameWS;
  AUtilsProcVars.AUtils_ChangeFileExtWS := Procs.ChangeFileExtWS;
  AUtilsProcVars.AUtils_DeleteFileWS := Procs.DeleteFileWS;
  AUtilsProcVars.AUtils_DateToStrWS := Procs.DateToStrWS;
  Result := 0;
end;

function AUtils_SetProcsP(Procs: PUtilsProcs): AError;
begin
  if not(Assigned(Procs)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtils_SetProcs(Procs^);
end;
{$endif}

end.
 