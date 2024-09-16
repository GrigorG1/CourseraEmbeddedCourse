/******************************************************************************
 * Copyright (C) 2024 by Grigor Georgiev
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Grigor Georgiev is not liable for any misuse of this material.
 *
 *****************************************************************************/
/**
 * @file data.c
 * @brief Memory conversion functions
 *
 * This implementation file provides a few functions for simple data conversion.
 *
 * @author Grigor Georgiev
 * @date 13 September 2024
 *
 */

#include "data.h"

uint8_t no_of_digits( int32_t num, uint32_t radix )
{
  uint8_t digit_count = 0;

  if( num < 0 )
    digit_count++;

  while( num != 0 )
  {
    digit_count++;
    num /= radix;
  }
  return digit_count;
}

uint8_t my_itoa( int32_t data, uint8_t *ptr, uint32_t base )
{
	uint8_t digit_count = no_of_digits( data, base );

  if( data == 0 )
  {
    *ptr = '0';
    return digit_count;
  }

	if( sizeof( ptr ) < digit_count + 2 )
	{
//		printf( "Ptr size (%hu bytes) is less than the required (%hu bytes), nothing done and returning 0.\n", sizeof( ptr ), digit_count );
		return 0;
	}
  unsigned int udata = data;
  if( data < 0 )
    udata = -1 * data;

  *( ptr + digit_count ) = '\0';
  while( udata > 0 )
  {
    *( ptr + digit_count - 1 ) = udata % base + '0';
    udata /= base;
    digit_count--;
  }

  if( digit_count == 1 )
    *ptr = '-';

  return digit_count;
}
