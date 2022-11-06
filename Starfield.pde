Particle[] Starfield= new Particle[1010];
boolean first=false;
void setup()
{
  size(1000,1000);
  background(0,0,0);
}
void draw()
{
 
  if(first){
    background(0,0,0);
    for(int i=0;i<1010;i++){
      Starfield[i].move();
      Starfield[i].show();
    }
  }
}
class Particle
{
  int c;
  double x,y,a,s;
  Particle(){
    x=500.;
    y=500.;
    a=Math.random()*2*PI;
    c=color((int)(Math.random()*205+50), (int)(Math.random()*205+50), (int)(Math.random()*205+50));
    s=Math.random()*20.;
  }
  void move(){
    x+=Math.cos(a)*s;
    y+=Math.sin(a)*s;
  }
  void show(){
    fill(c);
    ellipse((float)x,(float)y,5.0,5.0);
  }
}

class OddballParticle extends Particle{
    OddballParticle(){
    x=500.;
    y=500.;
    a=Math.random()*2*PI;
    c=color((int)(Math.random()*105+50), (int)(Math.random()*105+50), (int)(Math.random()*105+50));
    s=Math.random()*10.;
  }
  void move(){
    x+=Math.cos(a)*s;
    y+=Math.sin(a)*s;
  }
  void show(){
    fill(c);
    ellipse((float)x,(float)y,25.0,25.0);
  }
}
 void mouseClicked(){
   for(int i=0;i<1000;i++){
     Starfield[i]= new Particle();
   }
   for(int i=1000;i<1010;i++){
     Starfield[i]= new OddballParticle();
   }
   first=true;
   redraw();
 }
