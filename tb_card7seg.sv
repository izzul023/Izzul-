module tb_card7seg();

// Your testbench goes here. Make sure your tests exercise the entire design
// in the .sv file.  Note that in our tests the simulator will exit after
// 10,000 ticks (equivalent to "initial #10000 $finish();").

  logic [3:0] SW;
  logic [6:0] HEX0;

  card7seg dut(SW,HEX0);

  initial begin

   //test input 1 (output A)
   SW = 4'b0001;
  
   #50

   //test input 2 (output 2)
   SW = 4'b0010;
  
   #50

   //test input 3 (output 3)
   SW = 4'b0011;
  
   #50

   //test input 4 (output 4)
   SW = 4'b0100;

   #50

   //test input 5 (output 5)
   SW = 4'b0101;
  
   #50

   //test input 6 (output 6)
   SW = 4'b0110;
  
   #50

   //test input 7 (output 7)
   SW = 4'b0111;
  
   #50

   //test input 8 (output 8)
   SW = 4'b1000;

   #50

   //test input 9 (output 9)
   SW = 4'b1001;
  
   #50

   //test input 10 (output 0)
   SW = 4'b1010;
  
   #50

   //test input 11 (output j)
   SW = 4'b1011;

   #50

   //test input 12 (output q)
   SW = 4'b1100;
  
   #50

   //test input 13 (output k)
   SW = 4'b1101;
  
   #50

   //test input 14 (output none)
   SW = 4'b1110;
  
   #50

   //test input 15 (output none)
   SW = 4'b1111;

   #50

   //test input 0 (output none)
   SW = 4'b0000;

  end
						
endmodule

