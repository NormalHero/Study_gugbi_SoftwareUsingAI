package com.example.ex00.dependency;

import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Data
//@ToString
//@Getter
// @AllArgsConstructor   // 전체 필드를 초기화하는 생성자를 선언한다.
@RequiredArgsConstructor // final 또는 @NonNull이 붙은 필드만 초기화 생성자로 선언한다.
public class Coding {
    // Computer computer = new Computer(); // Java 방식

    // 필드 주입 @Autowired
    // 굉장히 편하게 주입할 수 있으나 순환 참조(무한 루프)시 오류가 발생하지 않기 때문에 StackOverFlow 발생.
    // new는 heap 영역에 할당되는데 메모리는 가변형으로 Stack의 라인에 닿으면 StackOverFlow가 발생된다.
    // 그래서 StackOverFlow가 발생하기전까지 오류를 미리 찾을 수 없음
    // final을 붙일 수 없기 때문에 다른 곳에서 변형(개발자) 가능
    // 인터페이스는 반드시 필드 주입을 사용해야 한다.
    //  @Autowired
    //private Computer computer;

    private  final Computer computer; // 생성자 주입시 이미 값이 들어간 상태이므로 final이 가능하다

    // 생성자 주입
    // 순환 참조시 컴파일러가 인지를 할 수 있다.
    // new를 하고 나서 생성자가 생성되기 때문에
    // StackOverFlow 발생하지 않고, 미리 오류 발생
    // 메모리에 할당하면서 초기값으로 주입되므로 final 키워드 사용 가능, 다른 곳에서 변형(개발자) 불가능(안전).
    // 의존성 주입이 되지 않으면 객체가 생성되지 않으므로 NPE 방어(null pointer Exception)
//    @Autowired
//    public Coding(Computer computer) {
//        this.computer = computer;
//    }


    // alt + insert  제너레이트키
    // setter 주입
    // final을 붙일 수 없기 때문에 다른 곳에서 변형(개발자) 가능
    // 외부에서 직접 주입(spring)이 가능함
/*    @Autowired
    public void setComputer(Computer computer) {
        // 추가 로직을 추가하는것도 가능함
        this.computer = computer;
    }*/

    // 생성자와 메소드의 차이
    // 시점
    // 객체의 변경 유무

    // IOC 컨테이너
    // IOC 제어의 역전
    // 제어를 개발자가 아닌 Spring에서 하게 됨 -> @Component 어노테이션 사용



}
