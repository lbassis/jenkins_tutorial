all: comp

comp:
	gcc test.c -o test.bin

clean:
	rm -f test.bin
