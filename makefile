all:loops recursives recursived loopd mains maindloop maindrec

main.o: main.c
	gcc -c main.c

basicClassification.o: basicClassification.c 
	gcc -Wall -fPIC -c basicClassification.c

advancedClassificationRecursion.o: advancedClassificationRecursion.c 
	gcc -Wall -fPIC -c advancedClassificationRecursion.c

advancedClassificationLoop.o: advancedClassificationLoop.c 
	gcc -Wall -fPIC -c advancedClassificationLoop.c

recursives: basicClassification.o advancedClassificationRecursion.o NumClass.h
	 ar rcs libclassrec.a basicClassification.o NumClass.h advancedClassificationRecursion.o

loops: basicClassification.o advancedClassificationLoop.o NumClass.h
	 ar rcs libclassrec.a basicClassification.o advancedClassificationLoop.o NumClass.h				

recursived: basicClassification.o advancedClassificationRecursion.o NumClass.h
	gcc -shared basicClassification.o NumClass.h advancedClassificationRecursion.o -o libclassrec.so 

loopd: basicClassification.o advancedClassificationLoop.o
	gcc -shared basicClassification.o NumClass.h advancedClassificationLoop.o -o libclassloops.so
	

mains: main.o libclassrec.a
	gcc main.o libclassrec.a -lm -o mains

maindloop: main.o libclassloops.so
	gcc main.o ./libclassloops.so -lm -o maindloop

maindrec: main.o libclassrec.so
	gcc main.o ./libclassrec.so -lm -o maindrec
	
clear: 
	rm *.o *.a *.so mains maindloop maindrec

