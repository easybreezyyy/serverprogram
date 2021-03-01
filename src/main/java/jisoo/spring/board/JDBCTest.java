package jisoo.spring.board;

import java.util.List;

import jisoo.spring.board.impl.BoardDAO;

public class JDBCTest {
	public static void main(String[] args) {

		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.getBoardList();
		for (BoardVO brd : list)
			System.out.println("---> " + brd.toString());

	}
}
