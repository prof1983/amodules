/*
Author Prof1983 <prof1983@ya.ru>
Created 15.04.2013
LastMod 15.04.2013
*/

#include "ABase.h"
#include "ARuntime.h"
#include "ASystemClient.c"

/*
  ARuntimeBase,
  ARuntimeMain,
  ASystemBase,
*/

const ASystem_Uid = 0x07082001;

AError
afunc ASystem_Boot() {
    AModule_Type Module;

    if (ARuntime_GetModuleByUid(ASystem_Uid, &Module) < 0) {
        return -2;
    }

    if (Module.GetProc == 0) {
        return -3;
    }
    return ASystem_LoadProcs(Module.GetProc);
}
