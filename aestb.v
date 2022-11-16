`timescale 1ns / 1ns
module encryption_test();

    reg clk;
    reg [127:0] r_Key;
    reg [127:0] r_Plain_Text;

    wire [127:0] w_Cipher_Text;

    aes_main dut(
        .clk(clk),
        .data_in(r_Plain_Text),
        .key(r_Key),
        .data_out(w_Cipher_Text)
    );

    always #10 
        clk =~clk;

    initial begin
  
        clk = 0;
        #20
        r_Key = 128'h 000102030405060708090a0b0c0d0e0f;
        r_Plain_Text = 128'h 00112233445566778899aabbccddeeff;
        
    end
           
endmodule