One Makefile, multiple targets:
```
make app_build
make app_test
```

Generate bdf:
```
make app_build
cpptesttrace --cpptesttraceOutputFile=test.bdf make app_test
```
