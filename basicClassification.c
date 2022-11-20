#include <stdio.h>
#include "NumClass.h"

// Function that returns the factorial of a n number
long factorial(int n)
{
    if (n == 0){
        return 1;
    }else{
        return(n * factorial(n-1));
    }
}

/* Strong number is a special number whose sum of the factorial of digits is equal to the original number. For Example: 145 is strong number
145= !5+ !4+ !1 */
int isStrong(int n){
    int sum=0;
    int original=n;
    while(n>0){
        sum+=factorial(n%10);
        n=n/10;
    }
    return (sum==original) ? 1: 0;
    
}

/* will return if a number is prime*/
int isPrime(int n){
    
    if (n==1||n==2) return 1;
    
    int i=0;
     for(i=2;i<=n/2;i++){
        if (n%i==0) return 0;
    }
    return 1;
}