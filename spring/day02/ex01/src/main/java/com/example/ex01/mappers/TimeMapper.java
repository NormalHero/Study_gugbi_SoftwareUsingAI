package com.example.ex01.mappers;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

@Service
// 스프링 컨테이너에 빈 등록
// 컴포넌트와 목적이 다르기 때문에 스프링 컨테이너에 알려줌
@Mapper // 마이바티스 연결 등록(xml id 매핑) 컨피그 파일에서 적절한 인터페이스를 찾는데 도움이 된다
public interface TimeMapper {
//    SQL이 복잡하거나 길어지는 경우에는 어노테이션보다는 XML을 이용하는 방식을 더 선호하게 된다.
//    MyBatis-Spring의 경우 Mapper 인터테이스와 XMl을 동시에 이용할 수 있다.
//    @Select("SELECT SYSDATE FROM DUAL")
    public String getTime();


}
