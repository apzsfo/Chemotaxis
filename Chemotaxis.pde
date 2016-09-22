Bacteria [] colony;
 void setup()   
 { 
 size(500, 500);
 colony = new Bacteria[220];
 for(int i = 0; i < colony.length; i++)
 {
 	colony[i] = new Bacteria();
 }
     
 }   
 void draw()   
 {    
 	background(5, 70, 70);
 	for(int j = 0; j<colony.length; j++)
 	{
 		colony[j].move();
 		colony[j].show();
 	}
 	}
 	class Bacteria
 	{
 		int bX, bY, bColor;
 		Bacteria()
 		{
 			bX = (int)(Math.random()*40)+250;
			bY = (int)(Math.random()*40)+250;
			bColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
 		}
 		void move()
 		{
 			int bXi = (int)(Math.random()*5)-2;
 			int bYi = (int)(Math.random()*5)-2;
 		
 		bX += bXi;
 		bY += bYi;

 	}  
 	void show()
 	{
 		noStroke();
 		fill(bColor);
 		ellipse(bX, bY, 15, 12);
 	}
 }  
 