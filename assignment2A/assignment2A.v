module assignment2A(clock, reset, w, z);
input clock, reset, w;
output z;
reg[3:1] o,O;
parameter [3:1] A=3'b000, B = 3'b001, C= 3'b010, D=3'b011, E=3'b100;
always@(w,o)
	case(o) 
		A: if (w) O = B;
				else O = A;
		B: if(w)O = B;
				else O = C;
		C: if(w) O = D;
				else O = A;
		D: if(w) O = E;
				else O = A;
		default: O = 3'bxxx;
	endcase
always @ (negedge reset, posedge clock)
		if (reset == 0) o <= A;
		else o <= O;
assign z = (o  == E);
endmodule 