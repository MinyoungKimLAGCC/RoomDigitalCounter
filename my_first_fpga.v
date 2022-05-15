module my_first_fpga (pushkey, sevenseg, ledr);

input [2:0] pushkey;

output reg[8:0] sevenseg;
output reg[9:0] ledr;

integer num=0;
integer num2=0;
integer num1=0;
integer num3 = 1;
assign enter_n= pushkey[0];
assign exit_n = pushkey[1];
assign reset_n = pushkey[2];


always@(negedge enter_n ) begin
 if(!enter_n) begin
     num1=num1+1;
  end
 
end 

always@(negedge exit_n ) begin
 if(!exit_n) begin
     num2=num2+1;
  end
 
end 
always@(posedge reset_n) begin
	if(reset_n) begin
	num3 = 0;
	end
end

 
always @* begin

	num=(num1-num2)*num3;	
   if(num<0) num=0;
   if(num>10) num=10;	
	if(num == 0) begin
		sevenseg[0] = 0;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=0;
		sevenseg[5]=0;
		
		
		sevenseg[6]=1;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 1) begin
		sevenseg[1]=0;
		sevenseg[2]=0;
		
		sevenseg[0] =1;
		sevenseg[3]=1;
		sevenseg[4]=1;
		sevenseg[5]=1;
		sevenseg[6]=1;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 2) begin
		sevenseg[0]=0;
		sevenseg[1]=0;
		sevenseg[3]=0;
		sevenseg[4]=0;
		sevenseg[6]=0;
		
		sevenseg[2]=1;
		sevenseg[5]=1;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	
	end else if (num == 3) begin
		sevenseg[0]=0;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=1;
		
		
		sevenseg[5]=1;
		sevenseg[6]=0;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 4) begin
		sevenseg[0]=1;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=1;
		sevenseg[4]=1;
		sevenseg[5]=0;
		sevenseg[6]=0;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 5) begin
		sevenseg[0]=0;
		sevenseg[1]=1;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=1;
		sevenseg[5]=0;
		sevenseg[6]=0;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 6) begin
		sevenseg[0]=0;
		sevenseg[1]=1;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=0;
		sevenseg[5]=0;
		sevenseg[6]=0;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 7) begin
		sevenseg[0]=0;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=1;
		sevenseg[4]=1;
		sevenseg[5]=0;
		sevenseg[6]=1;
		sevenseg[7]=1;
		sevenseg[8]=1;
		
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 8) begin
		sevenseg[0]=0;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=0;
		sevenseg[5]=0;
		sevenseg[6]=0;
		sevenseg[7]=1;
		sevenseg[8]=1;
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
	end else if (num == 9) begin
	sevenseg[0]=0;
	sevenseg[1]=0;
	sevenseg[2]=0;
	sevenseg[3]=0;
	sevenseg[4]=1;
	sevenseg[5]=0;
	sevenseg[6]=0;
	sevenseg[7]=1;
		sevenseg[8]=1;
		ledr[0]=0;
		ledr[1]=0;
		ledr[2]=0;
		ledr[3]=0;
		ledr[4]=0;
		ledr[5]=0;
		ledr[6]=0;
		ledr[7]=0;
		ledr[8]=0;
		ledr[9]=0;
		end else if(num == 10) begin
		sevenseg[0] = 0;
		sevenseg[1]=0;
		sevenseg[2]=0;
		sevenseg[3]=0;
		sevenseg[4]=0;
		sevenseg[5]=0;
		
		
		sevenseg[6]=1;
		sevenseg[7]=0;
		sevenseg[8]=0;
		ledr[0]=1;
		ledr[1]=1;
		ledr[2]=1;
		ledr[3]=1;
		ledr[4]=1;
		ledr[5]=1;
		ledr[6]=1;
		ledr[7]=1;
		ledr[8]=1;
		ledr[9]=1;
		
	end

end

endmodule
