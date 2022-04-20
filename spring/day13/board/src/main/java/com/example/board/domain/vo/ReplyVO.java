package com.example.board.domain.vo;

import lombok.Data;
import org.springframework.stereotype.Component;

// 모델객체 자료형을 래퍼클래스로 사용한다 (오토캐스팅이 안되는 문제)
//
@Component
@Data
public class ReplyVO {
    private Long rno;
    private Long bno;
    private String reply;
    private String replier;
    private String replyDate;
    private String updateDate;
}
