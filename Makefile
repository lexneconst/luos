

MAKE=make
CC=gcc
LD=ld
RM=rm
OBJCOPY=objcopy

export MAKE
export CC
export LD
export RM
export OBJCOPY

PREFIX=.a
TARGET=.bin

export PREFIX
export TARGET

all:	clean build run
	
build:
	$(MAKE) -C tools
	$(MAKE) -C boot
	

clean:
	$(RM) -f *.img *.bin *.o

run:
	qemu-system-i386 -m 256 -hda mineos.img -boot d
