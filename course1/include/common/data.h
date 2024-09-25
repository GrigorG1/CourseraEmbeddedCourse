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
 * @file data.h
 * @brief Memory conversion functions
 *
 * This implementation file provides a few functions for simple data conversion.
 *
 * @author Grigor Georgiev
 * @date 16 September 2024
 *
 */
#include <stdint.h>
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief A function that converts an integer to an ASCII string
 *
 * A function that converts an integer to an ASCII string. It supports bases 2
 * to 16 by specifying the integer value of the base you wish to convert to
 * (base).
 *
 * @param data - Integer data to convert
 * @param ptr - String containing the result
 * @param base - Radix of the converted number
 *
 * @return The length of the converted data including a negative sign and null
 * terminator
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief A function that converts an ASCII string to an integer
 *
 * A function that converts data back from an ASCII represented string into an
 * integer type. It supports bases 2 to 16 by specifying the integer value of
 * the base you wish to convert to (base).
 *
 * @param ptr - String containing the ASCII input
 * @param digits - Number of digits in the input
 * @param base - Radix of the converted number
 *
 * @return The converted 32-bit signed interger
 */
int32_t my_atoi( uint8_t *ptr, uint8_t digits, uint32_t base );

#endif /* __STATS_H__ */
