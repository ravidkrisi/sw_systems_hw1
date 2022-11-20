#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"

/* will return if a number is a palindrome */
int isArmstrong(int n){
    int sum=0;
    int original=n;
    int nDigits = floor(log10(abs(n))) + 1;
    while(n>0){
        sum=sum+pow(n%10,nDigits);
        n=n/10;
    }
    return (sum==original) ? 1: 0;
}

/* will return if a number is a palindrome */
int isPalindrome(int n){
    
    int nDigits = floor(log10(abs(n))) + 1;
    nDigits--;
    int sum=0;
    int original=n;
    while(n>0){
        sum=sum+(pow(10,nDigits)*(n%10));
        n=n/10;
        nDigits--;
    }
    return (sum==original) ? 1: 0;
}
