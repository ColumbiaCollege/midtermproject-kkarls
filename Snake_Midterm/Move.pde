//When snake is moved it has to know it's new position.  
void move() {
  //Loop for the creation of snake.
  for (int i=snakelength; i>0; i--)  
  {
    //If i is NOT equal to 1 something will happen.
    if (i!=1)
    {
      //All coordinates will shift back one array.
      headx[i]=headx[i-1];
      heady[i]=heady[i-1];
    } else {
      //Case labels happen if the switch parameter matches.
      //Found these easier than listing everything seperately.
      //Shows which way and how to move when at that direction.
      //move new spot for the head of the snake, which is always at headx[1] and heady[1].
      switch(direction) {
      case 0:
        headx[1]+=10;
        break;
      case 90:
        heady[1]-=10;
        break;
      case 180:
        headx[1]-=10;
        break;
      case 270:
        heady[1]+=10;
        break;
      }
    }
  }
}
