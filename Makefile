CC=g++ -std=c++11

BIN=temps 

CFLAGS= -pthread -lrt 
FLAGS=-I ./include -g -Wall -Wextra \
			-std=c++11 -Wno-unused-parameter 

INC= ./include
SRC= ./src
OBJ= ./src/obj

SRCS=	$(SRC)/main.cpp \
			$(SRC)/grid.cpp 

INCS= $(INC)/grid.h 

OBJS = $(SRCS:.cpp=.o)

default: $(BIN) 
	@echo build successful!
 
$(BIN): $(OBJS) $(INCS) $(SRCS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)
	@echo $(BIN) compiled!

.cpp.o: 
	$(CC) $(FLAGS) -c $^ -o $@

run: run_test
	./$()

clean: 
	rm -f $(SRC)/*.o \
		*.o \
		$(BIN) 

valgrind: $(BIN)
	valgrind --leak-check=full \
		./$(BIN)
