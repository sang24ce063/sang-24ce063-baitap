package bai11;
public class TestCircle {   
    public static void main(String[] args) { 
 
      
       Circle c1 = new Circle();
       System.out.println("Circle  1: " + c1.toString()); 
 
     
       Circle c2 = new Circle(2.0);
       System.out.println("Circle 2: " + c2.toString()); 
 
   
       Circle c3 = new Circle(3.0, "blue");
       System.out.println("Circle 3: " + c3.toString()); 
 
     
       System.out.println("Radius c3: " + c3.getRadius()); 
       System.out.println("Color c3: " + c3.getColor()); 
       System.out.println("Area c3: " + c3.getArea()); 
 
     
       Circle c4 = new Circle();
       c4.setRadius(5.5); 
       c4.setColor("green"); 
       System.out.println("Update circle 4 : " + c4.toString()); 
 
       Circle c5 = new Circle(6.6, "yellow");
       System.out.println(c5.toString());   
       System.out.println(c5);              
       System.out.println( c5);  
    } 
 }
 