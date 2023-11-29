The essence, is that if there already exists a huge codebase, the Parasoft `cpptesttrace` tool simply chains into the build flow smoothly, without altering a very complicated Makefile. There is much freedom and flexibility if you are starting from a fresh codebase.

One Makefile, multiple targets:
```
make -f Makefile app_build
make -f Makefile app_test
```

Generate bdf:
```
make -f Makefile app_build
cpptesttrace --cpptesttraceOutputFile=app_test.bdf make -f Makefile app_test
```
