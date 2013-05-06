/*
Author Prof1983 <prof1983@ya.ru>
Created 06.05.2013
*/

#ifndef ASystemEvents_C
#define ASystemEvents_C

#include "ABase.h"
#include "ABase2.h"

AInt
afunc ASystem_OnAfterRun_Connect(ACallbackProc Callback, AInt Weight)
{
	if (_ASystem_OnAfterRun_Connect == 0) {
		return -100;
	}
	return _ASystem_OnAfterRun_Connect(Callback, Weight);
}

AInt
afunc ASystem_OnAfterRun_Disconnect(ACallbackProc Callback)
{
	if (_ASystem_OnAfterRun_Disconnect == 0) {
		return -100;
	}
	return _ASystem_OnAfterRun_Disconnect(Callback);
}

AInt
afunc ASystem_OnBeforeRun_Connect(ACallbackProc Callback, AInt Weight)
{
	if (_ASystem_OnBeforeRun_Connect == 0) {
		return -100;
	}
	return _ASystem_OnBeforeRun_Connect(Callback, Weight);
}

AInt
afunc ASystem_OnBeforeRun_Disconnect(ACallbackProc Callback)
{
	if (_ASystem_OnBeforeRun_Disconnect == 0) {
		return -100;
	}
	return _ASystem_OnBeforeRun_Disconnect(Callback);
}

#endif