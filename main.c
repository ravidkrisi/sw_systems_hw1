#include <stdio.h>
#include "NumClass.h"

int main(){
    int x=-1, y=-1;
    scanf("%d%d",&x,&y);

    printf("The Armstrong numbers are:");
    for(int i=x; i<=y;i++){
        if(isArmstrong(i)==1) printf(" %d",i);
    }

    printf("\nThe Palindromes are:");
    for(int i=x; i<=y;i++){
        if(isPalindrome(i)==1) printf(" %d",i);
    }

    printf("\nThe Prime numbers are:");
    for(int i=x; i<=y;i++){
        if(isPrime(i)==1) printf(" %d",i);
    }

    printf("\nThe Strong numbers are:");
    for(int i=x; i<=y;i++){
        if(isStrong(i)==1) printf(" %d",i);
    }
    
}
