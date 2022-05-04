package com.example.jpa.domain.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity // jpa에서 관리할때 사용
@Table(name = "TBL_MEMBER") // RDB 연결
@SequenceGenerator(name = "SEQ_MEMBER", allocationSize = 1) 

/*레포지터리어노테이션을 따로 사용하지 않음*/
@Getter
@ToString // 세터어노테이션을 따로 사용하지않음
public class MemberVO {
    @Id
    @Column(name ="MEMBER_NUMBER")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_MEMBER") // 시퀀스임을 알려주고 연결
    private Long memberNumber;
    @Column(name ="MEMBER_ID")
    private String memberId;
    @Column(name ="MEMBER_NAME")
    private String memberName;
    @Column(name ="MEMBER_BIRTH")
    private String memberBirth;

    // 의존성 주입을 위해 생성자 직접 생성
    @Builder // 빌더 패턴
    public MemberVO(Long memberNumber, String memberId, String memberName, String memberBirth) {
        this.memberNumber = memberNumber;
        this.memberId = memberId;
        this.memberName = memberName;
        this.memberBirth = memberBirth;
    }
}
