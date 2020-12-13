package com.conda.footballclub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testController {

    @GetMapping("/jsp")
    public String Hello() {
        return "main";
    }
}
