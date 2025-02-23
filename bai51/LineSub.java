package bai5_1;

    public class LineSub extends Point {
        private Point end;  

        public LineSub(int beginX, int beginY, int endX, int endY) {
           super(beginX, beginY);           
           this.end = new Point(endX, endY);  
        }
        
        public LineSub(Point begin, Point end) {  
           super(begin.getX(), begin.getY());      
           this.end = end;
        }
        
        public String toString() {
           return "LineSub: (" + super.toString() + " to " + end + ")";
        }
        
        public Point getBegin() {
           return new Point(getX(), getY());  
        }
        
        public Point getEnd() {
           return end;
        }
        
        public void setBegin(Point begin) {
           super.setXY(begin.getX(), begin.getY());
        }
        
        public void setEnd(Point end) {
           this.end = end;
        }
        
        public int getBeginX() {
           return getX();
        }
        
        public int getBeginY() {
           return getY();
        }
        
        public int getEndX() {
           return end.getX();
        }
        
        public int getEndY() {
           return end.getY();
        }
        
        public void setBeginX(int x) {
           super.setX(x);
        }
        
        public void setBeginY(int y) {
           super.setY(y);
        }
        
        public void setBeginXY(int x, int y) {
           super.setXY(x, y);
        }
        
        public void setEndX(int x) {
           end.setX(x);
        }
        
        public void setEndY(int y) {
           end.setY(y);
        }
        
        public void setEndXY(int x, int y) {
           end.setXY(x, y);
        }
        
        public int getLength() {
           int xDiff = end.getX() - getX();
           int yDiff = end.getY() - getY();
           return (int) Math.sqrt(xDiff * xDiff + yDiff * yDiff);
        }
        
        public double getGradient() {
           int xDiff = end.getX() - getX();
           int yDiff = end.getY() - getY();
           return Math.atan2(yDiff, xDiff);
        }
     }
     
    