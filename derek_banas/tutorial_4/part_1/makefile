all: asmtut

asmtut: asmtut.o
	ld -o $@ $<

%.o: %.s
	as -g -o $@ $<

clean:
	rm asmtut *.o

debug: asmtut
	gdb $<

gcc: asmtut.s
	gcc -o asmtut $<

