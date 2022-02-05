CC=gcc
CCFLAGS=-Wall -Wextra -fPIC -O3
BIN=bin/
LIB=lib/
SRC=src/
TESTSRC=src/test/
INC=src/include/
OBJ=obj/
OBJS=$(OBJ)lib.o
LIBFLAGS=-shared

all: mkdirs library
test-all: mkdirs library test
rebuild: clean all
test-rebuild: clean test-all
library: $(OBJS)
	$(CC) $(CCFLAGS) $^ -o $(LIB)libtally.so $(LIBFLAGS)
test: $(TESTSRC)main.c
	$(CC) $(CCFLAGS) $^ -o $(BIN)$@ -L$(LIB) -ltally -I$(INC)
	chmod +x $(BIN)$@
$(OBJ)lib.o: $(SRC)lib.c $(INC)lib.h
	$(CC) $(CCFLAGS) -c $(SRC)lib.c -o $@ -I$(INC)
mkdirs:
	mkdir -p $(LIB)
	mkdir -p $(OBJ)
	mkdir -p $(BIN)
clean:
	rm -rf $(LIB) $(OBJ) $(BIN)
