package com.conda.footballclub.service;

import com.conda.footballclub.dao.MemberDao;
import com.conda.footballclub.dto.request.LoginRequestDto;
import com.conda.footballclub.dto.request.SignUpRequestDto;
import com.conda.footballclub.model.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class loginService {

    private MemberDao memberDao;

    @Transactional(readOnly = true)
    public void loginProcess(LoginRequestDto loginRequestDto) {
        Member member = memberDao.getMember(loginRequestDto);
    }

    @Transactional
    public void signUpProcess(SignUpRequestDto signUpRequestDto) {
        if() {

        } else {
            memberDao.signIn(signUpRequestDto);
        }
    }
}
