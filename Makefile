OBJS=main.o

LIBS=
FLAGS=-Wall -I.
DEPS=gitdex-util.h
TARGET=gitdex

all: $(TARGET)
.PHONY: all

run: $(TARGET)
	./$(TARGET)
.PHONY: run

clean:
	rm *.o
	rm $(TARGET)
.PHONY: clean

$(TARGET): $(OBJS) $(DEPS)
	gcc $(FLAGS) -o $@ $< $(LIBS)

%.o: %.c
	gcc $(FLAGS) -c -o $@ $^