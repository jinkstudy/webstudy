package mvc.board.command;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;
import mvc.board.model.BoardRec;
import mvc.board.command.CommandException;


public class CommandView implements Command {
	private String next;
	

	public CommandView( String _next ){
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException{
		try{
			String id =request.getParameter("article_id");
			int article_id = 0;
			if( id != null ) article_id = Integer.parseInt(id);
		   BoardRec rec = BoardDao.getInstance().selectById(article_id);	
		    request.setAttribute("param", rec );

		}catch( BoardException ex ){
			throw new CommandException("CommandView.java < 게시글보기시 > " + ex.toString() ); 
		}
		
		return next;
	}

		
}

