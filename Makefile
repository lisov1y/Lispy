NAME = lispy

SRC = lispy.c mpc.c

LIBS = -ledit -lm

all:
	gcc -Wall $(SRC) $(LIBS) -o $(NAME)

clean:
	rm $(NAME)
