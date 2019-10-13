Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

float ballX;

void setup() {
  size(1600, 1200);
  background(#43AF76);

  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc);
  myFlower2 = new Flower(_r1, _petals, _x+random(-100, 100), _y, _pc);
  myFlower3 = new Flower(_r1, _petals, _x+50, _y, _pc);
  
  myFlower1.xIncrease = true;
  myFlower2.yIncrease = true;
  myFlower3.xIncrease = true;
  myFlower3.yIncrease = true;

  //  myFlower2 = new Flower();
  //   myFlower3 = new Flower();
}

void draw() {
  background(#43AF76);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower1.movement();
  myFlower2.movement();
  myFlower3.movement();
  myFlower1.skyrimBorders();
  myFlower2.skyrimBorders();
  myFlower3.skyrimBorders();
  //noLoop();
}
