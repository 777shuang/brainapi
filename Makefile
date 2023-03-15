ifeq ($(OUTPUT),)
	OUTPUT=brainapi
endif

$(OUTPUT).dll: brainapi.o
	arm-mingw32ce-g++ -s -O3 -march=armv5tej -mcpu=arm926ej-s -shared -o $@ $^

brainapi.o: brainapi.cpp brainapi.hpp
	arm-mingw32ce-g++ -s -O3 -march=armv5tej -mcpu=arm926ej-s -c -o $@ $<