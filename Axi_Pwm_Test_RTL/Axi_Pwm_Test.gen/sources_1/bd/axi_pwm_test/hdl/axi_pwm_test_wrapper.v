//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Fri May 29 15:10:04 2026
//Host        : lonewolf-pc running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target axi_pwm_test_wrapper.bd
//Design      : axi_pwm_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_pwm_test_wrapper
   (led,
    reset,
    sys_clock);
  output led;
  input reset;
  input sys_clock;

  wire led;
  wire reset;
  wire sys_clock;

  axi_pwm_test axi_pwm_test_i
       (.led(led),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
