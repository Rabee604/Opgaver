class Enemy {

  int x;
  int y;
  int type= 1;
  Player player;

  Enemy(int x, int y, Player player) {

    this.x=x;
    this.y=y;
    this.player=player;
  }
  void MoveTowardsPlayer() {
    int xMove = Math.abs(player.x - x);
    int yMove = Math.abs(player.y - y);
    // random chance (~25% chance) for at enemy flytter sig i en tilfældig retning. 

    
    if (xMove > yMove && player.x>x && x<24)

    {
      x++;
    } else if ( xMove > yMove && player.x<x && x>0) {
      x--;
    } else if ( yMove > xMove && player.y>y && y<24) {
      y++;
    } else if ( yMove > xMove && player.y<y && y>0) {
      y--;
    }
  }
}
