#!/bin/bash
: '
Simple scripts which compile C++ files using the clang++ compiler
klanGLe: OpenGL flags (graphics)
Andrew Garcia, 2022
'

FILE=$1
CXX_FLAG=-std=c++2a

# NO OpenGL FLAGS ("klang")
# clang++ $FILE -std=c++2a -o ${FILE::-4}.k        # Only 1 .cpp input allowed
# clang++ "$@" $CXX_FLAG -o ${FILE::-4}.k       

# GLUT   
# clang++ "$@" $CXX_FLAG -lGL -lGLU -lglut -o ${FILE::-4}.k 

# GLAD, GLFW
clang++ "$@" /usr/include/glad/glad.c -lglfw -lGL -lm -lX11 -lpthread -lXi -lXrandr -ldl -o ${FILE::-4}.k 
