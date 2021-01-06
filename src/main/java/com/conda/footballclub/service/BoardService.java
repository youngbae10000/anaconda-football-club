package com.conda.footballclub.service;

import com.conda.footballclub.dao.BoardDao;
import com.conda.footballclub.model.Board;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardService {

    private final BoardDao boardDao;

    public List<Board> getAllBoardList() {
        return boardDao.getAllBoardList();
    }
}
