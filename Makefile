SRC_FILES = main.c f1.c f2.c f3.c

CC=gcc  # /usr/bin/x86_64-linux-gnu-gcc-11
CXX=g++ # /usr/bin/x86_64-linux-gnu-g++-11

ARM_CC=cpptestscan --cpptestscanOutputFile=$(shell pwd)/app_build.bdf /opt/linaro/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
ARM_CXX=cpptestscan --cpptestscanOutputFile=$(shell pwd)/app_build.bdf /opt/linaro/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++

app_test: $(SRC_FILES)
	$(CC) -o $@ $^

app_build: $(SRC_FILES)
	$(ARM_CC) -o $@ $^

clean:
	@rm -f *.o app_build* app_test* 

.PHONY: clean
