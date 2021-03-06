package com.example.ex00.dependency;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j // 로그 출력 라이브러리
public class DependencyTests {

    @Autowired
    private Coding coding;

    @Test // 테스트용
    public void checkDI(){
        log.info("------------------");
        log.info("coding "+coding);
        log.info("computer "+coding.getComputer());
        log.info("------------------");
    }
 // ctrl + shift+ F10 현재 보고있는 파일 실행
}
