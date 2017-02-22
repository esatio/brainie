package  
{
	
	public class Player 
	{

		public var count : int = 0;
		//public var score : int = 0;		
		public var correct:Boolean;
		
		var vectorBall :Vector.<Bubble> = new Vector.<Bubble>;
		public var ball :Bubble = new Bubble();

		public function Player() 
		{
			correct = true;
		}
		
		//untuk pengganti soritng, mungkin salah di sini....
		public function isCorrect(i:int):Boolean
		{
			if(i == count)
			{
				correct = true;
				return correct;
			}
			else if(i != count)
			{
				correct = false
				return correct;
			}
			else
			{
				return false;
			}
		}
		//generate random ball, dengan posisinya yang acak juga....
		public function generate(j:int):Vector.<Bubble>
		{
			for(var i : int = 0; i<j; i++)
			{
				var myBall :  Bubble = new Bubble();
				
				var kodeGambar : int = (Math.round(Math.random()*100)%3)+1;
				myBall.setImage("gambar"+kodeGambar.toString()+".png");
				vectorBall.push(myBall);
				
				vectorBall[i].setDir();
				vectorBall[i].x = Math.random()*320;
				vectorBall[i].y = Math.random()*240;
				
				if(i == 0)
					vectorBall[i].number = Math.round(Math.random()*20);
				else
					vectorBall[i].number = vectorBall[i-1].number + Math.round(Math.random()*10);
			}
			return vectorBall;
		}
	
	}
}