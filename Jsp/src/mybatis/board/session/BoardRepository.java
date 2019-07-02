package mybatis.board.session;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.TransactionIsolationLevel;

import mvc.board.model.BoardException;


public class BoardRepository {

	
	SqlSessionFactory getSqlSessionFactory() {
		InputStream inStream = null;
		try{
			
			inStream  = Resources.getResourceAsStream("mybatis-config.xml");
			
		}catch(Exception ex) {
			System.out.println("config 파일 연결 실패 :" +ex.getMessage());;
		}
		
		SqlSessionFactory sessFactory = new SqlSessionFactoryBuilder().build(inStream);
		return sessFactory;
	}
	
	public int getGroupId()
	{
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int groupId = 1;
			groupId=sess.selectOne("mapper.BoardMapper.getGroupId");
			
			return groupId;
		}finally {
			sess.close();
		}
		
	}

			
			
	
}
