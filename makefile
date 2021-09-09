CFLAGS = -Wall
#target exe
all: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
	
#rebuild if either file below changes
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp
	
#rebuild if either file below changes
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp
	
#clean repository of .o and myexe (type 'make clean')
clean:
	rm -f *.o myexe