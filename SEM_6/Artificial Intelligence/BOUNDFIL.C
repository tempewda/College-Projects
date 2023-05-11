#include <stdio.h>
#include <conio.h>
void main()
{
int n,i,s=0;
printf("enter a armstromg number");
scanf("%d",&n);
i=n;
while(i>0)
{
r=i%10;
s=s+r*r*r;
i=i/10;
}
if(s==n)
}
printf("armstrong number");
else
}
printf("not a armstrong number");
getch();
}