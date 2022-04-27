package com.julyte.user.modules.cate;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
@Repository
public class CateDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
 
	private static String namespace = "com.julyte.user.modules.cate.CateMpp";

	public List<Cate> selectListForCache() {
		List<Cate> list = sqlSession.selectList(namespace + ".selectListForCache", "");
		return list;
	}

}