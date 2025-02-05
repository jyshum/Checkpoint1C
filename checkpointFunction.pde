// color pallette
color sky = #A4DEE8; 
color nightColor = #222971;
color bush = #4E7951;
color base = #8E8E8E;
color roof = #58534B;
color window = #C6C0B4;
color door = #644F27;
color staircase = #5A564D;
color sun = #E1E37E;
color sun1 = #E6E894;
color sun2 = #F4F5BE;
color moon1 = #EDEDED;
color moon2 = #C6C6C6;

void setup() {

  size(800,800);
  
}

void draw() {

    stroke(5);
  fill(255);
  quad(0, 500, width, 600,  width, height, 0, height); // x1, y1, x2, y2, x3, y3, x4, y4 -- This is also the ground
  
  quad(400,400, 430,200, 460,200, 460,400); // x1,y1, x2,y2, x3,y3, x4,y4 -- chimney
  rect(430,200,30,10); // chimneyTOP
  
  fill(base);
  rect(200,350,300,300); // x1,y1, width, height -- House's base
  
  fill(roof);
  quad(150,300, 550,350, 550,380, 150, 380); // x1,y1, x2,y2, x3,y3, x4,y4 -- Roof
  
  fill(window);
  rect(240,400,100,150); // x1,y1, wdith, height -- Window
  
  line(240,475, 340,475); // x1,y1, x2,y2 -- Window Lines1
  line(290,400, 290,550); // x1,y1, x2,y2 -- Window Lines2
  
  fill(door);
  rect(400,500,80,140); // x1,y1, width, height -- Door
  circle(470,580,8); // x1,y1-- Door Knob
  
  fill(staircase);
  quad(390,640, 490,640, 490,660, 360,660); // -- Staircase
  
  fill(bush);
  ellipse(600,580,100,50);
  ellipse(620,600,70,20);

  //chimney(400,400);
  //roof(150,300);
  
}

void house() {

  chimney(400,400);
  roof(150,300);
  
}

void chimney(float x, float y) {
  
  pushMatrix();
  translate(x,y);
  quad(0,0, 30,-200, 60,-200, 60,0); // x1,y1, x2,y2, x3,y3, x4,y4 -- chimney 0,0, 30,-200, 60,-200, 60,0 / 400,400, 430,200, 460,200, 460,400
  rect(30,-200, 30,10); // chimneyTOP 0,0, -400,-190 / 430,200,30,10
  popMatrix();
  
}

void roof(float x, float y) {
  
  pushMatrix();
  translate(x,y);
  quad(0,0, 400,50, 400,80, 0,80); // x1,y1, x2,y2, x3,y3, x4,y4 -- Roof / 0,150, 400,200, 400,80, 0,80 / 150,300, 550,350, 550,380, 150, 380
  popMatrix();
  
}

void window(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(window);
  rect(240,400,100,150); // x1,y1, wdith, height -- Window
  
  line(240,475, 340,475); // x1,y1, x2,y2 -- Window Lines1
  line(290,400, 290,550); // x1,y1, x2,y2 -- Window Lines2
  popMatrix();
  
}

void door() {

}

void chimney() {

}

void staircase() {

}
