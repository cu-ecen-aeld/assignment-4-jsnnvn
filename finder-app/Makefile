CC = gcc


CFLAGS = -Wall -Werror


ifeq ($(CROSS_COMPILE),)#argument for CROSS_COMPILE CASE
TARGET = writer
else
TARGET = writer-arm
endif

.PHONY: all clean

all: $(TARGET)
#make specifictions for each case
writer: writer.o
	$(CC) $(CFLAGS) -o $@ $<

writer-arm: writer.o
	$(CC) $(CFLAGS)  -o $@ $< -static

writer.o: writer.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(TARGET) writer.o writer-arm
