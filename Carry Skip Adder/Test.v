/* (c) Krishna Subramanian <https://github.com/mongrelgem>
 * For Issues & Bugs, report to <https://github.com/mongrelgem/Verilog-Adders/issues>
*/


module tb_RCA4;
  wire [3:0] sum;
  wire cout;
  reg [3:0] a, b;
  reg cin;
  
  RCA4 rca4(sum[3:0], cout, a[3:0], b[3:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", a[3:0], b[3:0], cout, sum[3:0]);
  end
  
  initial
  begin
    a=4'b1010; b=4'b1010;
    #10 a=4'b1000; b=4'b1100;
    #10 a=4'b0011; b=4'b1111;

  end
endmodule

module tb_CSkipA8;
  wire [7:0] sum;
  wire cout;
  reg [7:0] a, b;
  
  CSkipA8 csa8(sum[7:0], cout, a[7:0], b[7:0]);
  
  initial
  begin
    $display("a       |b       ||cout|sum     ");
  end
  
  initial
  begin
    $monitor("%b|%b||%b   |%b", a[7:0], b[7:0], cout, sum[7:0]);
  end
  
  initial
  begin
    a=8'b10100000; b=8'b10100000;
    #10 a=8'b01011000; b=8'b11110100;
    #10 a=8'b00111101; b=8'b00001111;
    #10 a=8'b11001010; b=8'b11001000;
    #10 a=8'b10100110; b=8'b11110100;
    #10 a=8'b11110011; b=8'b11001100;
    #10 a=8'b11110011; b=8'b01010111;

  end
endmodule

module tb_CSkipA16;
  wire [15:0] sum;
  wire cout;
  reg [15:0] a, b;
  
  CSkipA16 csa16(sum[15:0], cout, a[15:0], b[15:0]);
  
  initial
  begin
    $display("a       |b       ||cout|sum     ");
  end
  
  initial
  begin
    $monitor("%b|%b||%b   |%b", a[15:0], b[15:0], cout, sum[15:0]);
  end
  
  initial
  begin
    a=16'b1010000010100000; b=16'b1010000010100000;
    #10 a=16'b0101100011110100; b=16'b1111010011110100;
    #10 a=16'b0000111100111101; b=16'b0000111100001111;
    #10 a=16'b1100100011001010; b=16'b1100100011001010;
  end
endmodule

module tb_CSkipA32;
  wire [31:0] sum;
  wire cout;
  reg [31:0] a, b;
  reg cin;
  
  CSkipA32 sca32(sum[31:0], cout, a[31:0], b[31:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", a[31:0], b[31:0], cout, sum[31:0]);
  end
  
  initial
  begin
    a='b10100000101000001111111111111111; b='b10100000101111111111111111100000;
    #10 a='b01011000111111111111111111110100; b='b11110100111101001111111111111111;
    #10 a='b11111111111111110000111100111101; b='b00001111000011111111111111111111;
    #10 a='b11011111111111111110100011001010; b='b11001111111111111111100011001010;

  end
endmodule

module tb_CSkipA64;
  wire [63:0] sum;
  wire cout;
  reg [63:0] a, b;
  reg cin;
  
  CSkipA64 csa64(sum[63:0], cout, a[63:0], b[63:0]);
  
  initial
  begin
    $display("a|b||cout|sum");
  end
  
  initial
  begin
    $monitor("%d|%d||%d|%d", a[63:0], b[63:0], cout, sum[63:0]);
  end
  
  initial
  begin
    a=64'd998; b=64'd128;
    #10 a=64'd9998; b=64'd9028;
    #10 a=64'd999909989998; b=64'd769028;

  end
endmodule