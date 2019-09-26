CC = gcc 
CCFLAGS=-fopenmp -I${MKLROOT}/include
LDFLAGS=-L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_rt -lpthread -lm -ldl

SOURCES=simple_MKL_DGEMM_test.c low_overhead_timers.c

default: dgemm_test_default.exe

dgemm_test_default.exe: $(SOURCES)
	$(CC) $(CCFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm -f *.o
	rm -f dgemm_test_default.exe
