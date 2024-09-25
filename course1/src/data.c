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

  if( data == -2147483648 )
  {
		*ptr = '-';
		*( ptr + 1 ) = '1';
		for( uint8_t i = 2; i < digit_count; ++i )
			*( ptr + i ) = '0';
		return digit_count;
  }

	if( sizeof( ptr ) < digit_count + 2 )
	{
//		printf( "Ptr size (%hu bytes) is less than the required (%hu bytes), nothing done and returning 0.\n", sizeof( ptr ), digit_count );
		return 0;
	}

  if( data < 0 )
	{
		data = -1 * data;
		*ptr = '-';
	}

  *( ptr + digit_count ) = '\0';
  while( data > 0 )
  {
    *( ptr + digit_count - 1 ) = data % base + '0';
    data /= base;
    digit_count--;
  }

  return digit_count;
}


int32_t my_atoi( uint8_t *ptr, uint8_t digits, uint32_t base )
{
  if( *ptr == 0
      || digits < 2 // null terminator (and sign potentially) is included in the digits
      || ( ( *ptr == '-' ) && ( digits < 3 ) )
      || ( ( *ptr == '-' ) && ( digits > 34 ) )
      || ( ( *ptr != '-' ) && ( digits > 32 ) ) )
  {
    //handle error of null input/too few digits/overflow
    return 0;
  }

  int64_t num_64 = *( ptr + digits - 2 ) - '0', pow = base;
  int32_t num = 0;

  if( digits > 2 )
  {
    for( uint8_t i = digits - 3; i > 0; --i )
    {
      num_64 += ( *( ptr + i ) - '0' ) * pow;
      pow *= base;
    }
  }

  if( *ptr == '-' )
  {
    num_64 *= -1;
  }
  else if( digits > 2 )
  {
    num_64 += ( *ptr - '0' ) * pow;
  }

	// edge case INT_MIN
  if( num_64 >= -2147483648 && num_64 <= 2147483647 )
  {
    num = num_64;
  }
  else
  {
		// handle overflow... printf( "Overflow, num_64=%ld which cannot be represented in int32_t.\n", num_64 );
  }

  return num;
}
