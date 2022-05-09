package com.example.jpa.domain.vo;

import lombok.*;

import javax.persistence.*;

// @Entity
// JAP에서 관리핟록 설정하는 어노테이션
// 해당 클래스를 Mapping할 때 Entity명을 사용하게 되며, 이는 name속성에 설정한다. 
// 만약 name 속성을 생략하면 클래스명이 Entity명으로 사용된다. 

// @Table 
// Mapping할 테이블을 지정한다 

// 오라클에서 SEQUENCE를 생성했다면
// @SequenceGenerator를 통해 SEQUENCE를 등록할 수 있다. 
// name에는 RDB에서 생성한 SEQUENCE의 이름을 작성하고,
//  allocationSize에는 증감량을 작성한다. 기본 값이 1이 아니므로 1을 직접 설정해야 한다 


@Entity // jpa에서 관리할때 사용
@Table(name = "TBL_MEMBER") // RDB 연결
@SequenceGenerator(name = "SEQ_MEMBER", allocationSize = 1) 

/*레포지터리어노테이션을 따로 사용하지 않음*/
@Getter // Setter를 사용하는 것 보다 Builder Pattern을 사용하는 것이 일관성에 더 좋다. ( Setter로 초기화를 하면, 아직 다 초기화되지 않은 상태에서 객체가 만들어지기 때문)
@ToString // 세터어노테이션을 따로 사용하지않음
@NoArgsConstructor // 기본생성자 , JPA의 Entity를 사용할 때에는 기본 생성자가 반드시 필요하다.
public class MemberVO { // 모델객체
    @Id // PK에 해당 , PK인 필드에 작성한다.
//    SEQUENCE를 사용한 필드에 사용하며, 클래스에 작성된 @SequenceGenerator의 name을 generator에 등록해야 한다.
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_MEMBER") // 시퀀스임을 알려주고 연결
//  RDB에서 선언된 컬럼명을 작성하여 클래스의 필드와 연결해준다.
    @Column(name ="MEMBER_NUMBER")
    private Long memberNumber;
    @Column(name ="MEMBER_ID")
    private String memberId;
    @Column(name ="MEMBER_NAME")
    private String memberName;
    @Column(name ="MEMBER_BIRTH")
    private String memberBirth;

    // 의존성 주입을 위해 생성자 직접 생성
    // @Builder는 생성자로 초기화를 진행할 때 간결한 소스코드로 초기화를 진행할 수 있다.
    // 하지만 클래스에 @Builer를 사용하게 되면 @NoArgsConstructor와 같이 사용할 때 오류가 발생한다.
    // 그렇다고 해서 @AllArgsConstructor를 사용하게 되면 변수의 순서를 변경할 때 생성자의 입력 값 순서도 변경되므로
    // 다른 개발자가 찾기 힘든 오류가 발생할 수도 있다.
    // 따라서, Builder를 사용할 떄에는 직접 생성자를 선언하여 생성자에 @Builder를 붙여준다.

    @Builder // 빌더 패턴
    public MemberVO(Long memberNumber, String memberId, String memberName, String memberBirth) {
        this.memberNumber = memberNumber;
        this.memberId = memberId;
        this.memberName = memberName;
        this.memberBirth = memberBirth;
    }
}
