CXXFLAGS      = -g -std=c++11

SOURCES       = testVaart.cpp \
		Vaart.cpp

OBJECTS       = Punt.o \
		testVaart.o \
		Meting.o \
		Insprong.o \
		Vaart.o

TARGET        = testVaart

####### Implicit rules

.SUFFIXES: .o .cpp 

.cpp.o:
	g++ -c $(CXXFLAGS) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	g++ $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

####### Compile


testVaart.o: Vaart.cpp Vaart.h
Punt.o: Punt.cpp Punt.h
Insprong.o: Insprong.cpp Insprong.h
Meting.o: Meting.cpp Meting.h
Vaart.o: Vaart.cpp Vaart.h


clean:
	rm -vf *.o testVaart