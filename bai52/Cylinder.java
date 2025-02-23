package bai5_2;

public class Cylinder {
   
        private Circle base;  
        private double height; 
        
    
        public Cylinder() {
            base = new Circle(); 
            height = 1.0;
        }
        
       
        public Cylinder(double radius, String color, double height) {
            base = new Circle(radius, color);
            this.height = height;
        }
        
       
        public double getHeight() {
            return height;
        }
        
        
        public void setHeight(double height) {
            this.height = height;
        }
        
               public double getRadius() {
            return base.getRadius();
        }
        
        
        public String getColor() {
            return base.getColor();
        }
        
       
        public void setRadius(double radius) {
            base.setRadius(radius);
        }
        
        
        public void setColor(String color) {
            base.setColor(color);
        }
        
       
        public double getSurfaceArea() {
            return 2 * Math.PI * base.getRadius() * height + 2 * base.getArea();
        }
        
        
        public double getVolume() {
            return base.getArea() * height;
        }
        
        
        public String toString() {
            return "Cylinder[base=" + base + ",height=" + height + "]";
        }
    }
    

