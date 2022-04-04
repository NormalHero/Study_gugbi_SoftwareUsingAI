package com.example.ex00;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class}) // JDBC 설정을 제외
public class Ex00Application {

    public static void main(String[] args) {
        SpringApplication.run(Ex00Application.class, args);
    }

}
