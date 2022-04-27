package com.julyte.user.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
//	@Resource(name = "sqlSession") 
	private SqlSession sqlSession;

	private static String namespace = "com.julyte.user.modules.member.MemberMpp";

	// paging
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
 
	// selectList
	public List<Member> selectList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	// selectListPhone
	public List<Member> selectListPhone(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectListPhone", vo);
	}

	// selectListEmail
	public List<Member> selectListEmail(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectListEmail", vo);
	}

	// Form
	public int insert(Member dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public int insertJoinQna(Member dto) {
		return sqlSession.insert(namespace + ".insertJoinQna", dto);
	}

	public int insertNation(Member dto) {
		return sqlSession.insert(namespace + ".insertNation", dto);
	}

	public int insertAddress(Member dto) {
		return sqlSession.insert(namespace + ".insertAddress", dto);
	}

	public int insertPhone(Member dto) {
		return sqlSession.insert(namespace + ".insertPhone", dto);
	}

	public int insertEmail(Member dto) {
		return sqlSession.insert(namespace + ".insertEmail", dto);
	}

	public int insertUploaded(Member dto) {
		return sqlSession.insert(namespace + ".insertUploaded", dto);
	}

	// view, edit
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}

	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}

	// update
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	public int updateJoinQna(Member dto) {
		return sqlSession.update(namespace + ".updateJoinQna", dto);
	}

	public int updateNation(Member dto) {
		return sqlSession.update(namespace + ".updateNation", dto);
	}

	public int updatePhone(Member dto) {
		return sqlSession.update(namespace + ".updatePhone", dto);
	}

	public int updateEmail(Member dto) {
		return sqlSession.update(namespace + ".updateEmail", dto);
	}

	public int updateAddress(Member dto) {
		return sqlSession.update(namespace + ".updateAddress", dto);
	}

	public int uelete(MemberVo vo) {
		return sqlSession.update(namespace + ".uelete", vo);
	}

	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}

}