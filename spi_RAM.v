module spi_RAM (clk, rst_n, din, rx_valid, dout, tx_valid);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
input clk, rst_n, rx_valid;
input [9:0] din;
output reg tx_valid;
output reg [7:0] dout;
reg [7:0] mem [MEM_DEPTH-1:0];
reg [ADDR_SIZE-1:0] add_write, add_read;

always @(posedge clk or negedge rst_n) begin
	if (rst_n==0) begin
		dout<='b0;
		tx_valid<='b0;
	end
	else begin
	  case (din[9:8])
	    2'b00: begin
	    	if (rx_valid) begin
	    		add_write<=din[7:0];
	    		tx_valid<=0;
	    	end
	    end
	    2'b01: begin
	    	if (rx_valid) begin
	    		tx_valid<=0;
	    	end
	    end
	    2'b10: begin
	    	if (rx_valid) begin
	    		add_read<=din[7:0];
	    		tx_valid<=0;
	    	end
	    end
	    2'b11: begin
	    	dout<=mem[add_read];
	    	tx_valid<=1'b1;
	    end
	  endcase
	end
end
always @(posedge clk) begin
	if (din[9:8]==2'b01) begin
	    if (rx_valid) begin
	    	mem[add_write]<=din[7:0];
	    end
	end
end
endmodule