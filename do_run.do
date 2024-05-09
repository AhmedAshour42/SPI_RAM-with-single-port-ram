vlib work
vlog spi_RAM.v spi_SLAVE_INTERFACE.v SPI_WRAPPER.v SPI_WRAPPER_TB.v
vsim -voptargs=+acc work.SPI_WRAPPER_TB
add wave *
run -all