/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c
 * @brief A simple application that performs statistical analytics on a dataset.
 *
 * Functions that analyze an array of unsigned char data items and report 
 * analytics on the maximum, minimum, mean, and median of the data set. In 
 * addition, reorders this data set from large to small. All statistics should 
 * are rounded down to the nearest integer. After analysis and sorting is done, 
 * it prints that data to the screen in nicely formatted presentation.
 *
 * @author Grigor Georgiev
 * @date 2024-09-04
 *
 */

#include <stdlib.h>
#include <platform.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

/*int main()
{
	#ifdef VERBOSE
		unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
	                              114, 88,   45,  76, 123,  87,  25,  23,
	                              200, 122, 150, 90,   92,  87, 177, 244,
	                              201,   6,  12,  60,   8,   2,   5,  67,
	                                7,  87, 250, 230,  99,   3, 100,  90};

		PRINTF( "Array at the beginning:\n"
	 					"-----------------------\n" );
		print_array( SIZE, test );
		PRINTF( "\n" );
		print_statistics( SIZE, test );
		PRINTF( "\n\nReordering the array from large to small..." );
		sort_array( SIZE, test );
		PRINTF( "Done!\n\nCurrent array:\n"
		        "--------------\n" );
		print_array( SIZE, test );
	#endif
	return 0;
}
*/

/* Add other Implementation File Code Here */
int compare( const void *a, const void *b )
{
    return *( const unsigned char *)a - *( const unsigned char * )b;
}

int compare_rev( const void *a, const void *b )
{
    return *( const unsigned char *)b - *( const unsigned char * )a;
}

void print_statistics( unsigned int size, unsigned char *array )
{
	unsigned int array_min = find_minimum( size, array ),
				 array_max = find_maximum( size, array ),
				 array_mean = find_mean( size, array ),
				 array_median = find_median( size, array );

	PRINTF( "Array statistics:\n"
					"-----------------\n"
					"The minimum value is: %u\nThe maximum value is: %u\nThe mean value is: %u\nThe median value is: %u\n", array_min, array_max, array_mean, array_median );
}

/*void print_array( unsigned int size, unsigned char *array )
{
	for ( size_t i = 0; i < size; ++i )
	{
		PRINTF( "%4d", array[i] );
		if( ( i + 1 ) % 8 == 0 )
			PRINTF( "\n" );
	}
}
*/

void print_array( uint8_t size, uint8_t *array )
{
	#ifdef VERBOSE
	for ( size_t i = 0; i < size; ++i )
	{
		PRINTF( "%4d", array[i] );
		if( ( i + 1 ) % 8 == 0 )
			PRINTF( "\n" );
	}
	#endif
}

unsigned int find_median( unsigned int size, unsigned char *array )
{
	qsort( array, size, sizeof( unsigned char ), compare );
	unsigned int middle = size / 2;
	if( size % 2 == 0 )
	{
		return ( ( array[middle - 1] + array[middle] ) / 2 );
	}
	return array[middle + 1];
}

unsigned int find_minimum( unsigned int size, unsigned char *array )
{
	unsigned char min_v = array[0];
	for( size_t i = 1; i < size; ++i )
	{
		if( min_v > array[i] )
			min_v = array[i];
	}
	return min_v;
}

unsigned int find_maximum( unsigned int size, unsigned char *array )
{
	unsigned char max_v = array[0];
	for( size_t i = 1; i < size; ++i )
	{
		if( max_v < array[i] )
			max_v = array[i];
	}
	return max_v;
}

unsigned int find_mean( unsigned int size, unsigned char *array )
{
	unsigned int sum = array[0];
	for( size_t i = 1; i < size; ++i )
		sum += array[i];
	return sum / size;
}

void sort_array( unsigned int size, unsigned char *array )
{
	qsort( array, size, sizeof( unsigned char ), compare_rev );
}
