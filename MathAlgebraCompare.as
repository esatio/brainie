package  {
	
	public class MathAlgebraCompare 
	{
		
		public var myMat:MathAlgebra = new MathAlgebra();
		public function MathAlgebraCompare() 
		{

		}
		
		
		
		public function compare():int
		{
			if(myMat.operand1 > myMat.operand2)
				return 1;
			else if(myMat.operand1 == myMat.operand2)
				return 2;
			else if(myMat.operand1 < myMat.operand2)
				return 3;
			else
				return 0;
		}
		
		
		public function compareTwo(mat2:MathAlgebra):int
		{
			if(myMat.correctRes > mat2.correctRes)
				return 1;
			else if(myMat.correctRes == mat2.correctRes)
				return 2;
			else if(myMat.correctRes < mat2.correctRes)
				return 3;
			else
				return 0;
		}
		
		public function compareThree(myNum:int):int
		{
			if(myMat.correctRes > myNum)
				return 1;
			else if(myMat.correctRes == myNum)
				return 2;
			else if(myMat.correctRes < myNum)
				return 3;
			else
				return 0;
		}
		
		
	}
	
}
