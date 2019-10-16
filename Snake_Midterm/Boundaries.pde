//This marks the end of the game. 
//It checks if the snake is dead or alive.
//Keeps the snake inside the marked game lines. 
void boundary() {
  for (int i=2; i<=snakelength; i++)
  {
    //If the head of the snake eats its tail, it dies.
    //Game over is true and the end screen appears.
    if (headx[1]==headx[i] && heady[1]==heady[i])
    {

      fill(0);
      text("GAME OVER", 300, 250);
      text("Snake Growth:" + (snakelength-1), 300, 275);
      text("Press RETURN to RESTART", 300, 305);
      GAMEOVER=true;
    }
    //ALSO...
    //Snake borders. Should stay on screen. 
    //If snake touches any of the edges it dies and game over screen shows up.
    //If snake head 'x,y' coordinates are withing the game borders.
    //If snake touches the edges it fill die and game will give option to start over.
    if (headx[1]>=(width-40) || heady[1]>=(height-40) || headx[1]<=(width-560) || heady[1]<=(height-560))
    {
      //Text that appears when snake is out of bound.
      fill(0);  
      textSize(30);
      text("GAME OVER", 300, 250);
      text("Snake Growth:" + (snakelength-1), 300, 275);
      text("Press SHIFT to RESTART", 300, 305);
      //If everything above happens, gameover would be true. 
      GAMEOVER=true;
    }
  }
}
