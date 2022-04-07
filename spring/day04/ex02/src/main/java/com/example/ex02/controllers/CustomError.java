package com.example.ex02.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
@Slf4j
public class CustomError  implements ErrorController {
    // 마커인터페이스
    // 그룹화

    @GetMapping("/error")
    public String handleError(HttpServletRequest request){
         Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        if(status != null){
            // status가 널이면 500
             int  statusCode = Integer.valueOf(status.toString());
                     // 기본 자료형을 캐스팅할때
            if(statusCode == HttpStatus.NOT_FOUND.value()){
                // 404오류만 잡기
                return "error/404";
            }

        }
         return "error/500";
    }

}