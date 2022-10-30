#include <stdio.h> 

int binarySearch(int a[],int x,int low,int high){
    if(low > high){
        return false;
    } else{
        int mid =(low + high)/ 2;
        
        if(a[mid] == x){
           
            return mid;
        } else if(x > a[mid]){
            return binarySearch(a,x,mid + 1,high);
        } else{
            return binarySearch(a,x,low,mid - 1);
        }
    }
}



int main (){
    int k,n;
    scanf("%d",&n);
    int a[n + 1];

    //This is single line comment
    for(int i = 0; i < n; i++){
        scanf("%d",&a[i]);
    }
    
    /*This is multiple line comment*/
    for(int i = 0; i < n; i++){
        printf("%d",a[i]);
    }


    printf("Give the digit you wanna find");

    scanf("%d",&k);
    
    int result = binarySearch(a,k,0,n - 1);
    
    printf("Index is %d value is %d",result,a[result]);

    return 0;
}