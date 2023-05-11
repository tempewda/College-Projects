#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>

//initial object function
void draw(x1, y1, x2, y2, x3, y3)
{
	// original object
	setcolor(RED);
	line(x1, y1, x2, y2);
	line(x2, y2, x3, y3);
	line(x3, y3, x1, y1);
	outtextxy(x3+2,y3+2,"original triangle");
}

// scaling function
void scale_2d(x1, y1, x2, y2, x3, y3, sx, sy)
{
	setcolor(GREEN);
	line(x1*sx, y1*sy, x2*sx, y2*sy);
	line(x2*sx, y2*sy, x3*sx, y3*sy);
	line(x3*sx, y3*sy, x1*sx, y1*sy);
	outtextxy(x3*sx+2,y3*sx+2,"Scaled Triangle");
}

// Driver Program
void main()
{
	int x1, x2, x3, y1, y2, y3, sx, sy;
	int gd = DETECT, gm;

	clrscr();

	// initialize graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI");

	// taking input variables
	printf("x1 & y1:\n");
	scanf("%d %d", &x1, &y1);
	printf("x2 & y2:\n");
	scanf("%d %d", &x2, &y2);
	printf("x3 & y3:\n");
	scanf("%d %d", &x3, &y3);

	// draw object
	draw(x1, y1, x2, y2, x3, y3);

	printf("Enter scaling factor:\n");
	scanf("%d %d", &sx, &sy);

	// scaling of object
	scale_2d(x1, y1, x2, y2, x3, y3, sx, sy);

	getch();
	closegraph();
}