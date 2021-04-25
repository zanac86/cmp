HEADERS = bitmap.h common.h config.h file_api.h file_api_win.h file_win.h help.h hexdump.h palette.h rdtsc.h resource.h setfont.h textblock.h textprint.h thread.h window.h
OBJS =	cmp.o resource.o
CC = g++
RC = windres
LDFLAGS = -s -mwindows -fexceptions -lgdi32 -lpdh -static -lstdc++
CFLAGS= -O3

all: cmp.exe

cmp.exe: ${OBJS}
	${CC} -o "$@" ${OBJS} ${LDFLAGS}
	
%.o: %.cpp ${HEADERS}
	${CC} ${CFLAGS} -c $< -o $@

resource.o: cmp.rc 1.ico resource.h
	${RC} -i $< -o $@
