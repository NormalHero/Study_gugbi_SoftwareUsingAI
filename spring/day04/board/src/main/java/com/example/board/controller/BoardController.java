package com.example.board.controller;


import com.example.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/*





*/



@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

    private final BoardService boardService;

    @GetMapping("/list")
    public void list(Model model){
        log.info("---------------------");
        log.info("list");
        log.info("---------------------");
        model.addAttribute("list", boardService.getList());

    }



}
