@echo off

call "D:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64

del cmp.exe
del cmp.obj

::perl txt2inc.pl help.txt help.inc

cl /c cmp.cpp
link cmp.obj icon64.obj

:: /OPT:REF /OPT:ICF=99 /LARGEADDRESSAWARE /SAFESEH:NO /nodefaultlib:libirc
::link.exe /edit /subsystem:console cmp.exe

del cmp.obj
