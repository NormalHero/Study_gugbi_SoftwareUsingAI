package com.example.jpa.domain.repository;


import com.example.jpa.domain.vo.MemberVO;
import org.springframework.data.jpa.repository.JpaRepository;

// 모델 객체와 동일 선상에 있어야 한다
public interface MemberRepository extends JpaRepository<MemberVO, Long> {

}
