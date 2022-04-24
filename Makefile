CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -MMD
FILEFLAG = -I src

MAIN = src/geometry/main.cpp
GEOMETRY = src/lib/geometry.cpp

COMPILE = obj/geometry/main.o obj/lib/lib.o 

all: geometry
	./geometry

geometry: $(COMPILE)
	g++ $(COMPILE) -o $@

obj/geometry/main.o: $(MAIN)
	g++ -c $(FILEFLAG) $(CFLAGS) $(CPPFLAGS) -o $@ $(MAIN) 

obj/lib/lib.o: $(GEOMETRY)
	g++ -c $(FILEFLAG) $(CFLAGS) $(CPPFLAGS) -o $@ $(GEOMETRY) 

-include geometry.d hello.d
