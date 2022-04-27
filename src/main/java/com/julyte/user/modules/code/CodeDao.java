package com.julyte.user.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
 
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.julyte.user.modules.code.CodeMpp";

	public List<Code> selectListForCache() {
		List<Code> list = sqlSession.selectList(namespace + ".selectListForCache", "");
		return list;
	}

} 