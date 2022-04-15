package com.example.board.mapper;

import com.example.board.domain.vo.BoardVO;
import com.example.board.domain.vo.Criteria;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class BoardMapperTests {

    @Autowired
    private  BoardMapper boardMapper;

    @Test
    public void testGetList(){
        boardMapper.getList(new Criteria(1,10,"TW","04")).forEach(board ->log.info(board.toString()));
    }
    @Test
    public void insert(){

        BoardVO boardVO = new BoardVO();
        boardVO.setContent("테스트 제목2");
        boardVO.setTitle("테스트 내용2");
        boardVO.setWriter("테스트작성자");
        boardMapper.insert(boardVO);
    }

    @Test
    public void testInsertSelectBno(){

        BoardVO boardVO = new BoardVO();
        boardVO.setContent("testInsertSelectBno 테스트");
        boardVO.setTitle("testInsertSelectBno ");
        boardVO.setWriter("작성자");
        boardMapper.insertSelectBno(boardVO);

        log.info("-----------------------------------------------");
        log.info(boardVO.toString().toString());
        log.info("-----------------------------------------------");
    }

    @Test
    public void testUpdate(){
        int result = 0;

        BoardVO boardVO = new BoardVO();
        boardVO.setContent("내용수정 완료");
        boardVO.setTitle("내용수정 완료2");
        boardVO.setBno(3L);
        result = boardMapper.update(boardVO);
        log.info("UPDATE COUNT : " + result);
    }

    @Test
    public void testDelete(){
        int result = 0;
        result =  boardMapper.delete(5L);
        log.info("Delete COUNT : " + result);
    }

    @Test
    public  void testGet(){
        int result = 0;
        log.info(boardMapper.get(3L).toString());
        log.info("Get COUNT : " + result);
    }
    @Test
    public  void testGetTotal(){

        log.info("전체 글의 개수"+boardMapper.getTotal(new Criteria(1,10,"T","동적쿼리")));
//        log.info(String.valueOf(boardMapper.getTotal()));

    }


}
