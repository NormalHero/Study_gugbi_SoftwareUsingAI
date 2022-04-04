package com.example.ex00.dependency.qualifier;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class QualifierTaskTests {

    @Autowired
    @Qualifier("outback")
    private Restaurant outback;
    @Autowired
    @Qualifier("vips")
    private  Restaurant vips;

    @Autowired
    private  Restaurant restaurant;

    @Test
    public  void qualifierTaskTests (){
        log.info("outback : " + outback.getSteak());
        log.info("vips : " + vips.getSteak());
        log.info("restaurant : " + restaurant.getSteak());
    }
}
