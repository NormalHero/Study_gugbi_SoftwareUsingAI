package com.example.board.domain.vo;


import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class BoardVO {
   private Long bno; // 회사에선 넉넉하게 사용한다.
    private String title;
    private String content;
    private String writer;
    private String regdate;
    private String updateDate;

}
