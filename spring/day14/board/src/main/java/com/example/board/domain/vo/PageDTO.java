package com.example.board.domain.vo;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Component
@Data
@Slf4j
public class PageDTO {
    private int startPage;
    private int endPage;
    private int realEnd;
    private boolean prev, next;

    private Criteria criteria;
    private int total;
    private int pageCount;

    public PageDTO() {;}

    public PageDTO(Criteria criteria, int total) {
        this(criteria, total, 10);
    }

    public PageDTO(Criteria criteria, int total, int pageCount){
        this.criteria = criteria;
        this.total = total;
        this.pageCount = pageCount;
        this.endPage = (int)(Math.ceil(criteria.getPageNum() / 10.0)) * pageCount;
        log.info("page-------------------------------");
        log.info("endPage"+endPage);
        this.startPage = endPage - pageCount + 1;
        log.info("startPage-------------------------------");
        log.info("startPage"+startPage);
        /* realEnd 구하기 */
        this.realEnd = (int)Math.ceil(total /(double) criteria.getAmount());
        log.info("realEnd-------------------------------");
        log.info("realEnd"+realEnd);
        /* endPage와 비교 */
//        endPage = endPage > realEnd ? realEnd : endPage;

        if(this.endPage > realEnd){
            this.endPage = this.realEnd == 0 ? 1 :this.realEnd;
        }

        /* prev, next 구하기 */

        this.prev = this.startPage > 1 ;
        // 이전 버튼 생성 여부 = 시작 페이지 번호가 1과 같으면 false, 아니면 true
        this.next = this.endPage < this.realEnd;
        // 다음 버튼 생성 여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 개수가 총 게시글의 수보다
        // 크거나 같으면 false, 아니면 true



    }
}










