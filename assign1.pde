/* please implement your assign1 code in this file. */
PImage fighter,enemy,treasure,hp,bg1,bg2;

int x,hpr,trex,trey,bgx,bgy;


void setup () {
  size(640,480) ;  
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  treasure=loadImage("img/treasure.png");
  hp=loadImage("img/hp.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  hpr= floor(random(420,606));
  trex=floor(random(30,610));
  trey=floor(random(30,450));
  bgx=0;
  bgy=-640;
  
  
}

void draw() {
  image(bg2,bgy,0);
  image(bg1,bgx,0);           
  bgx+=4;
  bgy+=4;
  if(bgx==640){
    bgx=-640;
  }
  if(bgy==640){
    bgy=-640;
  }
  
  
  image(fighter,540,240);    //ship
  image(enemy,x,120);        //moving enemy
  x+=1;
  x%=640;
  rectMode(CORNERS);
  fill(255,0,0);
  rect(410,50,hpr,30);       //random hp
  image(hp,400,30);          //hp gauge
  image(treasure,trex,trey); //treasure
  
}
