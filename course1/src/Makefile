#******************************************************************************
# Copyright (C) 2024 by Grigor Georgiev
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are
# permitted to modify this and use it to learn about the field of embedded
# software. Grigor Georgiev is not liable for any misuse of this material.
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Makefile using the GNU tools, GCC and GNU Make. It compiles multiple files,
# links them together and creates a final output executable. It supports two
# platforms; the host environment and the target embedded system MSP432. The
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
# 		<FILE>.i - 		Generates the preprocessed output of all c-program
#						implementation files
#		<FILE>.asm - 	Generates assembly output of c-program implementation
# 						files and the final output executable
#		<FILE>.o - 		Generates the object file for all c-source files (but
#						does not link) by specifying the object file you want
#						to compile.
#		compile-all - 	Compiles all object files, but DOES NOT link
#		build - 		Compiles all object files and links into a final
#						executable
#		clean - 		Removes all compiled objects, preprocessed outputs,
#						assembly outputs, executable files and build output
#						files.
#
# Platform Overrides:
#		PLATFORM - 		Supports two platforms; the host environment and the
#						target embedded system MSP432 (HOST, MSP432)
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST

# Flags for all platforms/defaults
TARGET = c1m2
CC = gcc
CPPFLAGS = -DHOST $(INCLUDES) -MD -MP
CFLAGS = -Wall \
			-Werror \
			-g \
			-O0 \
			-std=c99 \
			-save-temps
LDFLAGS = -Wl,-Map=$(TARGET).map
SIZE = size

# Platform Specific Flags
ifeq ($(PLATFORM),MSP432) # MSP432 specific options
	CC = arm-none-eabi-gcc
	CPU = cortex-m4
	ARCH = armv7e-m
	SOURCES += ./interrupts_msp432p401r_gcc.c \
				./startup_msp432p401r_gcc.c \
				./system_msp432p401r.c
	INCLUDES += -I../include/CMSIS \
					-I../include/msp432
	CPPFLAGS = -DMSP432 $(INCLUDES) -MD -MP
	CFLAGS += -mcpu=$(CPU) \
				-mthumb \
				-march=$(ARCH) \
				-mfloat-abi=hard \
				-mfpu=fpv4-sp-d16 \
				--specs=nosys.specs
	LD = arm-none-eabi-ld
	LINKER_FILE = ../msp432p401r.lds
	LDFLAGS += -T $(LINKER_FILE)
	SIZE = arm-none-eabi-size
else
	# Defaults are already set for HOST platform, but in the future improve this
	# to be more user friendly e.g. if no matching platoform write a message
	# that HOST is used or something better
endif

OBJS = $(SOURCES:.c=.o)

.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@
	rm -f *.i

%.i: %.c
	$(CC) -E $< $(CPPFLAGS) $(CFLAGS) -o $@

%.asm: %.c
	$(CC) -S $< $(CPPFLAGS) $(CFLAGS) -o $@

%.o: %.c
	$(CC) -c $< $(CPPFLAGS) $(CFLAGS) -o $@
	../include/exec

.PHONY: compile-all
compile-all: $(OBJS)

.PHONY: clean
clean:
	rm -f *.out *.i *.asm *.s *.o *.d *.map
