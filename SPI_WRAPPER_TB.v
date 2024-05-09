module SPI_WRAPPER_TB ();
reg clk, rst_n, MOSI, SS_n;
wire MISO;
integer i;
integer j;
SPI_WRAPPER DUT (clk, rst_n, MOSI, MISO, SS_n);

initial begin
	clk=0;
	forever begin
		#1 clk=~clk;
	end
end

initial begin
	rst_n=0; SS_n=1; MOSI=0;
	$readmemh ("mem.dat",DUT.RAM.mem);
	#10;
	rst_n=1;
	@(negedge clk);
	//Directed testing first (writing data at specific address then reading it)
	//Write Address 11111101
	SS_n=0; @(negedge clk); //Starting connection
	MOSI=0; @(negedge clk); //Write
	MOSI=0; @(negedge clk); MOSI=0; @(negedge clk); //write address
	MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); // 1 1 1
	MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); // 1 1 1
	MOSI=0; @(negedge clk); MOSI=1; @(negedge clk);                         // 0 1     ==>11111101
	SS_n=1; @(negedge clk); //ending connection after entering 11111101 write address
	//Write data 10110001
	SS_n=0; @(negedge clk); //Starting connection
	MOSI=0; @(negedge clk); //Write
	MOSI=0; @(negedge clk); MOSI=1; @(negedge clk); //write data
	MOSI=1; @(negedge clk); MOSI=0; @(negedge clk); MOSI=1; @(negedge clk); // 1 0 1
	MOSI=1; @(negedge clk); MOSI=0; @(negedge clk); MOSI=0; @(negedge clk); // 1 0 0
	MOSI=0; @(negedge clk); MOSI=1; @(negedge clk);                         // 0 1     ==>10110001
	SS_n=1; @(negedge clk); //ending connection after entering 10110001 write data
	//Read Address 11111101
	SS_n=0; @(negedge clk); //Starting connection
	MOSI=1; @(negedge clk); //Read
	MOSI=1; @(negedge clk); MOSI=0; @(negedge clk); //read address
	MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); // 1 1 1
	MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); // 1 1 1
	MOSI=0; @(negedge clk); MOSI=1; @(negedge clk);                         // 0 1     ==>11111101
	SS_n=1; @(negedge clk); //ending connection after entering 11111101 read address
	//reading the data entered before (expeting serial 1 0 1 1 0 0 0 1 output)
	SS_n=0; @(negedge clk); //Starting connection
	MOSI=1; @(negedge clk); //Read
	MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); //read data
	for (j=0; j<8; j=j+1) begin
		MOSI=$random; //random ignored inputs as i'm waiting for serial expected 1 0 1 1 0 0 0 1 output
		@(negedge clk);
	end
	SS_n=1; @(negedge clk); //ending connection expecting Miso out serial 1 0 1 1 0 0 0 1
	#50;

	//writing random data at random addresses to fill the RAM
	for (i=0; i<500; i=i+1) begin
		SS_n=0; @(negedge clk); //Starting connection
		MOSI=0; @(negedge clk); //Write
		MOSI=0; @(negedge clk); MOSI=0; @(negedge clk); //write address
		for (j=0; j<8; j=j+1) begin
			MOSI=$random; // random address
			@(negedge clk);
		end
		SS_n=1; @(negedge clk); //ending connection

		SS_n=0; @(negedge clk); //Starting new connection
		MOSI=0; @(negedge clk); //Write
		MOSI=0; @(negedge clk); MOSI=1; @(negedge clk); //write data
		for (j=0; j<8; j=j+1) begin
			MOSI=$random; // random data
			@(negedge clk);
		end
		SS_n=1; @(negedge clk); //ending connection
	end
	#20;
	//reading random data from random addresses
	for (i=0; i<15; i=i+1) begin
		SS_n=0; @(negedge clk); //Starting connection
		MOSI=1; @(negedge clk); //Read
		MOSI=1; @(negedge clk); MOSI=0; @(negedge clk); //Read address
		for (j=0; j<8; j=j+1) begin
		    MOSI=$random;
		    @(negedge clk);
	    end
	    SS_n=1; @(negedge clk); //ending connection
	    //reading data
	    SS_n=0; @(negedge clk); //Starting connection
	    MOSI=1; @(negedge clk); //Read
	    MOSI=1; @(negedge clk); MOSI=1; @(negedge clk); //Read Data
	    for (j=0; j<8; j=j+1) begin
		    MOSI=$random; //random ignored inputs (waiting for output data)
		    @(negedge clk);
	    end
	    SS_n=1; @(negedge clk); //ending connection
	    repeat (10) @(negedge clk);
	end
	#10;
	$stop;
end
endmodule