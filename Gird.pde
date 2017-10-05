final int TEXT_SIZE = 20;
final int OFFSET = 100;

void setup() {
  size(801, 601);
  textAlign(CENTER, CENTER);
  PFont courier = createFont("Arial", TEXT_SIZE);
  textFont(courier);
  textSize(TEXT_SIZE);
}

void draw() {
  background(225);
  fill(0);
  grid(50);
  //text("y-axis",50,50);
  //text("x-axis",width-0.5*OFFSET,height-0.5*OFFSET);
  text("x-axis",0.5*OFFSET, height-0.5*OFFSET);
  text("y-axis",width-0.5*OFFSET,0.5*OFFSET);
  stroke(0);
  //plotPoint(300,400);
  //plotLine(200,300,600,500);
  //plotTriangle(200,250,350,450,550,150);
  //plotQuad(200,250,350,450,550,150,300,100);
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
}

void plotPoint(int x1, int y1) {
  strokeWeight(10);
  point(x1,y1);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-OFFSET,y1);
  strokeWeight(1);
}

void plotLine(int x1, int y1, int x2, int y2) {
  strokeWeight(1);
  line(x1,y1,x2,y2);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-OFFSET,y1);
  text((x2-OFFSET)+","+(y2-OFFSET),x2-OFFSET,y2);
  strokeWeight(1);
}

void plotTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
  noFill();
  triangle(x1,y1,x2,y2,x3,y3);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  point(x3,y3);
  strokeWeight(1);
  text((x1-OFFSET)+","+(y1-OFFSET),x1-OFFSET,y1);
  text((x2-OFFSET)+","+(y2-OFFSET),x2-OFFSET,y2);
  text((x3-OFFSET)+","+(y3-OFFSET),x3-OFFSET,y3);
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