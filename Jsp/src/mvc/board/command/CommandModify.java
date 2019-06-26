package mvc.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;
import mvc.board.model.BoardRec;
import mvc.board.command.CommandException;

public class CommandModify implements Command {
	
private String next;
	
	public CommandModify(String _next )  {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try{
			
			//form에서 넘어오 data 저장
			BoardRec rec = new BoardRec();
			System.out.println(Integer.parseInt(request.getParameter("articleId")));
			rec.setArticleId(Integer.parseInt(request.getParameter("articleId")));
			//rec.setWriterName(request.getParameter("writerName"));
			rec.setTitle( request.getParameter("title"));
			rec.setContent(request.getParameter("content"));
			rec.setPassword(request.getParameter("password"));
			System.out.println(rec);
			int result = BoardDao.getInstance().update(rec);
		
			request.setAttribute("result", result);
			request.setAttribute("param", rec);
		}catch( BoardException ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;	
		
	}
	
	
}
