package bakery;

public class BreadMaker implements Runnable{
// 자원을 만든다 
//	private boolean exit;
//	
//	
//	
//	 public boolean isExit() {
//		return exit;
//	}
//
//
//
//	public void setExit(boolean exit) {
//		this.exit = exit;
//	}



	@Override
	public void run() {
		 
		
		 for (int i = 0; i < 20; i++) {
//			 if(exit) {break;}
			 
			 try {Thread.sleep(500);} catch (InterruptedException e) {break;}
			BreadPlate.getInstance().makeBread(); // 싱글톤 -> 어디서 사용해도 같은 주소 
			try {Thread.sleep(500);} catch (InterruptedException e) {break;}
		}
//		 if(!exit) {
		 System.out.println("재료소진");
//		 }
	}

}
