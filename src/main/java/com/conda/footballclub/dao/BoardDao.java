package com.conda.footballclub.dao;

import com.conda.footballclub.model.Board;

import java.util.List;

public interface BoardDao {
    List<Board> getAllBoardList();

    void boardWrite(Board board);

    Board getOneBoard(String idx);
}
