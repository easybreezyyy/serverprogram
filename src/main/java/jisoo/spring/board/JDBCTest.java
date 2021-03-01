package jisoo.spring.board;

import java.util.List;

import jisoo.spring.board.impl.BoardDAO;

public class JDBCTest {
	public static void main(String[] args) {

		BoardDAO dao = new BoardDAO();
		
		BoardVO vo = new BoardVO();
		vo.setTitle("테스트");
		vo.setWriter("테스터1");
		vo.setContent("어쩌라고...");
		dao.insertBoard(vo);
		
		List<BoardVO> list = dao.getBoardList();
		for (BoardVO brd : list)
			System.out.println("---> " + brd.toString());

	}
}
