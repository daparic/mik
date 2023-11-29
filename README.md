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
