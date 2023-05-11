#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>

//initial object function...3d bar
void draw(x1, y1, x2, y2)
{
	setfillstyle(1,6);
	bar3d(x1,y1,x2,y2,30,1);
}

// scaling function
void scale_3d(x1, y1, x2, y2, sx, sy, sz)
{
	setfillstyle(1,6);
	bar3d(x1*sx, y1*sy, x2*sx, y2*sy, 30*sz, 1);
	outtextxy(x2*sx, y2*sy,"After scaling");
}

// Driver Program
void main()
{
	int x1, x2, y1, y2, sx, sy, sz;
	int gd = DETECT, gm;

	clrscr();

	// initialize graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI");

	// taking input variables
	printf("First point (top-left):\n");
	scanf("%d %d", &x1, &y1);
	printf("Second point (bottom-right):\n");
	scanf("%d %d", &x2, &y2);
	cleardevice();

	// draw object
	draw(x1, y1, x2, y2);

	printf("Enter scaling vectors:\n");
	scanf("%d %d %d", &sx, &sy, &sz);

	// translating object
	scale_3d(x1, y1, x2, y2, sx, sy, sz);

	getch();
	closegraph();
}