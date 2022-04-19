package com.example.board.dao;

import com.example.board.domain.dao.ReplyDAO;
import com.example.board.domain.vo.Criteria;
import com.example.board.domain.vo.ReplyVO;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.stream.IntStream;

@SpringBootTest
@Slf4j
public class ReplyDAOTests {

    // 세터로 의존성 주인
    @Setter(onMethod_ = @Autowired)
    private ReplyDAO dao;

    private Long[] arBno = {16001L, 16002L, 16003L, 16004L, 16005L};

//    @Test
//    public void testGetTotal(){
//        log.info("------------------------------------------------------");
//        log.info(String.valueOf(dao.getTotal(16001L)));
//        log.info("------------------------------------------------------");
//    }

//    @Test
//    public void testGetList(){
//        log.info("------------------------------------------------------");
//        dao.getList(16001L, new Criteria(1, 10)).stream().map(v -> v.toString()).forEach(log::info);
//        log.info("------------------------------------------------------");
//    }

//    @Test
//    public void testUpdate(){
//        ReplyVO replyVO = new ReplyVO();
//        replyVO.setRno(4L);
//        replyVO.setReply("수정된 댓글(DAO)");
//
//        if(dao.read(replyVO.getRno()) != null) {
//            log.info("------------------------------------------------------");
//            log.info("UPDATE COUNT : " + dao.modify(replyVO));
//            log.info("------------------------------------------------------");
//            return;
//        }
//        log.info("There is no reply to update");
//    }

//    @Test
//    public void testRemove(){
//        if(dao.read(12L) != null) {
//            log.info("------------------------------------------------------");
//            log.info("DELETE COUNT : " + dao.remove(12L));
//            log.info("------------------------------------------------------");
//            return;
//        }
//        log.info("There is no reply to delete");
//    }

//    @Test
//    public void testRead(){
//        log.info("------------------------------------------------------");
//        log.info(dao.read(5L).toString());
//        log.info("------------------------------------------------------");
//    }

//    @Test
//    //단위 테스트에서는 5개의 게시글에 2개씩 댓글 등록 (람다식)
//    public void testInsert(){
//        IntStream.rangeClosed(1, 10).forEach(i -> {
//            ReplyVO replyVO = new ReplyVO();
//            replyVO.setBno(arBno[i % 5]);
//            replyVO.setReply("댓글 테스트" + i);
//            replyVO.setReplier("replier" + i);
//
//            dao.register(replyVO);
//        });
//    }

//    @Test
//    public void testdao(){
//        log.info("------------------------------------------------------");
//        log.info("dao : " + dao.toString());
//        log.info("------------------------------------------------------");
//    }

}