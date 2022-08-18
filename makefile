all: build/cli.o cxxopts.hpp
	g++ -o bin/cli build/cli.o
	chmod +x bin/cli

build/cli.o: cli.cpp
	g++ -c cli.cpp -o build/cli.o

clean: 
	rm -rf *.o
	rm -rf build/*
	rm -rf bin/*