CXX ?= g++
CPPFLAGS := -Iinclude
CXXFLAGS ?= -std=c++17 -O2 -Wall
LDLIBS := -lglut -lGLU -lGL -lX11 -lfreeimage

SOURCES := src/main.cpp src/util.cpp
OBJECTS := $(patsubst src/%.cpp,build/%.o,$(SOURCES))
TARGET := build/snake-game

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ $(LDLIBS)

build/%.o: src/%.cpp | build
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

build:
	mkdir -p build

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf build
