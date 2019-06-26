package mybatis.guest.session;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybatis.guest.model.Comment;

public class CommentRepository {
	String namespace = "mapper.CommentMapper"; // commentMapper에 지정해놓은 이름을 적어서 연결
	
	//return형 class - SqlSessionFactory
	SqlSessionFactory getSqlSessionFactory() {
		InputStream inStream = null;
		
		try {
			//연결담당하는 파일  mybatis-config.xml을 읽어서 연결해줘!라는 명령
			inStream = Resources.getResourceAsStream("mybatis-config.xml");
			System.out.println("연결정보 성공");
		} catch (Exception ex) {
			System.out.println("config 파일 연결 실패:" + ex.getMessage());
			
		}
		
		SqlSessionFactory sessFactory = new SqlSessionFactoryBuilder().build(inStream);
		return sessFactory;
	}
	
	//Connection 개념 -> SqlSession
	public List<Comment> selectComment(){
		// 마이바티즈가 관리하는 Connection 하나를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			//return sess.selectList(namespace+".selectComment");
			System.out.println("sql읽기 성공");
			return sess.selectList("mapper.CommentMapper.selectComment");// List얻어올때 selectList
		}finally {
			sess.close(); //Connection 마이바티즈에게 반환, 끝내는 것은 아님.
		}
	}
	//pk로 불러오기
	public Comment selectCommentByPK(long commentNo) {
		// 마이바티즈가 관리하는 Connection 하나를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			Comment c = sess.selectOne(namespace+".selectCommentByPK",commentNo); // 하나의 결과를 얻어올떄(seletOne("select문주소.ID),where절)
			return c;
		}finally {
			sess.close(); //Connection 마이바티즈에게 반환, 끝내는 것은 아님.
		}
	
	}
	
	//입력
	public void insertComment(Comment c) {
		// 마이바티즈가 관리하는 Connection 하나를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
		 int result = sess.insert(namespace+".insertComment", c) ; // c를 insert 하겠다.
		// 결과는 몇개의 행을 입력했는지 확인하는 것.
		 if(result > 0) {
			 sess.commit();
		 }else {
			 sess.rollback();
		 }
		}finally {
			sess.close(); //Connection 마이바티즈에게 반환, 끝내는 것은 아님.
		}
	
	}

	public void deleteComment(long cId) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			 int result = sess.delete(namespace+".deleteComment", cId);// c를 delete 하겠다.
			// 결과는 몇개의 행을 입력했는지 확인하는 것.
			 if(result > 0) {
				 sess.commit();
			 }else {
				 sess.rollback();
			 }
			}finally {
				sess.close(); //Connection 마이바티즈에게 반환, 끝내는 것은 아님.
			}
	}
	
	
}
