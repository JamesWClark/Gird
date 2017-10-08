final int TEXT_SIZE = 20;
final int OFFSET = 100;

void setup() {
  size(701, 501);
  textAlign(CENTER, CENTER);
  PFont courier = createFont("Arial", TEXT_SIZE);
  textFont(courier);
  textSize(TEXT_SIZE);
}

void draw() {
  background(225);
  fill(0);  
  grid(50);
  
  //plotPoint(300,400);
  //plotLine(250,200,100,150);
  //plotTriangle(150,100,250,200,100,300);
  //plotQuad(200,250,350,450,550,150,300,100);
  //plotRect(150,100,100,150);
  //plotEllipse(100,200,100,200);
}

void grid(int n) {
  stroke(150);
  for(int i = OFFSET; i < width - OFFSET; i += n) {
    line(i,OFFSET,i,height-OFFSET);
    text(i-OFFSET,i,0.5*OFFSET);
    for(int j = OFFSET; j < height - OFFSET; j += n) {
      line(OFFSET,j,width-OFFSET,j);
      text(j-OFFSET,0.5*OFFSET,j);
    }
  }
  //fill(0);
  //text("y-axis",0.5*OFFSET, height-0.5*OFFSET);
  //text("x-axis",width-0.5*OFFSET,0.5*OFFSET);
}

void upsideDownGrid(int n) {
  stroke(150);
  for(int i = OFFSET; i < width - OFFSET; i += n) {
    line(i,OFFSET,i,height-OFFSET);
    text(i-OFFSET,i,height-0.5*OFFSET);
    for(int j = height - OFFSET; j > OFFSET; j -= n) {
      line(OFFSET,j,width-OFFSET,j);
      text(abs(j-height+ OFFSET),0.5*OFFSET,j);
    }
  }
  //fill(0);
  //text("x-axis",50,50);
  //text("y-axis",width-0.5*OFFSET,height-0.5*OFFSET);
}

void plotPoint(int x1, int y1) {
  x1 += OFFSET;
  y1 += OFFSET;
  stroke(0);
  strokeWeight(10);
  point(x1,y1);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-0.5*OFFSET,y1);
  strokeWeight(1);
}

void plotLine(int x1, int y1, int x2, int y2) {
  x1 += OFFSET;
  x2 += OFFSET;
  y1 += OFFSET;
  y2 += OFFSET;
  stroke(0);
  strokeWeight(1);
  line(x1,y1,x2,y2);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-0.5*OFFSET,y1);
  text((x2-OFFSET)+","+(y2-OFFSET),x2-0.5*OFFSET,y2);
  strokeWeight(1);
}

void plotRect(int x, int y, int w, int h) {
  x += OFFSET;
  y += OFFSET;
  stroke(0);
  noFill();
  strokeWeight(2);
  rect(x,y,w,h);
  strokeWeight(10);
  point(x,y);
  strokeWeight(1);
  text((x-OFFSET)+","+(y-OFFSET),x-0.5*OFFSET,y);
}

void plotEllipse(int x, int y, int w, int h) {
  x += OFFSET;
  y += OFFSET;
  stroke(0);
  noFill();
  strokeWeight(2);
  ellipse(x,y,w,h);
  strokeWeight(10);
  point(x,y);
  strokeWeight(1);
  text((x-OFFSET)+","+(y-OFFSET),x-0.5*OFFSET,y);
}

void plotTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
  x1 += OFFSET;
  x2 += OFFSET;
  x3 += OFFSET;
  y1 += OFFSET;
  y2 += OFFSET;
  y3 += OFFSET;
  stroke(0);
  noFill();
  triangle(x1,y1,x2,y2,x3,y3);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  point(x3,y3);
  strokeWeight(1);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-0.5*OFFSET,y1);
  text((x2-OFFSET)+","+(y2-OFFSET),x2-0.5*OFFSET,y2);
  text((x3-OFFSET)+","+(y3-OFFSET),x3-0.5*OFFSET,y3);
}

void plotQuad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  noFill();
  quad(x1,y1,x2,y2,x3,y3,x4,y4);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  point(x3,y3);
  point(x4,y4);
  strokeWeight(1);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-OFFSET,y1);
  text((x2-OFFSET)+","+(y2-OFFSET),x2-OFFSET,y2);
  text((x3-OFFSET)+","+(y3-OFFSET),x3-OFFSET,y3);
  text((x4-OFFSET)+","+(y4-OFFSET),x4-OFFSET,y4);
}

void keyPressed() {
  if(key == 'p' || key == 'P') {
    save("" + millis() + random(1) + ".png");
  }
}