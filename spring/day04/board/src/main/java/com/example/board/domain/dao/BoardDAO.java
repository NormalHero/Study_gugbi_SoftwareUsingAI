package com.example.board.domain.dao;

import com.example.board.domain.vo.BoardVO;
import com.example.board.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class BoardDAO {
    private final BoardMapper boardMapper;
    // DAO 까지가 Persistence
    public List<BoardVO> getList() {return boardMapper.getList();}
    public void register(BoardVO boardVO) {boardMapper.insertSelectBno(boardVO);}
    public boolean modify(BoardVO boardVO) {return boardMapper.update(boardVO) == 1;}
    public boolean remove(Long bno) {return boardMapper.delete(bno) == 1;}
    public BoardVO get(Long bno) {return boardMapper.get(bno);}
    public int getTotal() {return boardMapper.getTotal();}
}