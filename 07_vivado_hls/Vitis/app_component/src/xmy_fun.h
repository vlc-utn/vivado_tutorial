// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMY_FUN_H
#define XMY_FUN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmy_fun_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMy_fun_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMy_fun;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMy_fun_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMy_fun_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMy_fun_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMy_fun_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMy_fun_Initialize(XMy_fun *InstancePtr, UINTPTR BaseAddress);
XMy_fun_Config* XMy_fun_LookupConfig(UINTPTR BaseAddress);
#else
int XMy_fun_Initialize(XMy_fun *InstancePtr, u16 DeviceId);
XMy_fun_Config* XMy_fun_LookupConfig(u16 DeviceId);
#endif
int XMy_fun_CfgInitialize(XMy_fun *InstancePtr, XMy_fun_Config *ConfigPtr);
#else
int XMy_fun_Initialize(XMy_fun *InstancePtr, const char* InstanceName);
int XMy_fun_Release(XMy_fun *InstancePtr);
#endif

void XMy_fun_Start(XMy_fun *InstancePtr);
u32 XMy_fun_IsDone(XMy_fun *InstancePtr);
u32 XMy_fun_IsIdle(XMy_fun *InstancePtr);
u32 XMy_fun_IsReady(XMy_fun *InstancePtr);
void XMy_fun_EnableAutoRestart(XMy_fun *InstancePtr);
void XMy_fun_DisableAutoRestart(XMy_fun *InstancePtr);

void XMy_fun_Set_x1(XMy_fun *InstancePtr, u32 Data);
u32 XMy_fun_Get_x1(XMy_fun *InstancePtr);
void XMy_fun_Set_x2(XMy_fun *InstancePtr, u32 Data);
u32 XMy_fun_Get_x2(XMy_fun *InstancePtr);
void XMy_fun_Set_x3(XMy_fun *InstancePtr, u32 Data);
u32 XMy_fun_Get_x3(XMy_fun *InstancePtr);
u32 XMy_fun_Get_b_y1(XMy_fun *InstancePtr);
u32 XMy_fun_Get_b_y1_vld(XMy_fun *InstancePtr);
u32 XMy_fun_Get_y2(XMy_fun *InstancePtr);
u32 XMy_fun_Get_y2_vld(XMy_fun *InstancePtr);
u32 XMy_fun_Get_y3(XMy_fun *InstancePtr);
u32 XMy_fun_Get_y3_vld(XMy_fun *InstancePtr);

void XMy_fun_InterruptGlobalEnable(XMy_fun *InstancePtr);
void XMy_fun_InterruptGlobalDisable(XMy_fun *InstancePtr);
void XMy_fun_InterruptEnable(XMy_fun *InstancePtr, u32 Mask);
void XMy_fun_InterruptDisable(XMy_fun *InstancePtr, u32 Mask);
void XMy_fun_InterruptClear(XMy_fun *InstancePtr, u32 Mask);
u32 XMy_fun_InterruptGetEnabled(XMy_fun *InstancePtr);
u32 XMy_fun_InterruptGetStatus(XMy_fun *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
