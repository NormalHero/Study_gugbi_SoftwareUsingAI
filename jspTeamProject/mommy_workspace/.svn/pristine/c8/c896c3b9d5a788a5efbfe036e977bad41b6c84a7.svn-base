package com.mommy.app.service.dao;

import java.util.List; 
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.service.vo.ServiceVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class ServiceDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ServiceDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Service.getTotal");
		}
		
	//게시글 목록
	public List<ServiceVO> selectAll(Map<String, Integer> boardMap) {
		return sqlSession.selectList("Service.selectAll", boardMap);
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
