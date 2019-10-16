
//displays snake and apple
//If the Snake head meets up to the apple, it will eat the apple. 
//If apple eatan, Snake will grow randomly by 4 but multiply by 2 to get longer quicker.
void display() {  
  if (headx[1]==foodx && heady[1]==foody) { 
    snakelength = snakelength + int(random(4)*2);
    //When apple it eatan, it will display somewhere else.
    restart=true;
    while (restart) {
      foodx=(int(random(40))+8)*10;
      foody=(int(random(40))+8)*10;
      for (int i=1; i<snakelength; i++) {     
        if (foodx==headx[i] && foody==heady[i]) {
          restart=true;
        } else {
          restart=false;
        }
      }
    }
  }

  //Snakes head is a bit bigger than the apple to eat it all.
  //Begins with a new head.
  //background(187, 240, 150);
  //stroke(187, 240, 150);
  noStroke();  
  fill(111, 92, 234); 
  ellipse(headx[1], heady[1], 12, 12);
  fill(187, 240, 150);
  ellipse(headx[snakelength], heady[snakelength], 20, 20);
}
