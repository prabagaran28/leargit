INC = ./inc 

SRC = src 

CC = gcc 

CFLAGS = -Wall -std=c11 -I$(INC) -c 
OBJ = debug/a.o\
    debug/b.o\
	debug/c.o\
	debug/d.o\
	debug/main.o

RM =rm -rf 

TARGET = final.exe 

BUILD = debug

all: $(BUILD) $(TARGET) 

$(TARGET):$(OBJ) 
	$(CC) $^ -o $@ 
	size $@ 


debug/a.o: src/a.c 
	$(CC) $(CFLAGS) $< -o $@  
	 
debug/b.o: src/b.c 
	$(CC) $(CFLAGS) $< -o $@  

debug/c.o:src/c.c 
	$(CC) $(CFLAGS) $< -o $@

debug/d.o:src/d.c 
	$(CC) $(CFLAGS) $< -o $@ 

debug/main.o:src/main.c 
	$(CC) $(CFLAGS) $< -o $@




$(BUILD):
	mkdir -p $@ 

clean:
	$(RM) $(BUILD) 
	$(RM) $(TARGET)