package com.team1.stelling.domain.vo;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name ="TBL_ILLUST")
@SequenceGenerator(name ="ILLUST_SEQ" , allocationSize = 1)
@Getter
@ToString(of = {"illustNumber","illustTitle","illustContent","illustUploadDate","illustUpdateDate","illustHashTag","illustViewCount","illustLike","illustShortIntro"})
@NoArgsConstructor
public class IllustVO {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ILLUST_SEQ")
    @Value("ILLUST_NUMBER")
    private Long illustNumber;

    @ManyToOne
    @JoinColumn(name = "USER_NUMBER")
    private UserVO userVO; // 유저번호   /*작가 USERNUM - FK */

    @Column(name = "ILLUST_TITLE")
    private String illustTitle; // 일러스트 제목
    @Column(name = "ILLUST_CONTENT")
    private String illustContent;  // 일러스트 내용
    @Column(name = "ILLUST_UPLOADDATE")
    private Date illustUploadDate;   /* 작성 시간*/
    @Column(name = "ILLUST_UPDATEDATE")
    private Date illustUpdateDate; // 수정시간
    @Column(name = "ILLUST_HASHTAG")
    private String illustHashTag; // 해쉬태그
    @Column(name = "ILLUST_VIEWCOUNT")
    private int illustViewCount; // 조회수
    @Column(name = "ILLUST_LIKE")
    private int illustLike; /*각 일러스트에 대한 좋아요*/
    @Column(name = "ILLUST_SHORTINTRO")
    private String illustShortIntro;/*작품에 대한 짧은 소개*/


    @Builder
    public IllustVO(Long illustNumber, UserVO userVO, String illustTitle, String illustContent, String illustUploadDate, String illustUpdateDate, String illustHashTag, int illustViewCount, int illustLike, String illustShortIntro) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        this.illustNumber = illustNumber;
        this.userVO = userVO;
        this.illustTitle = illustTitle;
        this.illustContent = illustContent;
        this.illustHashTag = illustHashTag;
        this.illustViewCount = illustViewCount;
        this.illustLike = illustLike;
        this.illustShortIntro = illustShortIntro;
        try {
            this.illustUploadDate = sdf.parse(illustUploadDate);
            this.illustUpdateDate = sdf.parse(illustUpdateDate);

        } catch (ParseException e) { e.printStackTrace();}


    }
}
