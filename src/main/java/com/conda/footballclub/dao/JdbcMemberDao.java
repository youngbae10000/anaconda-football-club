package com.conda.footballclub.dao;

import com.conda.footballclub.dto.request.LoginRequestDto;
import com.conda.footballclub.dto.request.SignUpRequestDto;
import com.conda.footballclub.model.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class JdbcMemberDao implements MemberDao {

    private final JdbcTemplate jdbcTemplate;

    @Override
    public Member getMember(LoginRequestDto loginRequestDto) {
        String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
        Member member = jdbcTemplate.queryForObject(sql, new Object[]{loginRequestDto.getId(), loginRequestDto.getPassword()}, mapper);
        return member;
    }

    @Override
    public void signIn(SignUpRequestDto signUpRequestDto) {
        String sql = "insert into member (member_idx, member_userid, member_email, member_password) valeus (?, ?, ?, ?)";
        jdbcTemplate.execute(sql);
    }

    static RowMapper<Member> mapper = (rs, rowNum) -> {
        Member member = new Member();
        member.setMemberIdx(rs.getInt("member_idx"));
        member.setMemberUserid(rs.getString("member_id"));
        member.setMemberPassword(rs.getString("member_password"));
        member.setMemberEmail(rs.getString("member_email"));
        return member;
    };
}
