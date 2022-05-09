package com.example.jpa.domain.repository;

import com.example.jpa.domain.vo.MemberVO;
import com.example.jpa.domain.vo.ProductVO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class RepositoryTests {
    @Autowired
    private MemberRepository memberRepository;

    @Autowired
    private ProductRepository productRepository;
    @Test
    public void saveMemberTest(){
        String id ="park1234";
        String name = "박민수";
        String birth ="2002-11-12";

        // 초기화된 객체를 넘겨준다
        memberRepository.save(MemberVO.builder().memberId(id).memberName(name).memberBirth(birth).build());
    }

    @Test
    public void saveProductTests(){
        String name = "BMW";
        Long price = 60000000L;
        Long stock = 10L;

        productRepository.save(ProductVO.builder().productName(name).productPrice(price).productStock(stock).build());

    }


}
