package mybatis.guest.service;

import java.util.List;

import mybatis.guest.model.Comment;
import mybatis.guest.session.CommentRepository;

public class CommentService {
	private static CommentService service;
	
	private CommentService() {
		
	}
	
	public static CommentService getInstance() {
		if(service == null) service = new CommentService();
		return service;
	}
	
	CommentRepository repo = new CommentRepository();
	//전체 검색
	public List<Comment> selectComment(){
		return repo.selectComment();
	}
	//PK검색
	public Comment selectCommentByPrimaryKey(long cId){
		
		return repo.selectCommentByPK(cId);
	}
	//입력
	public void insertComment(Comment c){
		repo.insertComment(c);
	
	}
	public void deleteComment(long cId){
		repo.deleteComment(cId);
	
	}
	
	
}
