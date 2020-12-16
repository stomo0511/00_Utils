UNAME = $(shell uname)
ifeq ($(UNAME),Linux)
	CXX = g++-9
	LIB_DIR = /opt/intel/compilers_and_libraries/linux/lib/intel64
	MKL_ROOT = /opt/intel/compilers_and_libraries/linux/mkl
	MKL_LIB_DIR = $(MKL_ROOT)/lib/intel64
endif
ifeq ($(UNAME),Darwin)
	CXX = /usr/local/bin/g++-9
	LIB_DIR = /opt/intel/compilers_and_libraries/mac/lib
	MKL_ROOT = /opt/intel/compilers_and_libraries/mac/mkl
	MKL_LIB_DIR = $(MKL_ROOT)/lib
	MY_ROOT = /Users/stomo/WorkSpace/C++
	MY_UTIL_DIR = $(MY_ROOT)/00_Utils
endif

CXXFLAGS = -m64 -fopenmp -O3

MKL_INC_DIR = $(MKL_ROOT)/include
#MKL_LIBS = -lmkl_intel_lp64 -lmkl_sequential -lmkl_core 
MKL_LIBS = -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core
#LIBS = -lgomp
LIBS = -liomp5

%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) -I$(MKL_INC_DIR) -I$(MY_UTIL_DIR) -o $@ $<

clean:
	rm -f *.o
