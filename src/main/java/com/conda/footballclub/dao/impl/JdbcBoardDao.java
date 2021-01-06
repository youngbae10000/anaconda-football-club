package com.conda.footballclub.dao.impl;

import com.conda.footballclub.dao.BoardDao;
import com.conda.footballclub.model.Board;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class JdbcBoardDao implements BoardDao {

    private final JdbcTemplate jdbcTemplate;

    @Override
    public List<Board> getAllBoardList() {
        String sql = "SELECT * FROM BOARD";
        List<Board> boards = jdbcTemplate.query(sql, mapper);
        return boards;
    }

    static RowMapper<Board> mapper = (rs, rowNum) -> {
        Board board = new Board();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        board.setBoardIdx(rs.getInt("board_idx"));
        board.setBoardUserId(rs.getString("board_userid"));
        board.setBoardTitle(rs.getString("board_title"));
        board.setBoardContent(rs.getString("board_content"));
        board.setBoardCreatDate(format.format(rs.getDate("board_createDate")));
        board.setBoardUpdateDate(format.format(rs.getDate("board_updateDate")));
        return board;
    };
}
