float locx,locy;
float velx,vely;
float accx,accy;

int sz=50;

void setup(){
  size(1000,800);
  colorMode(HSB,360,100,100,100);
  locx=width/2;
  locy=height/2;
  velx=0;
  vely=0;
  accx=0;
  accy=0;
}

void draw(){
  locx+=velx;
  locy+=vely;
  velx=constrain(velx,-3,3);
  vely=constrain(vely,-3,3);
  
  velx+=accx;
  vely+=accy;
  
  noStroke();
  fill(frameCount%360,100,100);
  ellipse(locx,locy,sz,sz);
  
  if(locx>width+sz/2){
    locx=-sz/2;
  }
  if(locx<-sz/2){
    locx=width+sz/2;
  }
  if(locy>height+sz/2){
    locy=-sz/2;
  }
  if(locy<-sz/2){
    locy=height+sz/2;
  }
}

void keyPressed(){
  if(key=='w'){
    accy+=-.1;
  }
  if(key=='s'){
    accy+=.1;
  }
  if(key=='a'){
    accx+=-.1;
  }
  if(key=='d'){
    accx+=.1;
  }
}
