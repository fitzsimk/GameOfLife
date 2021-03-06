# made by Kayla Fitzsimmons followed these instructions
# http://www.puxan.com/web/blog/HowTo-Write-Generic-Makefiles

# Declaration of variables
CC = g++
CC_FLAGS = -w

# File names
EXEC = run
SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXEC)

# To obtain object files
%.o: %.cpp
	$(CC) -c $(CC_FLAGS) $< -o $@

# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)