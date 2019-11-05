package kimyongtae.ums.config;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Configuration {
	private static SqlSession sqlSession;
	
	static{
		try{
			Reader reder = Resources.getResourceAsReader("kimyongtae/ums/config/SqlMapConfig.xml");
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reder);
			sqlSession = sqlSessionFactory.openSession(true);
			reder.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static <T>T getMapper(Class<T> arg){
		return sqlSession.getMapper(arg);
	}
}
