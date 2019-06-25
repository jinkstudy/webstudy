package mvc.board.command;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;
import mvc.board.model.BoardRec;
import mvc.board.command.CommandException;

public class CommandList implements Command{
	private String next;
//	private int totalRecCount;		// 전체 레코드 수	
//	private int pageTotalCount;		// 전체 페이지 수
//	private int countPerPage = 3;
	
	public CommandList(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		List<BoardRec> mList;
		try {
			
			mList = BoardDao.getInstance().selectList();
			request.setAttribute("param", mList );
		} catch (BoardException ex) {
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
			
		}
		return next;
	}
		
}
