package com.example.board.mapper;


import com.example.board.domain.vo.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper // 마이바티스 연결 등록(xml id 매핑) 컨피그 파일에서 적절한 인터페이스를 찾는데 도움이 된다
public interface BoardMapper {

    // Persistence Tier
    // 게시글 목록
    public List<BoardVO> getList();

    // 게시글 작성
    public void insert(BoardVO boardVO);

    // 게시글 작성
    // selectKey를 통해서 전달된 결과는 boardVO 필드에 매핑된 후 주입된다.
    public void insertSelectBno(BoardVO boardVO);

    //게시글 수정
    public int update(BoardVO boardVO);

    //게시글 삭제
    public int delete(Long bno);

    //특정 게시글 가져오기
    public  BoardVO get(Long bno);

    // 전체 게시글 개수
    public  int getTotal();



}
