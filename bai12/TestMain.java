package bai12;
public class TestMain {
    public static void main(String[] args) {
      
       Circle1 c1 = new Circle1(1.1);
       System.out.println(c1);   
       Circle1 c2 = new Circle1(); 
       System.out.println(c2);
 
     
       c1.setRadius(2.2);
       System.out.println(c1);      
       System.out.println("radius is: " + c1.getRadius());
 
      
       System.out.println(c1.getArea());
       System.out.println(c1.getCircumference());
    }
 }