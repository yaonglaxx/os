#
# Makefile
#
CC = gcc
CFLAGS =
LIBS = -lm

calcul: calculate.o main.o calculate.c
$(CC) -o calcul calculate.o main.o  $(LIBS)

calculate.o: calculate.c calculate.h
$(CC) $(CFLAGS) -c calculate.c

main.o: main.c calculate.h
$(CC) $(CFLAGS) -c main.c

clean:
-rm calcul *.o*~
# End Makefile
#Check changes
