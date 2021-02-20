module ls164
  (
   input rst,
   input clk,
   input a,b,
   output logic[7:0] Q
   );

  always @(posedge clk) begin
    if (rst) begin
      Q <= 8'b0;
    end else if(a && b) begin
      Q[0] <= 1;
    end
    Q <= Q << 1;
  end
endmodule