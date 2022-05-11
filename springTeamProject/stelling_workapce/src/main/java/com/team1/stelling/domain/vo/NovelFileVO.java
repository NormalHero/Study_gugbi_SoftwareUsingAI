package com.team1.stelling.domain.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name ="TBL_NOVELFILE")
@SequenceGenerator(name ="NOVELFILE_SEQ" , allocationSize = 1)
@Getter
@ToString(of = {"novelFileNumber","novelFilePath","novelOriginalFileName","novelFileName","novelUploadUpdate"})
@NoArgsConstructor
public class NovelFileVO {


   @Id
   @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "NOVELFILE_SEQ")
   @Value("NOVELFILE_NUMBER")
   private Long novelFileNumber; //*파일번호, 소설원고*//*

   @ManyToOne
   @JoinColumn(name = "SUBNOVEL_NUMBER")
   private SubNovelVO subNovelVO; //* FK *//*
   @ManyToOne
   @JoinColumn(name = "USER_NUMBER")
   private UserVO userVO;

   @Column(name = "NOVELFILE_FILEPATH")
   private String novelFileFilePath;
   @Column(name ="NOVELFILE_ORIGINFILENAME")
   private String novelFileOriginalFileName;
   @Column(name ="NOVELFILE_FILENAME")
   private String novelFileFileName;
   @Column(name = "NOVELFILE_UPDATEDATE")
   private Date novelFileUploadUpdate;


    public NovelFileVO(Long novelFileNumber, SubNovelVO subNovelVO, UserVO userVO, String novelFileFilePath, String novelFileOriginalFileName, String novelFileFileName, Date novelFileUploadUpdate) {
        this.novelFileNumber = novelFileNumber;
        this.subNovelVO = subNovelVO;
        this.userVO = userVO;
        this.novelFileFilePath = novelFileFilePath;
        this.novelFileOriginalFileName = novelFileOriginalFileName;
        this.novelFileFileName = novelFileFileName;
        this.novelFileUploadUpdate = novelFileUploadUpdate;
    }
}
