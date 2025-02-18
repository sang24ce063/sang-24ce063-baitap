package bai13;
public class Rectangle {
    private float length ;
    private float width;

    public Rectangle(){
        this.length = 1.0f;
        this.width = 1.0f;

    }

public Rectangle(float length, float width){
    this.length = length ;
    this.width = width ;
}

public float getlength(){
    return this.length;
}

public float getwidth(){
    return this.width;
}
public void setlength(float length){
    this.length=length;

}
public void setwidth(float width){
    this.width = width;
}
public double getArea () {
return this.length * this.width;
}
    public double getPerimeter () {
        return 2*(this.length + this.width);
    }
    public String toString(){
        return "Rectangle[Length = " + this.length + ", width = " + this.width + "]";

    }
    
}

