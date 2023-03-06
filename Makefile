brainapi-0.13.dll: brainapi.cpp brainapi.hpp
	arm-mingw32ce-g++ -s -O3 -march=armv5tej -mcpu=arm926ej-s -shared -o $@ brainapi.cpp