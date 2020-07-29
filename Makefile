
CFLAGS=-std=gnu99 -Wall -Werror


all: d8sh

d8sh: lexer.o parser.tab.o executor.o d8sh.o
	gcc lexer.o parser.tab.o executor.o d8sh.o $(CFLAGS)  -lreadline  -o d8sh 

lexer.o: lexer.c
	gcc $(CFLAGS) -c lexer.c
parser.tab.o: parser.tab.c
	gcc $(CFLAGS) -c parser.tab.c
executor.o: executor.c
	gcc $(CFLAGS) -c executor.c


d8sh.o: d8sh.c
	gcc $(CFLAGS) -c d8sh.c

clean: 
	rm -rf *.o  d8sh