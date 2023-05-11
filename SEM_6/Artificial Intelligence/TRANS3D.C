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

// translation function
void translation_3d(x1, y1, x2, y2, tx, ty)
{
	setfillstyle(1,6);
	bar3d(x1+tx, y1+ty, x2+tx, y2+ty, 30, 1);
	outtextxy(x2+tx+15,y2,"After translation");
}

// Driver Program
void main()
{
	int x1, x2, y1, y2, tx, ty;
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

	printf("Enter translation vectors:\n");
	scanf("%d %d", &tx, &ty);

	// translating object
	translation_3d(x1, y1, x2, y2, tx, ty);

	getch();
	closegraph();
}