package com.example.ex02.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class ItemVO {
    private int damage;
    private int chance;
}
