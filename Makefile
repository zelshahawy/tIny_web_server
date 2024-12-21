CC = gcc
CFLAGS = -Wall -g
SRCS = driver.c router.c
OBJS = $(SRCS:.c=.o)
TARGET = server

all: $(TARGET)

# Rule to create the executable by linking object files
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

# Rule to create object files from source files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
	rm -f $(OBJS) $(TARGET)


