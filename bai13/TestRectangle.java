package bai13;
public class TestRectangle {
    public static void main(String[] args) {
        // Test constructors and toString()
        // You need to append a 'f' or 'F' to a float literal
        Rectangle r1 = new Rectangle(1.2f, 3.4f);
        System.out.println(r1);  // toString()
        Rectangle r2 = new Rectangle();  // default constructor
        System.out.println(r2);
  
        // Test setters and getters
        r1.setlength(5.6f);
        r1.setwidth(7.8f);
        System.out.println(r1);  // toString()
        System.out.println("length is: " + r1.getlength());
        System.out.println("width is: " + r1.getwidth());
  
         // Test getArea() and getPerimeter()
      System.out.printf("area is: %.2f%n", r1.getArea());
      System.out.printf("perimeter is: %.2f%n", r1.getPerimeter());
     }
  }

