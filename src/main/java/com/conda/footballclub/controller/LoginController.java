package com.conda.footballclub.controller;

import com.conda.footballclub.service.loginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    private loginService loginService;

    public LoginController(com.conda.footballclub.service.loginService loginService) {
        this.loginService = loginService;
    }

    @GetMapping("/login")
    public String login() {
        loginService.checkIdPassword();
        return "login";
    }
}
