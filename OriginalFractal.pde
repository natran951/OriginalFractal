public void setup() {
	size(500,500);
	background(0);
	fill(0);
  stroke(255);
}

public void draw() {
	background(0);
  //myFractal(0,0,1337-5*Math.abs(mouseX-250));
  myFractal(250,250,500-mouseX);
  fill(255);
  rect(0,0,250,500);
  myFractal2(250,250,500-mouseX);
  fill(0);
  rect(0,250,0,500);
  myFractal3(250,250,500-mouseX);
  fill(255);
  rect(500,500,500,500);
  myFractal4(250,250,500-mouseX);
}

public void myFractal(int x, int y, int siz) {
	//draw a rectangle centered at (x,y) of "size" siz
  	// rect(x,y,siz,siz);  
  	// if(siz > 10) {
   //  	myFractal(x-siz/2,y,siz/2);
   //  	myFractal(x+siz/2,y,siz/2);
  	// }

  	// fill((int)(Math.random()*55)+200);
  	// ellipse(x,y,siz,siz);
  	// fill((int)(Math.random()*55)+100);
  	// ellipse(x+500,y+500,siz,siz);
  	// ellipse(x,y+500,siz,siz);
  	// ellipse(x+500,y,siz,siz);
  	// if (siz > 10) {
  	// 	myFractal(x,y,int(siz/1.1));
  	// }
    fill(0);
    stroke(255);
    arc((float)x,(float)y,(float)siz,(float)siz,-PI/2,0);
    if(siz < 2) {
      arc((float)x,(float)y,(float)siz,(float)siz,-PI/2,0);
    }
    else {
      myFractal(x,y,(int)(siz/1.1));
    }
}
public void myFractal2(int x, int y, int siz) {
  fill(255);
  stroke(0);
  arc((float)x,(float)y,(float)siz,(float)siz,PI,3*PI/2);
    if(siz < 2) {
      arc((float)x,(float)y,(float)siz,(float)siz,PI,3*PI/2);
    }
    else {
      myFractal2(x,y,(int)(siz/1.1));
    }
}

public void myFractal3(int x, int y, int siz) {
  fill(0);
  stroke(255);
  arc((float)x,(float)y,(float)siz,(float)siz,PI/2,PI);
    if(siz < 2) {
      arc((float)x,(float)y,(float)siz,(float)siz,PI/2,PI);
    }
    else {
      myFractal3(x,y,(int)(siz/1.1));
    }
}

public void myFractal4(int x, int y, int siz) {
  fill(255);
  stroke(0);
  arc((float)x,(float)y,(float)siz,(float)siz,0,PI/2);
    if(siz < 2) {
      arc((float)x,(float)y,(float)siz,(float)siz,0,PI/2);
    }
    else {
      myFractal4(x,y,(int)(siz/1.1));
    }
}