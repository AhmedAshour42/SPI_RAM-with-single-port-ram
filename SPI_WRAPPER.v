module SPI_WRAPPER (clk, rst_n, MOSI, MISO, SS_n);
input clk, rst_n, MOSI, SS_n;
output MISO;
wire [9:0] rx_data;
reg [9:0] din;
wire [7:0] dout;
reg [7:0] tx_data;
wire rx_valid_spi, tx_valid_ram;
reg rx_valid_ram, tx_valid_spi;
spi_SLAVE_INTERFACE SPI_SLAVE (clk, rst_n, MOSI, MISO, SS_n, rx_data, rx_valid_spi, tx_data, tx_valid_spi);
spi_RAM RAM (clk, rst_n, din, rx_valid_ram, dout, tx_valid_ram);

always @(negedge clk) begin
	if (!rst_n) begin
		din<='b0;
		tx_data<='b0;
		rx_valid_ram<='b0;
		tx_valid_spi<='b0;
	end
	else begin
		din<=rx_data;
		tx_data<=dout;
		rx_valid_ram<=rx_valid_spi;
		tx_valid_spi<=tx_valid_ram;
	end
end
endmodule