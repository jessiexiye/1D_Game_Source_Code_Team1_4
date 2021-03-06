/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_miniBeta_1 (
    input clk,
    input rst,
    input button2,
    input button3,
    input button4,
    input button1,
    input button5,
    output reg [15:0] outputled,
    output reg [15:0] outputn,
    output reg [15:0] outputp1,
    output reg [15:0] outputp2,
    output reg [15:0] outputp,
    output reg [15:0] outputm
  );
  
  
  
  reg [15:0] aluin_a;
  
  reg [15:0] aluin_b;
  
  wire [16-1:0] M_alu_alu;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  alu16_17 alu (
    .alufn(M_alu_alufn),
    .a(M_alu_a),
    .b(M_alu_b),
    .alu(M_alu_alu),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  wire [6-1:0] M_game_CU_alufn;
  wire [2-1:0] M_game_CU_asel;
  wire [4-1:0] M_game_CU_bsel;
  wire [4-1:0] M_game_CU_wa;
  wire [1-1:0] M_game_CU_we;
  wire [4-1:0] M_game_CU_ra;
  wire [4-1:0] M_game_CU_rb;
  reg [1-1:0] M_game_CU_button2;
  reg [1-1:0] M_game_CU_button3;
  reg [1-1:0] M_game_CU_button4;
  reg [1-1:0] M_game_CU_button1;
  reg [1-1:0] M_game_CU_button5;
  reg [16-1:0] M_game_CU_regfile_datain;
  reg [16-1:0] M_game_CU_regfile_datain2;
  game_CU_18 game_CU (
    .clk(clk),
    .button2(M_game_CU_button2),
    .button3(M_game_CU_button3),
    .button4(M_game_CU_button4),
    .button1(M_game_CU_button1),
    .button5(M_game_CU_button5),
    .regfile_datain(M_game_CU_regfile_datain),
    .regfile_datain2(M_game_CU_regfile_datain2),
    .alufn(M_game_CU_alufn),
    .asel(M_game_CU_asel),
    .bsel(M_game_CU_bsel),
    .wa(M_game_CU_wa),
    .we(M_game_CU_we),
    .ra(M_game_CU_ra),
    .rb(M_game_CU_rb)
  );
  wire [16-1:0] M_game_Regfiles_ra_out;
  wire [16-1:0] M_game_Regfiles_rb_out;
  wire [16-1:0] M_game_Regfiles_aout;
  wire [16-1:0] M_game_Regfiles_nout;
  wire [16-1:0] M_game_Regfiles_zout;
  wire [16-1:0] M_game_Regfiles_p1_out;
  wire [16-1:0] M_game_Regfiles_p2_out;
  wire [16-1:0] M_game_Regfiles_pout;
  wire [16-1:0] M_game_Regfiles_mout;
  reg [4-1:0] M_game_Regfiles_wa;
  reg [1-1:0] M_game_Regfiles_we;
  reg [16-1:0] M_game_Regfiles_data;
  reg [4-1:0] M_game_Regfiles_ra;
  reg [4-1:0] M_game_Regfiles_rb;
  game_miniRegfiles_19 game_Regfiles (
    .clk(clk),
    .rst(rst),
    .wa(M_game_Regfiles_wa),
    .we(M_game_Regfiles_we),
    .data(M_game_Regfiles_data),
    .ra(M_game_Regfiles_ra),
    .rb(M_game_Regfiles_rb),
    .ra_out(M_game_Regfiles_ra_out),
    .rb_out(M_game_Regfiles_rb_out),
    .aout(M_game_Regfiles_aout),
    .nout(M_game_Regfiles_nout),
    .zout(M_game_Regfiles_zout),
    .p1_out(M_game_Regfiles_p1_out),
    .p2_out(M_game_Regfiles_p2_out),
    .pout(M_game_Regfiles_pout),
    .mout(M_game_Regfiles_mout)
  );
  
  always @* begin
    M_game_Regfiles_we = M_game_CU_we;
    M_game_Regfiles_wa = M_game_CU_wa;
    M_game_Regfiles_ra = M_game_CU_ra;
    M_game_Regfiles_rb = M_game_CU_rb;
    M_game_CU_regfile_datain = M_game_Regfiles_zout;
    M_game_CU_regfile_datain2 = M_game_Regfiles_pout;
    M_game_CU_button2 = button2;
    M_game_CU_button3 = button3;
    M_game_CU_button4 = button4;
    M_game_CU_button1 = button1;
    M_game_CU_button5 = button5;
    
    case (M_game_CU_asel)
      2'h0: begin
        aluin_a = M_game_Regfiles_ra_out;
      end
      2'h1: begin
        aluin_a = 16'h8000;
      end
      2'h2: begin
        aluin_a = 4'hf;
      end
      2'h3: begin
        aluin_a = 7'h42;
      end
      default: begin
        aluin_a = 1'h0;
      end
    endcase
    
    case (M_game_CU_bsel)
      4'h0: begin
        aluin_b = M_game_Regfiles_rb_out;
      end
      4'h1: begin
        aluin_b = 2'h2;
      end
      4'h2: begin
        aluin_b = 2'h3;
      end
      4'h3: begin
        aluin_b = 3'h4;
      end
      4'h4: begin
        aluin_b = 4'ha;
      end
      4'h5: begin
        aluin_b = 1'h1;
      end
      4'h7: begin
        aluin_b = 3'h6;
      end
      4'h8: begin
        aluin_b = 4'h9;
      end
      4'h9: begin
        aluin_b = 4'hb;
      end
      4'ha: begin
        aluin_b = 4'hd;
      end
      4'hb: begin
        aluin_b = 4'hf;
      end
      4'hc: begin
        aluin_b = 1'h0;
      end
      4'hd: begin
        aluin_b = 6'h28;
      end
      4'he: begin
        aluin_b = 1'h1;
      end
      4'hf: begin
        aluin_b = 16'hffff;
      end
      default: begin
        aluin_b = 1'h0;
      end
    endcase
    M_alu_a = aluin_a;
    M_alu_b = aluin_b;
    M_alu_alufn = M_game_CU_alufn;
    M_game_Regfiles_data = M_alu_alu;
    outputled = M_game_Regfiles_aout;
    outputn = M_game_Regfiles_nout;
    outputp1 = M_game_Regfiles_p1_out;
    outputp2 = M_game_Regfiles_p2_out;
    outputp = M_game_Regfiles_pout;
    outputm = M_game_Regfiles_mout;
  end
endmodule
