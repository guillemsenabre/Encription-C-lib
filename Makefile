# Arguments #
# -02 -> Speed optimizations lvl 2
# -Wall -> Activates All Warnings (a wide set of) during compilatin
# -fPIC -> flag to instruct gcc that the binary should be loadable at any address without modification. PIC stands for
#Position-Independent Code This is crucial for shared libraries because they can be loaded at different memory addresses 
#in different processes.
# -shared -> Instructs gcc to build a shared library rather than an executable. Shared library can be linked to other
#programs at runtime allowing multiple programs to use it without duplicating it.
# - ldl -> links our library to the "ld" library. This means that our library needs this one to work.

rcfour: rcfour.o
	gcc rcfour.o -o rcfour.so -02 -Wall -fPIC -shared -ldl -D_GNU_SOFTWARE

rcfour.o: rcfour.c
	gcc -c -O2 -Wall rcfour.c
