int startX = 250; //lightning Variables
int startY = 0;
int endX = 250;
int endY = 0;

int xFollow = 0;

void setup()
{
	size(500,1000);
	background(0);
	strokeWeight(3);
}
void draw()
{
	noStroke();
	if (endY > 980 && endY < 1050)
	{
		fill(250,250,250);
	} else {
		fill(63,63,63,10);
	}
	rect(0,0,500,1000);

	if (mouseX > 250)
	{
		xFollow = (mouseX/100);
	} else if (mouseX < 250) {
		xFollow = -((500-mouseX)/100);
	} else {
		xFollow = 0;		
	}
	
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //lightning color

	line(startX,startY,endX,endY); //Drawing the lightning
	startX = endX; 				   //Making sure the lightning connects
	startY = endY;
	endX = endX + (int)(Math.random()*40) - 19 + xFollow; //Randomly drawing the lightning
	endY = startY + (int)(Math.random()*20);

	if(endY > 1050) {
		startX = 250;
		startY = 0;
		endX = 250;
		endY = 0;
	}

}
void mousePressed()
{
	background(0); // reset
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;
}

