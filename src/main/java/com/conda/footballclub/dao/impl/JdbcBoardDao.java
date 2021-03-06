package com.conda.footballclub.dao.impl;

import com.conda.footballclub.dao.BoardDao;
import com.conda.footballclub.model.Board;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public class JdbcBoardDao implements BoardDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcBoardDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Board> getAllBoardList() {
        String sql = "SELECT * FROM BOARD";
        List<Board> boards = jdbcTemplate.query(sql, mapper);
        return boards;
    }

    @Override
    public void boardWrite(Board board) {
        jdbcTemplate.update("INSERT INTO board (board_idx, board_userid, board_title, board_content, board_create_date, board_update_date) VALUES (?, ?, ?, ?, ?, ?)",
                new Object[]{null, "andy4573", board.getBoardTitle(), board.getBoardContent(), board.getBoardCreateDate(), board.getBoardUpdateDate()});
    }

    @Override
    public Board getOneBoard(String idx) {
        String sql = "SELECT * FROM BOARD WHERE board_idx = ?";
        Board board = jdbcTemplate.queryForObject(sql, new Object[]{idx}, mapper);
        return board;
    }

    @Override
    public void updateBoard(Board board) {
        jdbcTemplate.update("UPDATE board SET board_title = ?, board_content = ?, board_update_date = ? WHERE board_idx = ?",
                new Object[]{board.getBoardTitle(), board.getBoardContent(), LocalDateTime.now(), board.getBoardIdx()});
    }

    @Override
    public void deleteBoard(String idx) {
        jdbcTemplate.update("delete FROM board where board_idx = ?", idx);
    }

    static RowMapper<Board> mapper = (rs, rowNum) -> {
        Board board = new Board();
        board.setBoardIdx(rs.getInt("board_idx"));
        board.setBoardUserId(rs.getString("board_userid"));
        board.setBoardTitle(rs.getString("board_title"));
        board.setBoardContent(rs.getString("board_content"));
        board.setBoardCreateDate(rs.getTimestamp("board_create_date"));
        board.setBoardUpdateDate(rs.getTimestamp("board_update_date"));
        return board;
    };
}
