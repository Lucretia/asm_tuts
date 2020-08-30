all: asmtut asmtut4

asmtut: asmtut.o
	ld -o $@ $<

%.o: %.s
	as -o $@ $<

asmtut4: asmtut2.o asmtut3.o
	ld -o $@ $^

clean:
	rm asmtut asmtut4 *.o


