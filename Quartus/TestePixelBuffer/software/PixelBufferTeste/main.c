/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#define PX_BFFR (char *) 0x221050

#include <stdio.h>
#include "altera_up_avalon_video_pixel_buffer_dma.h"


int main()
{
	//alt_up_pixel_buffer_dma_dev *pixel_buffer = alt_up_pixel_buffer_dma_open_dev("pixel_buffer");
	//alt_up_pixel_buffer_dma_draw_rectangle(pixel_buffer, 0, 0, 30, 30, 0xFFFF, 0);

  return 0;
}
