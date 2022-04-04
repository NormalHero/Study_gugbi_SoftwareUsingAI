package com.example.ex00.dependency;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
@Data
public class Chef {
        private Restaurant restaurant;
}
