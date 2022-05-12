package com.team1.stelling.service;

import com.team1.stelling.domain.repository.IllustRepository;
import com.team1.stelling.domain.vo.IllustVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class IllustService {
    private final IllustRepository illustRepository;

    public IllustVO get(Long illustBno){
        return illustRepository.findById(illustBno).get();
    }

}