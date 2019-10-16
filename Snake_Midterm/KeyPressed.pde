//The controls to the game. Arrows on Keyboard.
//Snake will move only forward. It can not go back into itself.
//Almost as if it is moving in degrees. 
//90 degrees UP if it is coming from 270 degrees which is directly down. and vise versa.
//180 degrees LEFT if coming from RIGHT which is directly opposite at 0 degrees.
//SHIFT will call everything is the restart method. Game Starts Over.
//previous body segmant in front of direction.
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && direction!=270 && (heady[1]-10)!=heady[2])
    {
      direction=90; //^
    }
    if (keyCode == DOWN && direction!=90 && (heady[1]+10)!=heady[2])
    {
      direction=270;
    }
    if (keyCode == LEFT && direction!=0 && (headx[1]-10)!=headx[2])
    {
      direction=180;//<
    }
    if (keyCode == RIGHT && direction!=180 && (headx[1]+10)!=headx[2])
    {
      direction=0;//>
    }
    if (keyCode == SHIFT)
    {
      restart();
    }
  }
}
