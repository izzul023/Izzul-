module card7seg(input [3:0] SW, output [6:0] HEX0);
		
   // your code goes here
 logic[6:0] card_out;

 
  always_comb 
  begin
        case(SW)
          4'b0001: card_out = 7'b0001000; //input 1 for card A
          4'b0010: card_out = 7'b0100100; //input 2 for card 2
          4'b0011: card_out = 7'b0110000; //input 3 for card 3
          4'b0100: card_out = 7'b0011001; //input 4 for card 4
          4'b0101: card_out = 7'b0010010; //input 5 for card 5
          4'b0110: card_out = 7'b0000010; //input 6 for card 6
          4'b0111: card_out = 7'b1111000; //input 7 for card 7
          4'b1000: card_out = 7'b0000000; //input 8 for card 8
          4'b1001: card_out = 7'b0010000; //input 9 for card 9
          4'b1010: card_out = 7'b1000000; //input 10 for card 10 (displayed as 0)
          4'b1011: card_out = 7'b1100001; //input 11 for card Jack 
          4'b1100: card_out = 7'b0011000; //input 12 for card Queen 
          4'b1101: card_out = 7'b0001001; //input 13 for card King

          //cases where no value is displayed
          4'b0000: card_out = 7'b1111111;
          4'b1110: card_out = 7'b1111111;
          4'b1111: card_out = 7'b1111111;
        endcase
 end
 assign HEX0 = card_out;
	
endmodule

