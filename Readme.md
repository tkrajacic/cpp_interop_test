Commands to generate the static library:

```bash
cd testlib.artifactbundle
clang++ -I include/ -c -o testlib.o testlib.cpp
ar rc libtestlib.a testlib.o
```