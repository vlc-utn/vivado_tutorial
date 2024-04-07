// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of x1
//        bit 31~0 - x1[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of x2
//        bit 31~0 - x2[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of x3
//        bit 31~0 - x3[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of b_y1
//        bit 31~0 - b_y1[31:0] (Read)
// 0x2c : Control signal of b_y1
//        bit 0  - b_y1_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of y2
//        bit 31~0 - y2[31:0] (Read)
// 0x3c : Control signal of y2
//        bit 0  - y2_ap_vld (Read/COR)
//        others - reserved
// 0x48 : Data signal of y3
//        bit 31~0 - y3[31:0] (Read)
// 0x4c : Control signal of y3
//        bit 0  - y3_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMY_FUN_CONTROL_ADDR_AP_CTRL   0x00
#define XMY_FUN_CONTROL_ADDR_GIE       0x04
#define XMY_FUN_CONTROL_ADDR_IER       0x08
#define XMY_FUN_CONTROL_ADDR_ISR       0x0c
#define XMY_FUN_CONTROL_ADDR_X1_DATA   0x10
#define XMY_FUN_CONTROL_BITS_X1_DATA   32
#define XMY_FUN_CONTROL_ADDR_X2_DATA   0x18
#define XMY_FUN_CONTROL_BITS_X2_DATA   32
#define XMY_FUN_CONTROL_ADDR_X3_DATA   0x20
#define XMY_FUN_CONTROL_BITS_X3_DATA   32
#define XMY_FUN_CONTROL_ADDR_B_Y1_DATA 0x28
#define XMY_FUN_CONTROL_BITS_B_Y1_DATA 32
#define XMY_FUN_CONTROL_ADDR_B_Y1_CTRL 0x2c
#define XMY_FUN_CONTROL_ADDR_Y2_DATA   0x38
#define XMY_FUN_CONTROL_BITS_Y2_DATA   32
#define XMY_FUN_CONTROL_ADDR_Y2_CTRL   0x3c
#define XMY_FUN_CONTROL_ADDR_Y3_DATA   0x48
#define XMY_FUN_CONTROL_BITS_Y3_DATA   32
#define XMY_FUN_CONTROL_ADDR_Y3_CTRL   0x4c

