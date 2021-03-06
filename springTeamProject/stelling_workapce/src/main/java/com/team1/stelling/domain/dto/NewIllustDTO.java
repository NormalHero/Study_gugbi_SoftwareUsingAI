package com.team1.stelling.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewIllustDTO {
    private String userNickName;
    private String illustImgFileFilePath;
    private String illustImgFileFileName;
}
