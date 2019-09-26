CC = gcc 
CCFLAGS=-fopenmp
LDFLAGS=-L${MKLROOT}/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_rt -lmkl_core -liomp5 -lpthread -lm -ldl

SOURCES=simple_MKL_DGEMM_test.c low_overhead_timers.c

default: dgemm_test_default.exe

dgemm_test_default.exe: $(SOURCES)
	$(CC) $(CCFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm -f *.o
	rm -f dgemm_test_default.exe
