CC=g++
all:
	$(CC) -Wall *.cpp

.PHONY: clean

clean:
	rm -f *.o*