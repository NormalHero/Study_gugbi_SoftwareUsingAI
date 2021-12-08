package ambiguity;

public class ClassC  implements InterA, InterB{
// 상황 1 
	@Override
	public void printData() {
		// TODO Auto-generated method stub
		InterA.super.printData();
//		InterB.super.printData();
	}
	
}
