//Draw a triangle then rotate by angle 45^.
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>

void main()
{

	int gd=0,gm;
	int x1,x2,x3,y1,y2,y3;
	double s,c,angle;
	//S=sin, C=cos, A=angle.
	initgraph(&gd,&gm,"C:\\TURBOC3\\BGI\\");
	setcolor(RED);

	printf("Drawing and rotating of Triangle at angle 45^");
	//Enter the co-ordinates of A,B,C.
	printf("\nEnter the co-odrdiantes of vertice A:");
	scanf("%d%d",&x1,&y1);
	printf("Enter the co-ordinates of vertice B:");
	scanf("%d%d",&x2,&y2);
	printf("Enter the co-ordinates of vertice C:");
	scanf("%d%d",&x3,&y3);
	setbkcolor(WHITE);
	cleardevice();

	line(x1,y1,x2,y2);
	line(x2,y2,x3,y3);
	line(x3,y3,x1,y1);
	getch();
	setbkcolor(BLACK);

	//Rotation by angle 45^
	printf("Enter the angle of rotation");
	scanf("%1f",&angle);
	setbkcolor(WHITE);
	c=cos(angle*3.14/180);
	s=sin(angle*3.14/180);

	x1=floor(x1*c+y1*s);
	y1=floor(-x1*s+y1*c);
	x2=floor(x2*c+y2*s);
	y2=floor(-x2*s+y2*c);
	x3=floor(x3*c+y3*s);
	y3=floor(-x3*s+y3*c);

	cleardevice();

	line(x1,y1,x2,y2);
	line(x2,y2,x3,y3);
	line(x3,y3,x1,y1);
	getch();
	closegraph();
}