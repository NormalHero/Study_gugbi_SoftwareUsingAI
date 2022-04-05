package com.example.ex02.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class TaskVO {
    int num;
    int kor;
    int eng;
    int math;

}
