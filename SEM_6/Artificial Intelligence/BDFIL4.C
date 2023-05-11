#include<stdio.h>
#include<graphics.h>
#include<conio.h>
#include<math.h>
#include<dos.h>

// define boundary fill algo
void boundaryfill (int x, int y, int fill, int boundary)
{
	int current;
	current = getpixel(x,y); // get current color of seed pixel

	// if color is not boundary/filled color
	if ((current != boundary) && (current != fill))
	{
		putpixel(x, y, fill);
		delay(5);

		// use 4 connector ,method to fill the other pixels
		boundaryfill(x+1, y, fill, boundary);
		boundaryfill(x-1, y, fill, boundary);
		boundaryfill(x, y+1, fill, boundary);
		boundaryfill(x, y-1, fill, boundary);
	}
}

// Driver Program
void main()
{
	int x1, x2, y1, y2;
	int gd = DETECT, gm;

	clrscr();

	// initialize graphics function
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI");
	printf("Boundary fill algo 4-connector method:\n");

	// initialize coord of rectangle to be filled
	x1 = 250, y1 = 200, x2 = 310, y2 = 260;
	setcolor(10);
	rectangle(x1, y1, x2, y2); // Draw rectangle

	boundaryfill(280, 250, 12, 10);

	getch();
	closegraph();
}