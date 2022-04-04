package com.example.ex00.dependency.qualifier;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
@Qualifier("desktop")  @Primary// Computer 타입에서 중복 x , @Primary -> default로 설정
public class DeskTop implements Computer {
    @Override
    public int getScreenWidth() {
        return 1920;
    }
}
