package com.team1.stelling.service;

import com.team1.stelling.domain.repository.IllustImgFileRepository;
import com.team1.stelling.domain.vo.IllustImgFileVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class IllustImgFileService {
    private  final IllustImgFileRepository illustImgFileRepository;



    public List<IllustImgFileVO> getList(){
        return illustImgFileRepository.findAll();
    }
    public void register(IllustImgFileVO vo){

        illustImgFileRepository.save(vo);
/*        illustImgFileRepository.save(IllustImgFileVO.builder()
                .illustImgFileFileName(vo.getIllustImgFileFileName())
                .illustImgFileFilePath(vo.getIllustImgFileFilePath())
                .illustImgFileOriginFileName(vo.getIllustImgFileOriginFileName())
                .illustImgFileUpdateDate(vo.getIllustImgFileUpdateDate()+"")
                .illustImgFileUploadDate(vo.getIllustImgFileUpdateDate()+"")
                .userVO(vo.getUserVO())
                .illustVO(vo.getIllustVO())
                .build()
                );*/

    }
}
