module spi_SLAVE_INTERFACE (clk, rst_n, MOSI, MISO, SS_n, rx_data, rx_valid, tx_data, tx_valid);
parameter IDLE = 3'b000;
parameter CHK_CMD = 3'b001;
parameter WRITE = 3'b010;
parameter READ_ADD = 3'b011;
parameter READ_DATA = 3'b100;
input clk, rst_n, MOSI, SS_n, tx_valid;
input [7:0] tx_data;
output reg MISO, rx_valid;
output reg [9:0] rx_data;
(* fsm_encoding = "sequential" *)
reg [2:0] cs, ns;
reg [4:0] counter;
reg recieved_add;

always @(posedge clk or negedge rst_n) begin
	if (rst_n==0) begin
		cs<= IDLE;
	end
	else begin
		cs<= ns;
	end
end

always @(*) begin
		case (cs)
	    IDLE:begin
	    	if (SS_n==0) begin
	    		ns=CHK_CMD;
	    	end
	    	else begin
	    		ns=IDLE;
	    	end
	    end
	    CHK_CMD:begin
	    	if (SS_n==1) begin
	    		ns=IDLE;
	    	end
	    	else begin
	    		if (MOSI==1) begin
	    			if (recieved_add==1) begin
	    			    ns=READ_DATA;
	    		    end
	    		    else begin
	    			    ns=READ_ADD;
	    		    end
	    		end
	    		else begin
	    			ns=WRITE;
	    		end
	    	end
	    end
	    WRITE:begin
	    	if (SS_n==1) begin
	    		ns=IDLE;
	    	end
	    	else begin
	    		ns=WRITE;
	    	end
	    end
	    READ_ADD:begin
	    	if (SS_n==1) begin
	    		ns=IDLE;
	    	end
	    	else begin
	    		ns=READ_ADD;
	    	end
	    end
	    READ_DATA:begin
	    	if (SS_n==1) begin
	    		ns=IDLE;
	    	end
	    	else begin
	    		ns=READ_DATA;
	    	end
	    end
	    default ns=IDLE;
	endcase    
end

always @(posedge clk) begin
	case (cs)
	    IDLE:begin
	    	counter=0;
	    	MISO=0;
	    	rx_valid=0;
	    	rx_data=0;
	    end
	    CHK_CMD:begin
	        counter=0;
	    	MISO=0;
	    	rx_valid=0;
	    	rx_data=0;
	    end
	    WRITE:begin
	    	if (counter<10) begin
	    		rx_data[9-counter]=MOSI;
	    		counter=counter+1;
	    		if (counter==10) begin
	    			rx_valid=1;
	    		end
	    	end
	    end
	    READ_ADD:begin
	    	if (counter<10) begin
	    		rx_data[9-counter]=MOSI;
	    		counter=counter+1;
	    		if (counter==10) begin
	    			rx_valid=1;
	    			recieved_add=1;
	    		end
	    	end
	    end
	    READ_DATA:begin
	    	recieved_add=0;
	    	if (counter<2) begin
	    		rx_data[9-counter]=MOSI;
	    		counter=counter+1;
	    	end
	    	else if (counter<10) begin
	    		if (tx_valid) begin
	    			MISO=tx_data[9-counter];
	    			counter=counter+1;
	    		end
	    	end
	    end
	endcase
end
endmodule