package obj;

public class EqualsTask {
   public static void main(String[] args) {
      Student std = new Student(1, "박민수");
      //과제
      // 학생의 번호가 같다면 true가 나올수 있도록 equals()를 재정의 하기 
      // 주소비교 - 타입 비교 - 다운 캐스팅 - 번호 비교 이후 true;
  
      System.out.println(std.equals(new Student(1, "박민수")));
   }
}