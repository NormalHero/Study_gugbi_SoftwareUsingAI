package com.mommy.app.user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONObject;

import com.mommy.app.user.vo.UserVO;
import com.mommy.mybatis.config.MyBatisConfig;
import com.mysql.cj.protocol.Message;



public class UserDAO {
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
   SqlSession sqlSession;
   
   public UserDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   //아이디 중복검사
      public boolean checkId(String userId) {
         return (Integer)sqlSession.selectOne("User.checkId", userId) == 1;
      }
      
      // 
      
      
      //회원가입
      public void join(UserVO user) {
         sqlSession.insert("User.join", user);
      }
      
      //로그인
      public int login(Map<String, String> loginMap) {
         int userNum = 0;
         try {userNum = sqlSession.selectOne("User.login", loginMap);} catch (Exception e) {;}
         return userNum;
      }
      
      //userStatus조회
      public int selectStatus(int userNum) {
         
         int selectStatus = -1;
         
         try {
            selectStatus = sqlSession.selectOne("User.selectStatus", userNum);
         } catch (Exception e) {;}
         
         return selectStatus;
   
      }
      
      
      //userName 조회
      public String selectName(int userNum) {
         String selectName ="";
         
         try {
            selectName = sqlSession.selectOne("User.selectName", userNum);
         } catch (Exception e) {;}
         
         return selectName;
         
      }
      
      
      //회원 정보 조회
      public UserVO getInfo(int userNum) {
         return sqlSession.selectOne("User.getInfo", userNum);
      }
      

}