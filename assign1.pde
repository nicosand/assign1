PImage fighterImg, treasureImg, enemyImg, hpImg, bg1Img, bg2Img;
int x = floor(random(195));
int y = 20 + x;
int m = floor(random(600));
int n = floor(random(440));
int i = 0;
int j = floor(random(420));
int k = 0;
int l = -640;

void setup(){
  size(640,480);
  
  fighterImg = loadImage("img/fighter.png");
  treasureImg = loadImage("img/treasure.png");
  enemyImg = loadImage("img/enemy.png");
  hpImg = loadImage("img/hp.png");
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
}

void draw(){
  background(0);
  //bg
  image(bg1Img,k,0);
  k = k+2;
  if(k>639){
    k = -640;
  }
  println(k);
  
  image(bg2Img,l,0);
  l = l+2;
  if(l>639){
    l = -640;
  }
  
  //fighter
  image(fighterImg,585,210);
  
  //treasure
  image(treasureImg,m,n);
  
  //enermy
  image(enemyImg,i,j);
  i = i+3;  
  i %=640;
  
  // hp
  stroke(#ff0000);
  fill(#ff0000);
  rectMode(CORNERS);
  rect(20,12,y,30);
  image(hpImg,10,10);
}
