int startX = 250; //lightning Variables
int startY = 0;
int endX = 250;
int endY = 0;


void setup()
{
	size(500,500);
	background(0);
	strokeWeight(3);
}
void draw()
{
	noStroke();
		if (endY > 480 && endY < 600)
	{
		fill(250,250,250);
	} else {
		fill(63,63,63,1);
		delay(1000);
		fill(63,63,63,);
	}
	rect(0,0,500,500);
	
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //lightning color

	line(startX,startY,endX,endY); //Drawing the lightning
	startX = endX; 				   //Making sure the lightning connects
	startY = endY;
	endX = endX + (int)(Math.random()*40) - 19; //Randomly drawing the lightning
	endY = startY + (int)(Math.random()*20);


}
void mousePressed()
{
	background(0); // reset
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;
}

