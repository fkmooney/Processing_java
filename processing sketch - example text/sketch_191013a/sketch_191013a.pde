PFont f;

void setup() {
  size(400,200);
  f = createFont("Verdana Bold",50,true);
  textFont(f);       
  fill(255);
}

void draw() {
  background(0);
  textAlign(CENTER);
  text("THIS IS TEXT",width/2,height/2); 


}
