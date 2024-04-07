// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmy_fun.h"

extern XMy_fun_Config XMy_fun_ConfigTable[];

#ifdef SDT
XMy_fun_Config *XMy_fun_LookupConfig(UINTPTR BaseAddress) {
	XMy_fun_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMy_fun_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMy_fun_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMy_fun_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_fun_Initialize(XMy_fun *InstancePtr, UINTPTR BaseAddress) {
	XMy_fun_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_fun_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_fun_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMy_fun_Config *XMy_fun_LookupConfig(u16 DeviceId) {
	XMy_fun_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMY_FUN_NUM_INSTANCES; Index++) {
		if (XMy_fun_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMy_fun_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_fun_Initialize(XMy_fun *InstancePtr, u16 DeviceId) {
	XMy_fun_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_fun_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_fun_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

