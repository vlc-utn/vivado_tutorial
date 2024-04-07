// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmy_fun.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMy_fun_CfgInitialize(XMy_fun *InstancePtr, XMy_fun_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMy_fun_Start(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMy_fun_IsDone(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMy_fun_IsIdle(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMy_fun_IsReady(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMy_fun_EnableAutoRestart(XMy_fun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMy_fun_DisableAutoRestart(XMy_fun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_AP_CTRL, 0);
}

void XMy_fun_Set_x1(XMy_fun *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X1_DATA, Data);
}

u32 XMy_fun_Get_x1(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X1_DATA);
    return Data;
}

void XMy_fun_Set_x2(XMy_fun *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X2_DATA, Data);
}

u32 XMy_fun_Get_x2(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X2_DATA);
    return Data;
}

void XMy_fun_Set_x3(XMy_fun *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X3_DATA, Data);
}

u32 XMy_fun_Get_x3(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_X3_DATA);
    return Data;
}

u32 XMy_fun_Get_b_y1(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_B_Y1_DATA);
    return Data;
}

u32 XMy_fun_Get_b_y1_vld(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_B_Y1_CTRL);
    return Data & 0x1;
}

u32 XMy_fun_Get_y2(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_Y2_DATA);
    return Data;
}

u32 XMy_fun_Get_y2_vld(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_Y2_CTRL);
    return Data & 0x1;
}

u32 XMy_fun_Get_y3(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_Y3_DATA);
    return Data;
}

u32 XMy_fun_Get_y3_vld(XMy_fun *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_Y3_CTRL);
    return Data & 0x1;
}

void XMy_fun_InterruptGlobalEnable(XMy_fun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_GIE, 1);
}

void XMy_fun_InterruptGlobalDisable(XMy_fun *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_GIE, 0);
}

void XMy_fun_InterruptEnable(XMy_fun *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_IER);
    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_IER, Register | Mask);
}

void XMy_fun_InterruptDisable(XMy_fun *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_IER);
    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMy_fun_InterruptClear(XMy_fun *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_fun_WriteReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_ISR, Mask);
}

u32 XMy_fun_InterruptGetEnabled(XMy_fun *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_IER);
}

u32 XMy_fun_InterruptGetStatus(XMy_fun *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_fun_ReadReg(InstancePtr->Control_BaseAddress, XMY_FUN_CONTROL_ADDR_ISR);
}

