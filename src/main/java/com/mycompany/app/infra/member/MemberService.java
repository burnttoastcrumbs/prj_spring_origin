package com.mycompany.app.infra.code.member;

import java.util.List;

public interface MemberService {

	public List<Member> selectList(MemberVo vo);
	public Member selectOne(MemberVo vo);
	
	public int update(Member dto);
	
	public int delete(Member dto);
	
	public int insert(Member dto);
	
	public int uelete(Member dto);

}