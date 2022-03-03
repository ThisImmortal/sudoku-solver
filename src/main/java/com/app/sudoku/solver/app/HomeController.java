package com.app.sudoku.solver.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class HomeController {


    private SudokuSolver sudokuSolver;

    @Autowired
    public HomeController(SudokuSolver sudokuSolver){
        this.sudokuSolver = sudokuSolver;
    }

    @GetMapping()
    public String home(ModelMap modelMap){

        SudokuBoard sudokuBoard = new SudokuBoard();

        modelMap.put("sudokuBoard", sudokuBoard);
        modelMap.put("sudokuHeader", "Type known numbers and click solve. For unknown numbers keep zero.");

        return "home";
    }

    @PostMapping()
    public String solve(@ModelAttribute("sudokuBoard") SudokuBoard sudokuBoard, ModelMap modelMap){

        int[][] board = sudokuBoard.getRowsAndColumns();
        sudokuSolver.solveBoard(board);

        sudokuBoard.setRowsAndColumns(board);

        modelMap.put("sudokuBoard", sudokuBoard);
        modelMap.put("sudokuHeader", "Solved successfully!");


        return "home";
    }
}
