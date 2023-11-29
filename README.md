The essence, is that there already exists a huge codebase, so the Parasoft `cpptesttrace` tool simply smoothly inserts into the build flow. There is much freedom and flexibility if you are starting from a fresh codebase.

One Makefile, multiple targets:
```
make -f Makefile app_build
make -f Makefile app_test
```

Generate bdf:
```
make -f Makefile app_build
cpptesttrace --cpptesttraceOutputFile=test.bdf make -f Makefile app_test
```
