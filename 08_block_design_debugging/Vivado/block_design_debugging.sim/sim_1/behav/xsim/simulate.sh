#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Aug 25 11:51:54 -03 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim file_tb_behav -key {Behavioral:sim_1:Functional:file_tb} -tclbatch file_tb.tcl -protoinst "protoinst_files/multipliers.protoinst" -view /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/08_block_design_debugging/Vivado/multipliers_wrapper_behav.wcfg -log simulate.log"
xsim file_tb_behav -key {Behavioral:sim_1:Functional:file_tb} -tclbatch file_tb.tcl -protoinst "protoinst_files/multipliers.protoinst" -view /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/08_block_design_debugging/Vivado/multipliers_wrapper_behav.wcfg -log simulate.log

