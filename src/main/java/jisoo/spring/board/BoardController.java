package jisoo.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jisoo.spring.board.impl.BoardDAO;

@Controller
public class BoardController {
	
	@RequestMapping(value="/getBoardList.do")
	public String getBoardList(BoardDAO boardDAO,Model model) {
		System.out.println("컨트롤러 정상작동!");
		model.addAttribute("list", boardDAO.getBoardList());
		return "getBoardList.jsp";
	}
	
	@RequestMapping(value="/getBoard.do")
	public String getBoard(BoardVO vo,BoardDAO boardDAO) {
		System.out.println("컨트롤러 정상작동!");
		boardDAO.getBoard(vo);
		return "getBoard.jsp";
	}
}
