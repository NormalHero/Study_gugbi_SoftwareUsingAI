package realStock;

import java.util.Scanner;

import javax.swing.JOptionPane;

public class StockMarket {
   public static void main(String[] args) {
      String[] btns = {"매도하기", "나가기"}; 
      int choice  = 0;
      Scanner sc = new Scanner(System.in);
      Bank user = new Bank(); // 뱅크 객체를 만든다 
      Thread t = new Thread(user); // Runnable을 implements한 user객체를 쓰레드로 생성
      
      System.out.println("투자액 : ");  
      user.depositMoney = sc.nextInt(); // 투자할 금액을 입력받는다
      if(user.depositMoney > 0) { // 투자할 금액이 0보다 크면 
         user.stockMoney = user.depositMoney; // 주식에서 돌려질 금액을 넣어준다.
         t.start(); // 쓰레드 실행
         while(true) {
            choice = JOptionPane.showOptionDialog(null, "인생은 주식이다.", "주식마켓", JOptionPane.DEFAULT_OPTION,
                  JOptionPane.PLAIN_MESSAGE, null, btns, null);
            
            if(choice == 1) {
               System.exit(0); // 쓰레드를 전체 종료
            }
            
            if(choice == 0) {
               t.interrupt(); // interrupt발생 시켜서 catch문으로 종료시킨다,
               try {t.join();} catch (InterruptedException e) {;} // 쓰레드속도가 너무 빨라서 순서가 왔다갔다 하기 때문에 조인으로 일정하게 해준다. 
               user.sell(); // 주식 판매 
               break;
            }
         }
      }
   }
}