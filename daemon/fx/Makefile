LIBS = -lm
MAJOR_VERSION = 0
MINOR_VERSION = 1
CSTD = -std=c99
CFLAGS= -Wall -Wextra -W -w -Os $(CSTD) -DMAJOR_VERSION=$(MAJOR_VERSION) -DMINOR_VERSION=$(MINOR_VERSION) -fPIC -DPIC -DLINUX -D_XOPEN_SOURCE=700
DEBUG_CFLAGS = -Wall -Wextra -Wformat=0 -pedantic -fbounds-check -Wuninitialized -O0 -g3 $(CSTD) -DUSE_DEBUGGING -DMAJOR_VERSION=$(MAJOR_VERSION) -DMINOR_VERSION=$(MINOR_VERSION) -fPIC -DPIC -DLINUX -D_XOPEN_SOURCE=700
#-pedantic -fbounds-check -Wuninitialized -O0 -g3 -Wstrict-prototypes
LDFLAGS= $(LIBS)
DEBUG_LDFLAGS = $(LIBS)
CC=gcc

all: fx_debug fx

fx_debug: 
	@echo "::\033[32m COMPILING pez2001 fx collection [DEBUG]\033[0m"
	@echo "========================================================"
	$(CC) pez2001_collection.c $(DEBUG_CFLAGS) $(LIBS) ../../lib/librazer_chroma.da -c -o pez2001_collection.do $<
	$(CC) $(LDFLAGS) -rdynamic -nostdlib -DCREATELIB -shared pez2001_collection.do -o pez2001_collection_debug.so

fx: 
	@echo "::\033[32m COMPILING pez2001 fx collection\033[0m"
	@echo "====================================================="
	$(CC) pez2001_collection.c $(CFLAGS) $(LIBS) ../../lib/librazer_chroma.da -c -o pez2001_collection.o $<
	$(CC) $(LDFLAGS) -rdynamic -nostdlib -DCREATELIB -shared pez2001_collection.o -o pez2001_collection.so
	@strip pez2001_collection.so

clean: 
	rm -f *.do *.o pez2001_collection pez2001_collection_debug

indent:	
	indent -bap -bli0 -i4 -l79 -ncs -npcs -npsl -fca -lc79 -fc1 -ts4 *.c *.h

