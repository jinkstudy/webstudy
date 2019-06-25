package mvc.guest.command;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.guest.model.Message;
import mvc.guest.model.MessageDao;
import mvc.guest.model.MessageException;

public class CommandInput implements Command {
	private String next;

	public CommandInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CommandException {
		try{

			Message msg = new Message();
			msg.setGuestName( request.getParameter("guestName"));
			msg.setPassword(request.getParameter("password"));
			msg.setMessage( request.getParameter("message"));
			
//			MessageDao.getInstance().insert(msg);
//			
//			// 입력 후 리스트 바로 나오게 하기 위해서 mList 저장해줘야한다.
//			List <Message> mList = MessageDao.getInstance().selectList();	
//			request.setAttribute("param", mList );
			
			MessageDao dao = MessageDao.getInstance();
			List <Message> mList = dao.selectList();
			request.setAttribute("param", mList );
			
		}catch( MessageException ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
