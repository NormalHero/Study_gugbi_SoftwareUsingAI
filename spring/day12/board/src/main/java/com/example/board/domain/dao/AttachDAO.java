package com.example.board.domain.dao;

import com.example.board.domain.vo.AttachVO;
import com.example.board.mapper.AttachMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class AttachDAO {
    private final AttachMapper attachMapper;

    public void register(AttachVO attachVO){attachMapper.insert(attachVO);}
    public void remove(String uuid){attachMapper.delete(uuid);}
    public void selectAllBno(Long bno){attachMapper.select(bno);}

}
