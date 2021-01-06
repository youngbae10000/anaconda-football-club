package com.conda.footballclub.model;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Board {

    private int boardIdx;
    private String boardUserId;
    private String boardTitle;
    private String boardContent;
    private String boardCreatDate;
    private String boardUpdateDate;
}
