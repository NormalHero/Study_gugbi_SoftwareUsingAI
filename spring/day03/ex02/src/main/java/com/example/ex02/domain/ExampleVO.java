package com.example.ex02.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component // 일반 모델겍체도 컴포넌트로 등록
@Data
public class ExampleVO {
    private String name;
    private int age;

}
