int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
	background(0);
	size(300,500);
	strokeWeight(3);
	frameRate(10);
}
void draw()
{
	//while(startY < 300) {
		startX = endX;
		startY = endY;
		endY = endY + (int)(Math.random()*20) + 10;
		startY = startY + (int)(Math.random()*10);
	//}
stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
line(startX,startY,endX,endY);


}
void mousePressed()
{

}

