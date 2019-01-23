public void setup() {
	size(500,500);
	background(0);
	fill(255);
}

public void draw() {
	background(0);
  	myFractal(0,0,1337-5*Math.abs(mouseX-250));
}

public void myFractal(int x, int y, int siz) {
	//draw a rectangle centered at (x,y) of "size" siz
  	// rect(x,y,siz,siz);  
  	// if(siz > 10) {
   //  	myFractal(x-siz/2,y,siz/2);
   //  	myFractal(x+siz/2,y,siz/2);
  	// }
  	fill((int)(Math.random()*55)+200);
  	ellipse(x,y,siz,siz);
  	fill((int)(Math.random()*55)+100);
  	ellipse(x+500,y+500,siz,siz);
  	ellipse(x,y+500,siz,siz);
  	ellipse(x+500,y,siz,siz);
  	if (siz > 10) {
  		myFractal(x,y,int(siz/1.1));
  	}
}