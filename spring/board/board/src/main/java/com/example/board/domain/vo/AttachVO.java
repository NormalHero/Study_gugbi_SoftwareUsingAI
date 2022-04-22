package com.example.board.domain.vo;

import lombok.Data;
import lombok.NonNull;
import org.springframework.stereotype.Component;

@Component
@Data
public class AttachVO {
    private Long num; // 문자열 자동변환시 클래스 타입이 아니면 오류
    private String fileName;
    private String uploadPath;
    private String uuid;
    private boolean image;
    private Long bno;


}


