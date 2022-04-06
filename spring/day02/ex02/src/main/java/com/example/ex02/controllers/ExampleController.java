package com.example.ex02.controllers;


import com.example.ex02.domain.ExampleVO;
import com.example.ex02.domain.TaskVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller // 스프링의 객체로 등록 (스프링컨테이너 할당)
@Slf4j
@RequestMapping("/ex/*") // 현재 클래스 내에 모든 메소드들의 기본 경로 설정 (예 : /ex/aaa, /ex/bbb 등)
public class ExampleController {
    @RequestMapping(value = "/example", method = {RequestMethod.GET, RequestMethod.POST}) // GET, POST 요청 모두 실행
    public void ex01(){
        log.info("ex01 get and post........");

    }

    @RequestMapping(value = "/ex02", method = {RequestMethod.GET, RequestMethod.POST})
    public void ex02(HttpServletRequest request){

    // 리퀘스트 객체로 요청방식을 확인할 수 있다.
        log.info("ex02" + request.getMethod().toLowerCase() + "..........");
    }


    //  생략하면 get post 모두 통신
    // 여러개 속성 작성시 value가 필요하다

    // GET, POST 상관 없이 Controller 로직을 수행한다면 method 옵션을 사용하지 않는다.
    // value 속성 한 개만 사용할 때에는 아래와 같이 값만 전달한다,

    @RequestMapping("")
    public void ex03(){
        log.info("ex03........");
    }

    // GET방식 필요할때 GetMapping 사용가능
    @GetMapping("/ex04")
    public void ex04(){
        log.info("ex04 :: only GET........");
    }

    @GetMapping("/ex05")
//    전달받은 파라미티는 자동으로 매개변수의 개체와 mapping되어 주입된다.
    // http://localhost:10002/ex/ex05?name=박민수&age=30
    // 요청한 URL과 리턴할 URL이 같다면 void로
    // 리턴 타입이 void라면 요청한 URL의 경로로 html파일을 찾게 된다
    // 원하는 경로가 있다면 경로를 String으로 리턴한다
    public void ex05(@ModelAttribute("exampleVO") ExampleVO exampleVO){
//        @ModelAttribute("KEY") 매개변수
//        매개변수에 전달된 파라미터를 화면쪽에서 KEY로 사용할 수 있게된다.

        log.info("-------------------------------");
        log.info(exampleVO.toString());
        log.info("-------------------------------");
    }

    @GetMapping("/ex06")
//    매개변수자리에 클래스타입의 매개변수가 한 개 선언되어 있다면 앞글자만 소문자로 바뀐 값을
//    화면에서 KEY로 사용할 수 있다. 이 때에는 따로  Model 객체로 사용하지 않는다.
//    매개변수 : ExampleVO
//    ghkaus : exampleVO
    public void ex06(ExampleVO exampleVO, @ModelAttribute("gender") String gender){

        log.info("-------------------------------");
        log.info(exampleVO.toString());
        log.info("gender : "+gender);
        log.info("-------------------------------");
    }

    @GetMapping("/ex07")
    public String ex07(ExampleVO exampleVO, String gender, double weight, Model model){

        log.info("-----------------------------");
        log.info(exampleVO.toString());
        log.info("gender : " + gender);
        log.info("weight : " + weight);
        log.info("-----------------------------");

        model.addAttribute("gender", gender);
        model.addAttribute("weight", weight);
        return "/ex/ex07";
    }
    // 과제
    // TaskVO 선언 도메인
    // int num, int kor, int eng, int math 선언

    //   ex/ex08 요청에 실행될 매소드 선언
    //   GET방식
    //   ex08.html 선언
    //   사용자가 전달한 점수의 총점과 평균 점수 출력

    @GetMapping("/ex08")
    public void ex08(TaskVO taskVO/*, Model model*/){
/*
    int kor =     taskVO.getKor();
    int math =     taskVO.getMath();
    int eng =     taskVO.getEng();

    int sum = kor + math + eng;
    double avg = sum / 3;
        model.addAttribute("sum", sum);
        model.addAttribute("avg", avg);
*/

    log.info("==========================");
    log.info(taskVO.toString());
/*
    log.info("taskVO : "+kor);
    log.info("영어점수 : "+eng );
    log.info("수학점수 : "+math );
    log.info("국어점수 : "+eng );
*/
    log.info("==========================");

    }



}
