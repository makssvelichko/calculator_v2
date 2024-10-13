CXX = g++
CXXFLAGS = -std=c++11 -Wall

# Output binary and library names
TARGET = calculator
LIBRARY = libcalculator.a  # Статична бібліотека

# Source files
SRCS = main.cpp
LIB_SRCS = calculator.cpp

# Object files (replace .cpp with .o)
OBJS = $(SRCS:.cpp=.o)
LIB_OBJS = $(LIB_SRCS:.cpp=.o)

# Target for the executable and the library
all: $(TARGET)

$(TARGET): $(OBJS) $(LIBRARY)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS) -L. -lcalculator

$(LIBRARY): $(LIB_OBJS)
	ar rcs $@ $(LIB_OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f $(OBJS) $(LIB_OBJS) $(TARGET) $(LIBRARY)

.PHONY: clean
