package bai12;
public class Circle1 {
    
    private double radius; 
    private String color;    
 
   
    public Circle1() {
       this.radius = 1.0; 
       this.color = "red"; 
    } 
 
    
    public Circle1(double radius) {
       this.radius = radius; 
       this.color = "red"; 
    } 
 
    
    public Circle1(double radius, String color) {
       this.radius = radius; 
       this.color = color; 
    } 
 
    
    public double getRadius() { 
       return this.radius; 
    } 
 
   
    public String getColor() { 
       return this.color; 
    } 
 
    public void setRadius(double radius) { 
       this.radius = radius; 
    } 
 
   
    public void setColor(String color) { 
       this.color = color; 
    } 
 
   
    public double getArea() { 
       return this.radius * this.radius * Math.PI; 
    } 
 
  
    public double getCircumference() {
      return 2 * this.radius * Math.PI;
    }

   
    public String toString() { 
       return "Circle[radius=" + this.radius + ", color=" + this.color + "]"; 
    } 
 }
 