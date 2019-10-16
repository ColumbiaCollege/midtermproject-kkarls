void restart() {
  //Shift key restarts the game.  
  //Once reset everything goes back to the beginning...
  //...and apple chooses it's new spot. 
  //Always reset the background, or else... 
  //...images will display on top of each other.
  background(187, 240, 150);
  headx[1]=200;
  heady[1]=200;
  for (int i=2; i<1000; i++)
  {
    headx[i]=0;
    heady[i]=0;
  }
  GAMEOVER=false;
  foodx=(int(random(40))+8)*10;
  foody=(int(random(40))+8)*10;
  snakelength=5;
  time=0;
  direction=0;
  restart=true;
}
