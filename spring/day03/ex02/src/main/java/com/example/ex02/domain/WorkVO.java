package com.example.ex02.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class WorkVO {
    private String name;
    private String workTime;
    private String leaveTime;
}
