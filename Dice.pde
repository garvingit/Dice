di
void setup()
{
	size(400,400);
	noLoop();
	textAlign(CENTER);

}
void draw()
{
	Die Di = new Die(200,200);
	Di.show();
	//your code here
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
		value = (int)(Math.random()*5);
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		fill(250);
		rect(myX,myY,50,50,10);
		if (value == 0)
		{
			text("1",myX,myY);
		}
		else if (value == 1)
		{
			text("2",myX,myY);
		}
		else if (value == 2)
		{
			text("3",myX,myY);
		}
		else if (value == 3)
		{
			text("4",myX,myY);
		}
		else if (value == 4)
		{
			text("5",myX,myY);
		}
		else if (value == 5)
		{
			text("6",myX,myY);
		}
	}
}
}
