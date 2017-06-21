CC=clang
FLAGS=-Wall -pedantic -Wpedantic -Werror -O2
STD=c11

compile:
	$(CC) $(FLAGS) -std=$(STD) src/*.c -lpthread -lm build/mnl.a -o build/a.out
