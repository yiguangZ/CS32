# Makefile for lab00, Yiguang Zhu, CS32, S24

CXX=clang++
# CXX=g++
helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld
helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp
clean:
	/bin/rm -f *.o helloWord lab00Test
lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test
