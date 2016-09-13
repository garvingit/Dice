Die Di;
float mNum = 0.75 ;
void setup()
{
	
	size(400, 400);
	noLoop();
	textAlign(CENTER);

}
void draw()
{
	//code here
	for(int  y= 20; y<= 375; y+= 95)
	{
		for(int x = 20; x < 390; x+=95)
		{		
			Di = new Die(x, y);
			Di.roll();
			Di.show();
		}
	}
	
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
		value = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//your code here
		noStroke();
		// what happens if the dice value is 1,2,3,4,5,6
		if (value == 1)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			ellipse(myX+50*mNum, myY+50*mNum, 20*mNum, 20*mNum);
		}
		else if (value == 2)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			ellipse(myX+25*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+75*mNum, 20*mNum, 20*mNum);
		}
		else if (value == 3)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			ellipse(myX+25*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+50*mNum, myY+50*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+75*mNum, 20*mNum, 20*mNum);
		}
		else if (value == 4)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			ellipse(myX+25*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+75*mNum, 20*mNum, 20*mNum);
			ellipse(myX+25*mNum, myY+75*mNum, 20*mNum, 20*mNum);
			
		}
		else if (value == 5)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			ellipse(myX+25*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+25*mNum, 20*mNum, 20*mNum);
			ellipse(myX+75*mNum, myY+75*mNum, 20*mNum, 20*mNum);
			ellipse(myX+25*mNum, myY+75*mNum, 20*mNum, 20*mNum);
			ellipse(myX+50*mNum, myY+50*mNum, 20*mNum, 20*mNum);
		}
		else if (value == 6)
		{
			fill(255);
			rect(myX, myY, 100*mNum, 100*mNum, 20);
			fill(0);
			for(int y = 20; y <= 80; y+=30)
			{
				for(int x = 25; x<=75; x+=50)
				ellipse(myX+x*mNum, myY+y*mNum, 20*mNum, 20*mNum);
			}
		}
	}
}

