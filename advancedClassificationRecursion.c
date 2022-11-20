#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"

int isArmstrongRec(int n, int d){
    if(n==0) return 0;
    int sum=0;
    return sum=pow(n%10,d)+isArmstrongRec(n/10,d);
}
int isArmstrong(int n){

    int nDigits = floor(log10(abs(n))) + 1;
    int out = isArmstrongRec(n,nDigits);
    return (out==n) ? 1: 0;
}

int isPalindromeRec(int n){
    if (n==0) return 0;
    int sum=0;
    int nDigits = floor(log10(abs(n))) + 1;
    nDigits--;
    return sum=((pow(10,nDigits))*(n%10))+isPalindromeRec(n/10);
}

int isPalindrome(int n){
    int out=isPalindromeRec(n);
    return (out==n) ? 1: 0;
}
 
