import java.util.*;

public class Complex_Num
{
    Scanner sc = new Scanner(System.in);

    static Complex add(Complex n1, Complex n2)
    {
        Complex sum = new Complex();
        sum.real = n1.real + n2.real;
        sum.img = n1.img + n2.img;

        return sum;
    }
    public static void main(String[] args) 
    {
        Complex num1 = new Complex();
        Complex num2 = new Complex();
        Complex sum = new Complex();

        System.out.println("1st Complex Number:");
        num1.input();
        System.out.println("2nd Complex Number:");
        num2.input();
        
        sum = add(num1, num2);

        System.out.println("Sum of the Complex Numbers:");
        sum.display();
    }
}

class Complex
{
    int real;   // real part
    int img;    // imaginary part

    Complex() {}

    Complex(int r, int i)
    {
        real = r;
        img = i;
    }

    Scanner sc = new Scanner(System.in);
    void input()
    {
        System.out.printf("Real Part: ");
        real = sc.nextInt();
        System.out.printf("Imaginary Part: ");
        img = sc.nextInt();
    }

    void display()
    {
        System.out.println("Real Part: " + real);
        System.out.println("Imaginary Part: " + img);
    }
}