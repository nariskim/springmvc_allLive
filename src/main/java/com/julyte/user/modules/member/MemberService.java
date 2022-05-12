package com.julyte.user.modules.member;

import java.util.List;

public interface MemberService {

	public int selectOneCount(MemberVo vo) throws Exception;
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public List<Member> selectListPhone(MemberVo vo) throws Exception;

	public List<Member> selectListEmail(MemberVo vo) throws Exception;
	 
	public int insert(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;

	public Member selectOneLogin(Member dto) throws Exception;
	
	public Member selectOneId(Member dto) throws Exception;

	public int update(Member dto) throws Exception;
	
	public int uelete(MemberVo vo) throws Exception;
	
	public int delete(MemberVo vo) throws Exception;


	//rest
	
	public int insertRest(Member dto) throws Exception;
	public int updateRest(Member dto) throws Exception;
	
	
	
} 