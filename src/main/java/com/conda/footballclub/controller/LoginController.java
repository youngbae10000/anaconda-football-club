package com.conda.footballclub.controller;

import com.conda.footballclub.dto.request.LoginRequestDto;
import com.conda.footballclub.dto.request.SignUpRequestDto;
import com.conda.footballclub.service.loginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

    private loginService loginService;

    public LoginController(com.conda.footballclub.service.loginService loginService) {
        this.loginService = loginService;
    }

    @GetMapping("/")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/user/login")
    public String loginProcess(LoginRequestDto loginRequestDto) {
        loginService.loginProcess(loginRequestDto);
        return "redirect:/dashboard";
    }

    @GetMapping("/signup")
    public String signUp() {
        return "signup";
    }

    @PostMapping("/user/signup")
    public String signUpProcess(SignUpRequestDto signUpRequestDto) {
        loginService.signUpProcess(signUpRequestDto);
        return "";
    }
}
