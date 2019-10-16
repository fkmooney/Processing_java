//Raven Kwok | 郭锐文
//Email: raystain@gmail.com
//Blog: the-moor.blogbus.com
//Vimeo: vimeo.com/ravenkwok
//Weibo: weibo.com/ravenkwok

Particle [] particles;

void setup() {
  background(255);
  size(600, 600);
  frameRate(30);
  smooth();
  particles = new Particle [3];
  for(int i=0;i<particles.length;i++){
    particles[i] = new Particle();
  }
}
void draw() {
  for(int i=0;i<particles.length;i++){
    particles[i].run();
    particles[i].display();
    particles[i].update();
  }
}
