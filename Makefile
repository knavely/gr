CFILES = main.cpp
CFLAGS = -O3 -Wall `pkg-config --cflags glfw3`
CC = g++

all: main
main:	$(CFILES)
	$(CC) $(CFLAGS) -o main $(CFILES)  -lfreeimage -lboost_system -lcppnetlib-client-connections -lcppnetlib-uri -I/home/matthew/Downloads/cpp-netlib-0.11.2-final -L/home/matthew/Downloads/cpp-netlib-0.11.2-final/libs/network/src -lm `pkg-config --static --libs glfw3`

clean:
	rm -f *~ *.o *.obj main
