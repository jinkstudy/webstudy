package mvc.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;
import mvc.board.model.BoardRec;
import mvc.board.command.CommandException;

public class CommandDelete implements Command {
	private String next;
	
	public CommandDelete(String _next ) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try{
			int article_id  = Integer.parseInt(request.getParameter("article_id"));
			String password = request.getParameter("password");
			
			int result = BoardDao.getInstance().delete(article_id, password);
		
			
			request.setAttribute("result", result);
		}catch( BoardException ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;	
		
	}
}
