INC = ./inc 
SRC = ./src 
CC=gcc
OBJ= a.o b.o c.o d.o main.o
CFLAGS = -Wall -std=c11 -c 

#all : $(target)

target= final.exe 

$(target):$(OBJ) 
	$(CC) $^ -o $@

%.o: %.c
	$(CC) -I$(INC) $(CFLAGS) $< -o $@ 



clean:
	rm -rf *.o 
	rm $(target)
