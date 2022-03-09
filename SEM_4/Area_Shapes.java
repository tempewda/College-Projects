import java.util.*;

public class Area_Shapes
{
    static Scanner sc = new Scanner (System.in);
    public static void main(String []args)
    {
        int choice = 0;

        System.out.println("1. Circle");
        System.out.println("2. Rectangle");
        System.out.println("Enter your choice:");
        choice = sc.nextInt();

        switch(choice)
        {
            case 1: // Circle
                double radius = 0.0;
                double a = 0.0;
                System.out.printf("Radius: ");
                radius = sc.nextDouble();
                Shapes circle = new Shapes(radius);
                a = circle.area(circle.radius);
                System.out.printf("Area: " + a);
                break;

            case 2: // Rectangle
                int length = 0;
                int breadth = 0;
                System.out.printf("Length: ");
                length = sc.nextInt();
                System.out.printf("Breadth: ");
                breadth = sc.nextInt();
                Shapes rectangle = new Shapes(length, breadth);
                a = rectangle.area(rectangle.length, rectangle.breadth);
                System.out.printf("Area: " + a);
                break;

            default:
                System.out.println("Imvalid Input...");
                
        }
        
    } 
}

class Shapes
{
    int length;
    int breadth;
    double radius;

    Shapes()    {}

    // Rectangle
    Shapes(int l, int b)
    {
        length = l;
        breadth = b;
    }

    // Circle
    Shapes(double r)
    {
        radius = r;
    }

    int area(int l, int b)
    {
        int a = l * b;
        return a;
    }

    double area(double r)
    {
        double a = 3.14 * r * r;
        return a;
    }
}