package thread.threadtest2;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.stream.IntStream;

public class ThreadTask  {
	public ThreadTask() {;}

	public void printFirst(Runnable first) {
		first.run(); // 수정금지
	}

	public void printSecond(Runnable Second) {
		Second.run(); // 수정금지
	}

	public void printThird(Runnable Third) {
		Third.run(); // 수정금지
	}

	public static void main(String[] args) {

		ThreadTask tt = new ThreadTask();	
		ArrayList <Runnable> runNum = new ArrayList<>();
		Runnable[] arRun = {
				new Runnable() {

					@Override
					public void run() {
						System.out.println("first");

					}
				},
				new Runnable() {

					@Override
					public void run() {
						System.out.println("second");

					}
				},
				new Runnable() {

					@Override
					public void run() {
						System.out.println("third");

					}
				}
		};
		
		Scanner sc = new Scanner(System.in);
		int choice = 0;
		for (int i = 0; i < arRun.length; i++) {
			System.out.println(i+1+"번째 실행할 스레드 번호 :");
			choice = sc.nextInt();
			if (choice == 1) {
				tt.printFirst(arRun[i]);
			}else if(choice ==2 ) {
				tt.printSecond(arRun[i]);
			}else if(choice == 3) {
				tt.printThird(arRun[i]);
			}

		}


	}


}
