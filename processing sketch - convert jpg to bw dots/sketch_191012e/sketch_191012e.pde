PImage img1;
PImage img2;
float grey;
color c;
int res = 10;
float contrast = 2;

void setup() {
  size(1696, 954);
  img1 = loadImage("img.jpg");
  surface.setSize(img1.width,img1.height);
  noStroke();
  imageMode(CENTER);
  background(255);
  noLoop();
  colorMode(RGB,1);
  fill(0);
  pixelDensity(2); // if retina display
}

void draw() {
  for(int x = 1; x <= img1.width; x+=res) {
    for(int y = 1; y <= img1.height; y+=res) {
      c = img1.get(x, y);
      grey = (red(c)+green(c)+blue(c))/3;
      //fill(grey);
      //rect(x,y,res,res);
      float n = res*contrast-map(grey,0,1,0,res*contrast);
      ellipse(x+res/2,y+res/2,n,n);
    }
  }
  println("fini !");
}
