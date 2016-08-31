int startX = 250; //Lightning Variables
int startY = 0;
int endX = 250;
int endY = 0;


void setup()
{
	background(10);
	size(500,500);
	strokeWeight(3);
}
void draw()
{
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //Lightning color

	line(startX,startY,endX,endY); //Drawing the Lightning
	startX = endX; 				   //Making sure the lightning connects
	startY = endY;
	endX = endX + (int)(Math.random()*40) - 19; //Randomly drawing the lightning
	endY = startY + (int)(Math.random()*20);
 /*
	if(endY == 500)
		background(50,0);
	else {
		background(10,0);
	}
*/

}
void mousePressed()
{
	background(10); // reset
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;
}

