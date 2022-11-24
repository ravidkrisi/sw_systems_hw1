all:loops recursives recursived loopd mains maindloop maindrec

main.o: main.c NumClass.h
	gcc -c main.c

basicClassification.o: basicClassification.c NumClass.h  
	gcc -Wall -fPIC -c basicClassification.c

advancedClassificationRecursion.o: advancedClassificationRecursion.c NumClass.h
	gcc -Wall -fPIC -c advancedClassificationRecursion.c 

advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	gcc -Wall -fPIC -c advancedClassificationLoop.c 

libclassrec.a: basicClassification.o advancedClassificationRecursion.o NumClass.h
	 ar rcs libclassrec.a basicClassification.o  advancedClassificationRecursion.o

libclassloops.a: basicClassification.o advancedClassificationLoop.o NumClass.h
	 ar rcs libclassloops.a basicClassification.o advancedClassificationLoop.o 				

libclassrec.so: basicClassification.o advancedClassificationRecursion.o NumClass.h
	gcc -shared basicClassification.o advancedClassificationRecursion.o -o libclassrec.so 

libclassloops.so: basicClassification.o advancedClassificationLoop.o
	gcc -shared basicClassification.o advancedClassificationLoop.o -o libclassloops.so
	
loops: libclassloops.a

recursives: libclassrec.a

loopd: libclassloops.so

recursived: libclassrec.so
	

mains: main.o libclassrec.a
	gcc main.o libclassrec.a -lm -o mains

maindloop: main.o libclassloops.so
	gcc main.o ./libclassloops.so -lm -o maindloop

maindrec: main.o libclassrec.so
	gcc main.o ./libclassrec.so -lm -o maindrec
	
clean: 
	rm *.o *.a *.so *.txt mains maindloop maindrec

