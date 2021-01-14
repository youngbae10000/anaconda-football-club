package com.conda.footballclub.service;

import com.conda.footballclub.dao.BoardDao;
import com.conda.footballclub.dto.request.BoardWriteRequestDto;
import com.conda.footballclub.model.Board;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class BoardService {

    private final BoardDao boardDao;

    public BoardService(BoardDao boardDao) {
        this.boardDao = boardDao;
    }

    public List<Board> getAllBoardList() {
        return boardDao.getAllBoardList();
    }

    public void boardWrite(BoardWriteRequestDto writeRequestDto) {
        Board board = new Board();
        board.setBoardTitle(writeRequestDto.getBoardTitle());
        board.setBoardContent(writeRequestDto.getBoardContent());
        board.setBoardUserId(writeRequestDto.getId());
        board.setBoardCreateDate(Timestamp.valueOf(LocalDateTime.now()));
        board.setBoardUpdateDate(Timestamp.valueOf(LocalDateTime.now()));
        boardDao.boardWrite(board);
    }

    public Board getOneBoard(String idx) {
        return boardDao.getOneBoard(idx);
    }
}
