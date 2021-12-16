package thread.threadTest1;

public class Animal implements Runnable {

	String crySound;
	
	
	
	public Animal( String crySound) {


		this.crySound = crySound;
	}



	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			
			System.out.println(Thread.currentThread().getName()+" "+crySound);
		}
		
	}

}
