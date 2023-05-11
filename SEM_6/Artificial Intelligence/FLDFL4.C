#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<dos.h>

// define flood fill algo
void floodfill(int x, int y, int newcol, int oldcol)
{
	int current;
	current = getpixel(x,y); // get current color of seed pixel

	// if color is old color then recolor
	if (current == oldcol)
	{
		putpixel(x, y, newcol); // color with new color
		delay(5);

		// use 4 connector ,method to fill the other pixels
		floodfill(x+1, y, newcol, oldcol);
		floodfill(x-1, y, newcol, oldcol);
		floodfill(x, y+1, newcol, oldcol);
		floodfill(x, y-1, newcol, oldcol);
	}
}

// Driver Program
void main()
{
	int x, y, radius, cc;
	int gd = DETECT, gm;

	clrscr();

	// initialize graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI");
	printf("Flood fill algo 4-connector method:\n");

	// initialize cemtre amd radius of circle
	x = 200, y = 150, radius = 35;

	circle(x,y,radius);
	cc = getpixel(x,y); // get color of centre...seed pixel

	floodfill(x,y,20,cc);

	getch();
	closegraph();
}