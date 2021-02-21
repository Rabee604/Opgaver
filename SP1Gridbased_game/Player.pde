class Player {
  int x;
  int y;
  int health;
  int type=3;
  int score;

  Player() {

    this.x= 0;
    this.y=0;
    this.health= 100;
    this.score =0;
  }

  void takeDamage() {
    health--;
  }
  void increaseScore() {
    score++;
  }
  
  void drawPlayer(int z ){
  fill(0,0,255);
  rect(x*40,y*40,z,z);
  
  }
  void movePlayer(){
  //Down
    if (key == 'a' && y<24){
    y++ ;
    //UP
  } else if (key == 'q'&& y>0){
    y--;
  //LEFT
  }else if (key == 's'&& x<24){
    x++;
  
  //RIGHT
  }else if (key == 'w'&& x>0){
    x++;
  
}

}
}
