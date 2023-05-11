#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<dos.h>

void flodfill(int x,int y,int newcol,int oldcol)
{
	int current;
	current=getpixel(x,y);
		if(current==oldcol)
		{
			putpixel(x,y,newcol);
			delay(5);
			flodfill(x+1,y,newcol,oldcol);
			flodfill(x-1,y,newcol,oldcol);
			flodfill(x,y+1,newcol,oldcol);
			flodfill(x,y-1,newcol,oldcol);
		}
}
void main()
{
	int x,y,radius,cc;
	int gd=DETECT,gm;
	clrscr();
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI");
	printf("Flood Fill Algorithm:4-Connected Method.\n");
	x=200,y=150,radius=35;
	circle(x,y,radius);
	cc=getpixel(x,y);
	flodfill(x,y,GREEN,cc);
	getch();
	closegraph();
}