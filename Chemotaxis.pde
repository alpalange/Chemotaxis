Walker[] jsIsBetter;
Flower[] slay;
void setup(){
  size(400,400);
  slay = new Flower[4];
  for(int i = 0; i < slay.length;i++){
    if (i%2 ==0){
      slay[i] = new Flower(i*40+40,385);
    }
    else {
    slay[i] = new Flower(i*38+50,375);
    }
  }
  jsIsBetter = new Walker[10];
  for(int i = 0; i < jsIsBetter.length;i++){
    jsIsBetter[i] = new Walker();
  }
}

void draw(){
  background(160,215,245);
  for(int i = 0; i < slay.length;i++){
    slay[i].show();
  }
  for(int i = 0; i < jsIsBetter.length;i++){
    jsIsBetter[i].show();
    jsIsBetter[i].walk();
  }
}

class Walker {
  int x,y;
  Walker(){
    x = 360;
    y = 100;
  }
  void walk(){
    if(x>200){
      x= x+(int)(Math.random()*10)-6;
    }
    else if(x<20){
      x= x+(int)(Math.random()*10)-3; 
    }
    else x= x+(int)(Math.random()*9)-4;
    
    if(y<320){
      y= y+(int)(Math.random()*10)-3;
    }
    else if(y>390){
      y= y+(int)(Math.random()*10)-6; 
    }
    else y= y+(int)(Math.random()*9)-4;
  }
  void show(){
    noFill();
    stroke(70);
    ellipse(x+5,y-9,15,23);
    ellipse(x-5,y-9,15,23);
    fill(255,235,160);
    ellipse(x,y,40,20);
    fill(70);
    rect(x-6,y-10,5,20);
    rect(x+4,y-10,5,20);
    ellipse(x-13,y-2,3,3);
  }
}

class Flower {
  int mx, my;
  Flower(int x,int y){
    mx = x;
    my = y;
  }
  void show() {
    fill (100,200,100);
    ellipse(mx+8, my+10, 15,6);
    rect(mx,my, 4, 25);
    fill(255,150,100);
    ellipse(mx+2,my-10, 20,20);
    fill(255,100,100);
    ellipse(mx+2,my-15,15,10);
    ellipse(mx+2,my-14,9,14);
    fill(255,150,150);
    ellipse(mx+2,my-6,10,13);
    
  }
}
