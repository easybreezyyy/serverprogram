package jisoo.spring.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/getBoardList.do")
	public String getBoardList(Model model) {
		System.out.println("컨트롤러 정상작동!");
		model.addAttribute("list", boardService.getBoardList());
		return "getBoardList.jsp";
	}
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) {
		System.out.println("컨트롤러 정상작동!");
		boardService.insertBoard(vo);
		return "getBoardList.do";
	}
	
	@RequestMapping(value="/getBoard.do")
	public String getBoard(BoardVO vo,Model model) {
		System.out.println("컨트롤러 정상작동!");
		model.addAttribute("board", boardService.getBoard(vo));
		return "getBoard.jsp";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		System.out.println("컨트롤러 정상작동!");
		boardService.deleteBoard(vo);
		return "getBoardList.do";
	}
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO vo) {
		System.out.println("컨트롤러 정상작동!");
		boardService.updateBoard(vo);
		return "getBoardList.do";
	}
	
}
