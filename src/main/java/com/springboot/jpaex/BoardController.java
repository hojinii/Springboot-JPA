package com.springboot.jpaex;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {
	
	@Autowired
	BoardRepository brepo;

	@GetMapping("/getBoardList.do")
	public String getBoardList(Model model) {
	    List<Board> bList = brepo.findAll();
	    model.addAttribute("bList", bList);
	    return "getBoardListView";
	}
	
	@GetMapping("/insertBoard.do")
	public String insertBoardView() {		  
	    return "insertBoardView";
	}
	
	@PostMapping("/insertProcBoard.do")
	public String insertProcBoard(Board board) {
		brepo.save(board);	    
	    return "redirect:getBoardList.do";
	}
	
	@GetMapping("/getBoard.do")
	public String getBoardView(Board board, Model model) {
		System.out.println("seq : " + board.getSeq());
		
		Board bdo = brepo.findById(board.getSeq()).get();
		model.addAttribute("board", bdo);
	    return "getBoardView";
	}
		
	@GetMapping("/modifyBoard.do")
	public String modifyBoardView(Board board, Model model) {		
		Board bdo = brepo.findById(board.getSeq()).get();
		model.addAttribute("board", bdo);
	    return "getModifyView";
	}	
	
	@PostMapping("/modifyProcBoard.do")
	public String modifyProcBoard(Board board) {		
		Board bdo = brepo.save(board);		
	    return "redirect:getBoardList.do";
	}	
	
	@GetMapping("/deleteBoard.do")
	public String deleteBoard(Board board) {		
		brepo.deleteById(board.getSeq());		
	    return "redirect:getBoardList.do";
	}
	
	
	
		

}
