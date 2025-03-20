# Directories
INC = ./inc
SRC = ./src
BULID_DIR = debug

# Compiler and flags
CC = gcc
CFLAGS = -Wall -std=c11 -I$(INC) -c

# Object files (with paths relative to BULID_DIR)
OBJ = $(addprefix $(BULID_DIR)/, a.o b.o c.o d.o main.o)

# Remove command
RM = rm -rf

# Target executable
TARGET = final.exe

# Default target
all: $(BULID_DIR) $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJ)
	$(CC) $^ -o $@

# Pattern rule for compiling .c files to .o files in BULID_DIR
$(BULID_DIR)/%.o: $(SRC)/%.c
	  
	$(CC) $(CFLAGS) $< -o $@

# Create the BULID_DIR if it doesn't exist
$(BULID_DIR):
	mkdir -p $@

# Clean up build artifacts
clean:
	$(RM) $(BULID_DIR)
	$(RM) $(TARGET)

# Phony targets
.PHONY: all clean