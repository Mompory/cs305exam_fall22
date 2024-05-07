CC = cc

CFLAGS = -c -Wall

LDFLAGS =

OBJECTS = main.o get_student_id.o

EXECUTABLE = main

all: main.out

main.out: $(EXECUTABLE)
    ./$(EXECUTABLE) | tee main.out

$(EXECUTABLE): $(OBJECTS)
    $(CC) $(LDFLAGS) -o $@ $(OBJECTS)

main.o: main.c get_student_id.h
    $(CC) $(CFLAGS) main.c

get_student_id.o: get_student_id.c get_student_id.h
    $(CC) $(CFLAGS) get_student_id.c

clean:
    rm -f *.o $(EXECUTABLE) main.out
