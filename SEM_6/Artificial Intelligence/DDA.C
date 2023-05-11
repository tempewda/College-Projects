// DDA Algorithm for Line drawing

#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>

// function for rounding off
int round(float num)
{
	return num<0 ? num - 0.5:num + 0.5;
}

// DDA function for line generation
void dda(int x1, int y1, int x2, int y2)
{
	int i;

	// Calculate dx and dy
	int dx = x2 - x1;
	int dy = y2 - y1;

	// Calculate steps required to generate pixels
	int steps = abs(dx)>abs(dy)?abs(dx):abs(dy);

	// Calculate increment in x and y for each steps
	float xinc = dx/(float)steps;
	float yinc = dy/(float)steps;

	// Put pixel for each step
	float x = x1;
	float y = y1;

	// Draw the starting pixel
	putpixel(round(x), round(y), RED);

	// Draw the successive pixels
	for(i=1; i<=steps; i++)
	{
		// get the next pixel
		x += xinc;
		y += yinc;
		putpixel(round(x), round(y), RED);
	}
}

// Driver Program
void main()
{
	int x1 = 50, y1 = 50, x2 = 50, y2 = 250;
	int gd = DETECT, gm;
	clrscr();

	// initialise graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI\\");
	printf("DDA line drawing algorithm from (%d,%d) to (%d,%d)", x1,y1,x2,y2);
	// call DDA function
	dda(x1,y1,x2,y2);
	getch();
	closegraph();
}