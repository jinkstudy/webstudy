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
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;
	
	public CommandList(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		List<BoardRec> mList;
		try {
			int page = getTotalPage();
			request.setAttribute("page", page );
			
			String pNum = request.getParameter("page");
			System.out.println(pNum);
			if(pNum.equals("all")) 
			{
				mList = BoardDao.getInstance().selectList();
			}else {
				mList =	getArticleList(pNum);
			}
			
			
			request.setAttribute("param", mList );
			
		} catch (BoardException ex) {
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
			
		}
		return next;
	}
	
	public List <BoardRec> getArticleList(String pNum) throws BoardException
	{
		// 페이지 번호에 따른 레코드 번호 추출
				// 페이지 번호에 따른 시작레코트 번호(startRow)와 보여줄 마지막 레코드 번호 (endRow)추출
				/* 전체레코드 수가 10
				 1 페이지 : 1~3 
				 2 페이지 : 4~6
				 3 페이지 : 7~9
				 4 페이지 : 10
				 	
				*/
		
		int pageNo = 1;
		if(pNum != null) {
			pageNo =Integer.parseInt(pNum);
		}
		
		int endRow = countPerPage *pageNo;
		int startRow = endRow - (countPerPage-1);
		// 
		 List <BoardRec> mList = BoardDao.getInstance().selectList(startRow,endRow);			
		return mList;
	}
	public int getTotalPage() throws BoardException
	{
		// 
		 BoardDao dao = BoardDao.getInstance();
		 totalRecCount = dao.getTotalPage();
			if(totalRecCount%countPerPage==0) {
				pageTotalCount = totalRecCount/countPerPage;
			}else {
				pageTotalCount = totalRecCount/countPerPage +1;
			}
		 
		return pageTotalCount;
	}
		
}
