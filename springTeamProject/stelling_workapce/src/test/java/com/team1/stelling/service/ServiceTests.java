package com.team1.stelling.service;

import com.team1.stelling.domain.vo.IllustImgFileVO;
import com.team1.stelling.domain.vo.IllustVO;
import com.team1.stelling.domain.vo.UserVO;
import com.team1.stelling.service.IllustImgFileService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;

@SpringBootTest
@Slf4j
public class ServiceTests {
    @Autowired
    IllustImgFileService illustImgFileService;
    @Autowired
    UserService userService;
    @Autowired
    IllustService illustService;

//    @Test
//    public void getListTest(){
//            List<IllustImgFileVO>  datas =illustImgFileService.getList();
//            datas.forEach(e -> log.info("@@@@@@@"+e.toString()));
//    }

    @Test
    public void registerTest(){


        IllustVO  illustVO = illustService.get(1L);
        log.info("@@@@@@@"+illustVO.toString());
        UserVO userVO = userService.get(1L);
        log.info("@@@@@@@"+userVO.toString());
        IllustImgFileVO illustImgFileVO = null;
        illustImgFileVO.builder().illustImgFileFileName("JPA단위테스트(1).png")
                .illustImgFileFilePath("c:/upload")
                .illustImgFileOriginFileName("JPA단위테스트.png")
                .illustImgFileUpdateDate("2022-12-24")
                .illustImgFileUploadDate("2022-12-22")
                .userVO(userVO)
                .illustVO(illustVO)
                .build();


        illustImgFileService.register(illustImgFileVO);
    }

}
