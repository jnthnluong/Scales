void setup() {
  size(600,600);  //feel free to change the size
  //stops the draw() function from repeating
  noLoop();
  // skin background(222, 199, 177);
  // background(185,170,126);
}
void draw() {
  rotate(PI/4);
  translate(-200,-650);
  
  for (int y = -50; y < 1550; y+=5)
  {
    for (int x = -50; x < 1550; x+=4) {
      scaly(x, y);
      
      slices(x,y);
    }
  }
  delay(100);
}
void scaly(int x, int y) {
 

  //weird triangles

  strokeWeight(2);
  noFill();
  if((int)(Math.random()*10) < 7){
    stroke(98,75,10);
  }else{
   stroke(131,103,23); 
  }

  //fill(40, 40, 40);
  //ellipse(x,y,(int)(Math.random()*20)+4,(int)(Math.random()*20)+4);
  // hair?
  bezier(x, y, x+(int)(Math.random()*20), y+(int)(Math.random()*20), x-(int)(Math.random()*20), y-(int)(Math.random()*20), x+50, y+50);
  stroke(103,77,27);
  triangle(x,y,x+((int)(Math.random()*5)),y,x+((int)(Math.random()*5)),y+((int)(Math.random()*5))); 
}

void slices(int x,int y){

  stroke(0);
  noFill();
  bezier(x,y,x+250,y+300,x+150,y+300,x+400,y+400);
}
