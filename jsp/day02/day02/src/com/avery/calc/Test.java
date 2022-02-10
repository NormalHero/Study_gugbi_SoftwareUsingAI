package com.avery.calc;

public class Test {
	public static void main(String[] args) {
			
//		for (int i = 0; i < 5; i++) {
//			
//			for (int j=i; j<5; j++) {
//				System.out.print("□");
//			}
//			System.out.println();
//		}
//		for (int j = 0; j < 5; j++) {
//			
//			for (int i = 0; (5-j)<=5; i++) {
//
//				System.out.print("□");
//			}
//			System.out.println();
//		}
		
		for (int i = 0; i < 5; i++) {
            for (int j = 0; j <= i; j++) {
                System.out.print("□");
            }
            System.out.println();
		}
		
		System.out.println(1+1+(1+1)+"");
		
		for (int i = 0; i < 5; i++) {
			
			for (int j = 0; (i+j)<5; j++) {

				System.out.print("□");
			}
			System.out.println();
		}
		
		
	}
}
