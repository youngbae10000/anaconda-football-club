package com.conda.footballclub.controller;

import com.conda.footballclub.dto.request.BoardWriteRequestDto;
import com.conda.footballclub.model.Board;
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
    public String detail(Model model, String idx) {
        model.addAttribute("board", boardService.getOneBoard(idx));
        return "detail";
    }

    @GetMapping("/modify")
    public String modify(Model model, String idx) {
        model.addAttribute("board", boardService.getOneBoard(idx));
        return "modify";
    }

    @PostMapping("/update")
    public String update(Board board) {
        boardService.updateBoard(board);
        return "redirect:detail?idx="+board.getBoardIdx();
    }

    @GetMapping("/write")
    public String write() {
        return "write";
    }

    @GetMapping("/delete")
    public String delete(String idx) {
        boardService.deleteBoard(idx);
        return "redirect:dashboard";
    }

    @PostMapping("/write")
    public String boardWrite(BoardWriteRequestDto writeRequestDto) {
        boardService.boardWrite(writeRequestDto);
        return null;
    }
}
