all: asmtut

asmtut: asmtut.o
	ld -o $@ $<

%.o: %.s
	as -o $@ $<

clean:
	rm asmtut *.o


