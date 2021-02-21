int size = 40;
int point =0;
int [] [] board= new int[25][25];
Player player;
Enemy []enemy;
Food []food;

void setup()
{
   size(1001, 1001);
   frameRate(1);
   player = new Player();
   enemy = new Enemy [4];
   food = new Food [4];
   for(int i =0; i<enemy.length; i ++){
   enemy[i] = new Enemy(int(random(25)), int(random(25)),player);
   
   }
    for(int i =0; i<food.length; i ++){
   food[i] = new Food(int(random(25)), int(random(25)),player);
   
   }
}


void draw(){
drawBoard();
clearBoard();
player.drawPlayer(size);
player.movePlayer();
updateEnemies();
updateFood();
playerHealth();
playerScore();
if (player.health<0)
  {
    noLoop();
    textSize(50);
    text("Click to Restart", 300,400);
    textSize(15);
  }
  textSize(32);
  fill(0,200,255);
  text("score " + player.score ,10,30);
  
  
}
void clearBoard(){
 for (int i = 0; i < board.length; i++)
    {
        for (int j = 0; j < board[0].length; j++)
        {
            
          board[i][j]=0;
            
          
        }
    }


}
void drawBoard()
{
    for (int i = 0; i < board.length; i++)
    {
        for (int y = 0; y < board[0].length; y++)
        {
            
          rectMode(CENTER);
          fill(getColorFromType(board[i][y]));
            
            rect(i * size, y * size, size, size);
        }
    }
}
color getColorFromType(int type) 
{
    color c = color(255);
    
    switch(type)
    {
        case 0: 
            c = color(127);
            break;
        case 1: 
            c = color(255,0,0);
            break;
        case 2: 
            c = color(0, 255, 0);
            break;
        case 3: 
            c = color(0,0,255);
            break;
        case 4: 
            c = color (0,255,255);
            break;
            
    }    
    
    return c; 
}
void updateEnemies(){
  for(int i =0; i<enemy.length; i ++){
   board[enemy[i].x][enemy[i].y] = enemy[i].type;
    enemy[i].MoveTowardsPlayer();
   
}
}
void updateFood(){
  for(int i =0; i<food.length; i ++){
   board[food[i].y][food[i].x] = food[i].type;
    food[i].MoveAwayPlayer();
   
}
}

void playerHealth(){
for(int i =0; i<enemy.length; i ++){
  if(enemy[i].x == player.x && enemy[i].y == player.y){
   player.takeDamage();
    
  }
}
}
void playerScore(){
for(int i =0; i<food.length; i ++){
  if(food[i].x == player.x && food[i].y == player.y){
   player.increaseScore();
    
  }
}
}
