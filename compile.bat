@echo off
if not exist obj mkdir obj
if not exist bin mkdir bin
g++ -c -DBUILDING_DLL src/cpp/mylib.cpp -o obj/mylib.o
g++ -shared -o bin/mylib.dll obj/mylib.o -Wl,--out-implib,bin/libmylib.a
gprbuild -P project.gpr