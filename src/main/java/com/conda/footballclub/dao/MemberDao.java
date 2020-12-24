package com.conda.footballclub.dao;

import com.conda.footballclub.dto.request.LoginRequestDto;
import com.conda.footballclub.dto.request.SignUpRequestDto;
import com.conda.footballclub.model.Member;

public interface MemberDao {
    Member getMember(LoginRequestDto loginRequestDto);

    void signIn(SignUpRequestDto signUpRequestDto);
}
