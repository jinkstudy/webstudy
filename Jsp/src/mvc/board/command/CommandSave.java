package mvc.board.command;

import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;
import mvc.board.model.BoardRec;

import mvc.board.command.CommandException;

public class CommandSave implements Command {
	private String next;
	
	public CommandSave(String _next) {next = _next;};
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		try {
			BoardDao dao = BoardDao.getInstance();
			int groupId = dao.getGroupId();
			
			BoardRec rec = new BoardRec();
			rec.setWriterName(request.getParameter("writerName"));
			rec.setTitle( request.getParameter("title"));
			rec.setContent(request.getParameter("content"));
			rec.setPassword( request.getParameter("password"));
			rec.setGroupId(groupId);
			
			DecimalFormat dformat = new DecimalFormat("0000000000");
			rec.setSequenceNo( dformat.format(groupId) + "999999");
			
			rec.setArticleId(dao.insert(rec));
			request.setAttribute("param", rec );
			
		} catch (BoardException ex) {
			throw new CommandException("CommandSave.java < 저장시 > " + ex.toString() ); 
			
		}
		return next;
	}
	
}
