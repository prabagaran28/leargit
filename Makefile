# Directories
INC = ./inc
SRC = ./src

# Compiler
CC = gcc

# Object files
OBJ = a.o b.o c.o d.o main.o

# Compiler flags
CFLAGS = -Wall -std=c11 -c

# Target executable
target = final.exe

# Default target
all: $(target)

# Link the object files to create the final executable
$(target): $(OBJ)
	$(CC) $^ -o $@

# Compile source files into object files
%.o: $(SRC)/%.c
	$(CC) -I$(INC) $(CFLAGS) $< -o $@

# Clean up build artifacts
clean:
	rm -rf *.o $(target)