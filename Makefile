SRC_FILES = main.c f1.c f2.c f3.c

app_build: $(SRC_FILES)
	/opt/linaro/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc -o $@ $^

app_test: $(SRC_FILES)
	/usr/bin/x86_64-linux-gnu-gcc-11 -o $@ $^

clean:
	@rm -f *.o app_build app_test

.PHONY: clean
