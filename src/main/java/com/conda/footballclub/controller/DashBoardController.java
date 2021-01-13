package com.conda.footballclub.controller;

import com.conda.footballclub.dto.request.BoardWriteRequestDto;
import com.conda.footballclub.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DashBoardController {

    private final BoardService boardService;

    public DashBoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("boardList", boardService.getAllBoardList());
        return "dashboard";
    }

    @GetMapping("/detail")
    public String detail() {
        return "detail";
    }

    @GetMapping("/update")
    public String update() {
        return "update";
    }

    @GetMapping("/write")
    public String write() {
        return "write";
    }

    @PostMapping("/write")
    public String boardWrite(BoardWriteRequestDto writeRequestDto) {
        boardService.boardWrite(writeRequestDto);
        return null;
    }
}
