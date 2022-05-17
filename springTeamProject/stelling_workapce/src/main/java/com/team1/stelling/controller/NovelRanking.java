package com.team1.stelling.controller;

import com.team1.stelling.aspect.annotation.LogStatus;
import com.team1.stelling.domain.dto.NovelCategoryDTO;
import com.team1.stelling.domain.dto.PageableDTO;
import com.team1.stelling.service.NovelService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/novel/ranking/*")
@RequiredArgsConstructor
public class NovelRanking {
    private  final  NovelService  novelService;

    @LogStatus
    @GetMapping("novelRanking")
    public void novelRanking(Model model, @PageableDefault(page = 0, size = 10, sort = "novelViewCountTotal" ,direction = Sort.Direction.DESC) Pageable pageable){
        log.info("######:"+pageable);
        Page<NovelCategoryDTO> rankingList = novelService.getList(pageable);
        rankingList.forEach(e -> log.info("#########"+e.toString()));
        log.info("###### total:"+ rankingList.getTotalElements());
        PageableDTO pageableDTO = new PageableDTO( (int)rankingList.getTotalElements(),pageable);
        model.addAttribute("rankingList",rankingList);
        model.addAttribute( "resultTotal", rankingList.getTotalElements());
        model.addAttribute("pageableDTO",pageableDTO);

    }
}
