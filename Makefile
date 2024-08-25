rcfour: rcfour.o
	gcc rcfour.o -o rcfour.so -02 -Wall -fPIC -shared -ldl -D_GNU_SOFTWARE

rcfour.o: rcfour.c
	gcc -c -O2 -Wall rcfour.c
