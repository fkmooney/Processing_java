class RotatingBlock {
   
  PVector loc;
  float xDelta, rotationDelta, rotation;
  int w, h;
  color c;
  
  RotatingBlock() {
    this.xDelta = random(1, 18);
    this.rotation = random(0, 360);
    this.w = width/10;
    this.h = w/4;
    this.loc = new PVector(random(-width/2, -w), random(-(w*3),height+(w*3)));
    this.rotationDelta = random(1, 5);
    this.c = randomColor();
  }
  
  boolean isAlive() {
    return loc.x < (width + w);
  }

  void update() {
    loc.x += xDelta;
    rotation += rotationDelta;
  }
  String textbox_says = "Happy Birthday Laura!";
  
  void display() {
    strokeWeight(0);
    stroke(0);
    fill(c);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(radians(rotation));
    translate(-w/2, -h/2);
    rect(0,0,w,h);
    textFont(createFont("Arial",16,true), 20);   //controlling text attributes
    text(textbox_says,300,300); // displaying text
    popMatrix();
  }
}
