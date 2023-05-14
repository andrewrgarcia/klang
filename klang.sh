#!/bin/bash
: '
Simple scripts which compile C++ files using the clang++ compiler

Andrew Garcia, 2022

Setup:
place in a folder i.e. $HOME/my_folder/
On Terminal inside this folder:
```
chmod +x klang.sh; gedit .bashrc
```
on .bashrc in alias section:
```
alias klang=`$HOME/my_folder/klang.sh` 
```
On Terminal:
```
$source ~/.bashrc
```

Usage:
```
#single .cpp input
klang your_cpp_file.cpp
#multiple .cpp inputs (Usually the case for .cpp program with multiple .cpp dependencies)
klang main_cpp_file.cpp dependency1.cpp dependency2.cpp dependency3.cpp
```
Running compiled program:
```
./main_cpp_file.k
```
'


FILE=$1
CXX_FLAG=-std=c++2a

#clang++ "$@" $CXX_FLAG -o ${FILE::-4}.k 
# g++ "$@" $CXX_FLAG -o ${FILE::-4}.k -O3     #O3 optimization   (g++ auxiliary)
clang++ "$@" $CXX_FLAG -o ${FILE::-4}.k -O3     #O3 optimization
