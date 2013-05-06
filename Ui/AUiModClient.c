/*
Author Prof1983 <prof1983@ya.ru>
Created 06.05.2013
*/

#ifndef AUiModClient_C
#define AUiModClient_C

#include "ABase.h"
#include "ARuntime.h"
#include "AUiBase.h"

#include "AUiClient.c"

AError
AUi_Boot()
{
	AModule_Type Module;

	if (ARuntime_GetModuleByUid(AUi_Uid, &Module) < 0) return -12;
	if (Module.Uid != AUi_Uid) return -13;
	if (Module.GetProc == 0) return -14;
	return AUi_LoadProcs(Module.GetProc);
}

#endif