// Bresenham Algorithm for line drawing

#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>

// Bresenham function for line generation
void bresenham(int x1, int y1, int x2, int y2)
{
	int i,pk;

	// Calculate dx and dy
	int dx = x2 - x1;
	int dy = y2 - y1;
	int x = x1, y = y1;

	// if slope < 1
	if (abs(dx) > abs(dy))
	{
		// draw the starting pixel
		putpixel(x,y,GREEN);
		pk = 2 * abs(dy) - abs(dx);
		for (i = 0; i < abs(dx); i++)
		{
			x++;
			if (pk<0)
				pk = pk + 2*abs(dy) - 2 * abs(dx);

			else
			{
				y++;
				pk = pk + 2*abs(dy) - 2*abs(dx);
			}
			putpixel(x,y,GREEN);
		} // for loop closed
	} // if closed

	else
	{
		// draw starting pixel
		putpixel(x,y,GREEN);
		pk = 2*abs(dx) - abs(dy);
		for (i=0; i<abs(dy); i++)
		{
			y++;
			if(pk < 0)
				pk = pk + 2*abs(dy);
			else
			{
				x++;
				pk = pk + 2*abs(dx) - 2*abs(dy);
			}
			putpixel(x,y,GREEN);
		} // for closed
	} // else closed

}

// Driver Program
void main()
{
	int x1 = 20, y1 = 50, x2 = 30, y2 = 160;
	int gd = DETECT, gm;
	clrscr();

	// initialise graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI\\");
	printf("Bresenham line drawing algorithm from (%d,%d) to (%d,%d)", x1,y1,x2,y2);
	// call bresenham function
	bresenham(x1,y1,x2,y2);
	getch();
	closegraph();
}