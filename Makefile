CXX = g++
CXXFLAGS = -Wall -O2
LDFLAGS = -lglut -lGL -lGLU -lm

TARGET = Far_Way
DEBUG_TARGET = bin/Debug/Far_Way
SRC = main.cpp

all: $(TARGET) $(DEBUG_TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

$(DEBUG_TARGET): $(SRC)
	@mkdir -p bin/Debug
	$(CXX) -Wall -g $(SRC) -o $(DEBUG_TARGET) $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) obj/Debug/*.o bin/Debug/$(TARGET) bin/Release/$(TARGET)

.PHONY: all run clean
