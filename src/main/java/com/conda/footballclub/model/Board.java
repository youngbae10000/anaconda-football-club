package com.conda.footballclub.model;


import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@NoArgsConstructor
public class Board {

    private int boardIdx;
    private String boardUserId;
    private String boardTitle;
    private String boardContent;
    private Timestamp boardCreateDate;
    private Timestamp boardUpdateDate;

    public int getBoardIdx() {
        return boardIdx;
    }

    public void setBoardIdx(int boardIdx) {
        this.boardIdx = boardIdx;
    }

    public String getBoardUserId() {
        return boardUserId;
    }

    public void setBoardUserId(String boardUserId) {
        this.boardUserId = boardUserId;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent;
    }

    public Timestamp getBoardCreateDate() {
        return boardCreateDate;
    }

    public void setBoardCreateDate(Timestamp boardCreateDate) {
        this.boardCreateDate = boardCreateDate;
    }

    public Timestamp getBoardUpdateDate() {
        return boardUpdateDate;
    }

    public void setBoardUpdateDate(Timestamp boardUpdateDate) {
        this.boardUpdateDate = boardUpdateDate;
    }
}
