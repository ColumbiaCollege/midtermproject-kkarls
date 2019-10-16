//Karla Medina 
//Midterm Game
//Youtube References: The Coding Train, & KTByte
//Other References: API, Processing Cheat Sheet document


//These are the variables necessary to plot...
//...the game movements and boundaries.
int direction=0;
int snakelength=4;
int time=0;
int foodx=(5);
int foody=(5);
//int foody=(int(random(47))+1)*10;
int[] headx= new int[5000];
int[] heady= new int[5000];
boolean restart=true;
boolean GAMEOVER=false;  

void setup() {
  restart();
  background(187, 240, 150);
  size(600, 600);
  textAlign(CENTER);
}

void draw() {
  //Black lines that form a square on the screen. 
  stroke(0);
  strokeWeight(8);
  line(width-560, height-560, width-560, height-40);//right
  line(width-40, height-560, width-40, height-40);//left
  line(width-560, height-560, width-40, height-560);//up
  line(width-560, height-40, width-40, height-40);//down 
  //maybe have its own method
  //If the game is over, NOTHING will happen.
  //Otherwise the apple will move around the screen.
  if (GAMEOVER)          
  {
  } else {
    time++;    
    //gameplay();
    //All that is displayed is the apple moving around.
    //The apple is red with no stroke around it.
    fill(255, 0, 0);
    noStroke();
    ellipse(foodx, foody, 10, 10);
    //framerate && how fast the snake is moving
    //'Create artificial frames'. 
    //If number is too high, apple will go way to slow. 
    //If the number is too low, apple will move to fast.
    if ((time % 4)==0)
    {
      //Call the methods made //for each things displayed or us//ed. 
      display();
      move();
      boundary();
    }
  }
}
