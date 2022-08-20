module assignment2B (clk,rstn,w,Q,c);
input clk, rstn;
input [1:0]w;
output reg Q;
output reg[1:0]c;
reg [1:0]y,Y;
parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;
always @ (w,y)
	case (y)
		A: if (w[1]==0 && w[0]==0)
			begin
				Q = 0;
				y = A;
				c = 2'b00;
			end
		else if (w[1]==0 && w[0] == 1)
			begin
				Q = 0;
				Y=B;
				c=2'b00;
			end
		else if (w[1]==1 && w[0]==0)
			begin
				Q = 0;
				Y = D;
				c = 2'b00;
			end
	endcase
	
endmodule 