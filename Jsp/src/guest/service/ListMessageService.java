package guest.service;

import guest.model.Message;
import guest.model.MessageDao;
import guest.model.MessageException;

import java.util.ArrayList;
import java.util.List;

public class ListMessageService {

	//-------------------------------------------------------------------
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수
	
	private static ListMessageService instance;
	
	public static ListMessageService	getInstance() throws MessageException
	{
		if( instance == null )
		{
			instance = new ListMessageService();
		}
		return instance;
	}
	
	private ListMessageService()
	{
		
	}
	
	public List <Message> getMessageList() throws MessageException
	{
		// 전체 레코드를 검색해 온다면
		//List <Message> mList = MessageDao.getInstance().selectList();			
		MessageDao dao =MessageDao.getInstance();
		
		List<Message> mList =dao.selectList();
		
		return mList;
	}
	//오버로딩
	public List <Message> getMessageList(String pNum) throws MessageException
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
		int startRow = endRow -(countPerPage-1);
		
		// 전체 레코드를 검색해 온다면
		//List <Message> mList = MessageDao.getInstance().selectList();			
		MessageDao dao =MessageDao.getInstance();
		
		List<Message> mList =dao.selectList(startRow,endRow);
		
		return mList;
	}
	
	
	public int getTotalPage() throws MessageException{
		MessageDao dao =MessageDao.getInstance();
		//전체 레코드 수를 얻어옴.
				totalRecCount = dao.getTotalCount();
				
				//전체 페이지수를 구함
				/* 레코드 수 	페이지수
				 * 	 9		  3
				 * 	10			4
				 * 
				 */
				if(totalRecCount%countPerPage==0) {
					pageTotalCount = totalRecCount/countPerPage;
				}else {
					pageTotalCount = totalRecCount/countPerPage +1;
				}
		//System.out.println(pageTotalCount);
		return pageTotalCount;
	}
	
	
}
