// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\velocityControlHdl\velocityControlHdl_Clamp_block1.v
// Created: 2014-08-25 21:11:09
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: velocityControlHdl_Clamp_block1
// Source Path: velocityControlHdl/Control_Velocity/Rotor_Velocity_Control/Clamp
// Hierarchy Level: 6
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module velocityControlHdl_Clamp_block1
          (
           preSat,
           saturated,
           preIntegrator,
           Clamp
          );


  input   signed [35:0] preSat;  // sfix36_En22
  input   saturated;
  input   signed [35:0] preIntegrator;  // sfix36_En35
  output  Clamp;


  wire Compare_To_Zero_out1;
  wire Compare_To_Zero1_out1;
  wire Compare_To_Zero_out1_1;
  wire Logical_Operator_out1;


  // <S26>/Compare To Zero
  assign Compare_To_Zero_out1 = (preIntegrator <= 36'sh000000000 ? 1'b1 :
              1'b0);



  // <S26>/Compare To Zero1
  assign Compare_To_Zero1_out1 = (preSat <= 36'sh000000000 ? 1'b1 :
              1'b0);



  // <S26>/Logical Operator
  assign Compare_To_Zero_out1_1 =  ~ (Compare_To_Zero_out1 ^ Compare_To_Zero1_out1);



  // <S26>/AND
  assign Logical_Operator_out1 = Compare_To_Zero_out1_1 & saturated;



  assign Clamp = Logical_Operator_out1;

endmodule  // velocityControlHdl_Clamp_block1
