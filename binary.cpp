#include<stdio.h>
intbinarySearch(int cholok_a[],int cholok_x,intcholok_low,intcholok_high){if(cholok_low>cholok_high){returnfalse;}else{intcholok_mid=(cholok_low+cholok_high)/2;if(cholok_a[cholok_mid]==cholok_x){returncholok_mid;}else if(cholok_x>cholok_a[cholok_mid]){returnbinarySearch(cholok_a,cholok_x,cholok_mid+1,cholok_high);}else{returnbinarySearch(cholok_a,cholok_x,cholok_low,cholok_mid-1);}}
}intmain(){intcholok_k,cholok_n;scanf("%d",&cholok_n);intcholok_a[cholok_n+1];This is single line comment
for(intcholok_i=0;cholok_i<cholok_n;cholok_i++){scanf("%d",&cholok_a[cholok_i]);}This is single line comment
for(intcholok_i=0;cholok_i<cholok_n;cholok_i++){printf("%d",cholok_a[cholok_i]);}printf("Givethedigityouwannafind");scanf("%d",&cholok_k);intcholok_result=binarySearch(cholok_a,cholok_k,0,cholok_n-1),printf("Indexis%dvalueis%d",cholok_result,cholok_a[cholok_result]);return0;
}