CC=clang
FLAGS=-Wall -pedantic -Wpedantic -Werror -O2
STD=c11

compile:
	$(CC) $(FLAGS) -std=$(STD) src/*.c -o build/a.out
