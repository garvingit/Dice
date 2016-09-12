Die Di;
void setup()
{
	
	size(400, 400);
	noLoop();
	textAlign(CENTER);

}
void draw()
{
	//code here
	Di = new Die(50, 150);
	Di.roll();
	Di.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int value;
	int myX,myY;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		// how it rolls
		value = (int)(Math.random())+1;
	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
		rect(myX, myY, 100*3/4, 100*3/4, 20);
		fill(0);
		// what happens if the dice value is 1,2,3,4,5,6
		if (value == 1)
		{
			ellipse(myX+50*3/4, myY+50*3/4, 20*3/4, 20*3/4);
		}
		else if (value == 2)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
		}
		else if (value == 3)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+50, myY+50, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
		}
		else if (value == 4)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+25, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
			ellipse(myX+25, myY+75, 20, 20);
			
		}
		else if (value == 5)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+25, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
			ellipse(myX+25, myY+75, 20, 20);
			ellipse(myX+50, myY+50, 20, 20);
		}
		else if (value == 6)
		{
			for(int y = 20; y <= 80; y+=30)
			{
				for(int x = 25; x<=75; x+=50)
				ellipse(myX+x, myY+y, 20, 20);
			}
		}
	}
}

