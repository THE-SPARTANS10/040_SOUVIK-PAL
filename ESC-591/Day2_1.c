#include<stdio.h>
int main(){
	printf("Enter a number: ");
	int n, f=1;
	scanf("%d", &n);
	for(int i=2;i<=n;f*=i,i++);
	n<0?printf("Invalid Input.") : printf("The factorial is %d.",f);
}
