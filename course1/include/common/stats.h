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
 * @file stats.h
 * @brief Header file for stats.c
 *
 * Defines several functions for finding statistics for a few common
 * areas
 *
 * @author Grigor Georgiev
 * @date 2024.09.25
 *
 */
#ifndef __STATS_H__
#define __STATS_H__
#include <stdint.h>
/**
 * @brief A function that prints statistics
 *
 * A function that prints the statistics of an array including minimum, maximum, mean, and median.
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return
 */
void print_statistics( unsigned int size, unsigned char *array );

/**
 * @brief Print array to the screen
 *
 * Given an array of data and a length, prints the array to the screen
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return
 */
//void print_array( unsigned int size, unsigned char *array );

void print_array( uint8_t size, uint8_t *array );

/**
 * @brief Finds the median value
 *
 * Given an array of data and a length, returns the median value
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return The median value in the array
 */
unsigned int find_median( unsigned int size, unsigned char *array );

/**
 * @brief Finds mean value
 *
 * Given an array of data and a length, returns the mean
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return The mean value in the array
 */
unsigned int find_mean( unsigned int size, unsigned char *array );

/**
 * @brief Finds the max value
 *
 * Given an array of data and a length, returns the maximum
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return The maximum value in the array
 */
unsigned int find_maximum( unsigned int size, unsigned char *array );

/**
 * @brief Finds the minimum value
 *
 * Given an array of data and a length, returns the minimum
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return The minimum value in the array
 */
unsigned int find_minimum( unsigned int size, unsigned char *array );

/**
 * @brief Sorts the array in descending order
 *
 * Given an array of data and a length, sorts the array from largest to smallest.  (The zeroth Element should be the largest value, and the last element (n-1) should be the smallest value. )
 *
 * @param size Array size
 * @param array Pointer to the array
 *
 * @return -
 */
void sort_array( unsigned int size, unsigned char *array );

/**
 * @brief Compare 2 elements in ascending order
 *
 * Subtracts 2 pointers and return the difference between them for use in quicksort 
 *
 * @param a first element to compare
 * @param b second element to compare
 *
 * @return returns the integer difference between them
 */
int compare( const void *a, const void *b );

/**
 * @brief Compare 2 elements in descending order
 *
 * Subtracts 2 pointers and return the difference between them for use in quicksort in reverse order 
 *
 * @param a first element to compare
 * @param b second element to compare
 *
 * @return returns the integer difference between them
 */
int compare_rev( const void *a, const void *b );

#endif /* __STATS_H__ */
