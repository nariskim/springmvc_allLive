package com.julyte.user.modules.allLive;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AllLiveDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.julyte.user.modules.allLive.AllLiveMpp";

	public AllLive selectOneLogin(AllLive dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}

	// selectList
	public List<AllLive> selectList(AllLiveVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public int insertPd(AllLive dto) {
		return sqlSession.insert(namespace + ".insertPd", dto);
	}

	public int insertSalePd(AllLive dto) {
		return sqlSession.insert(namespace + ".insertSalePd", dto);
	}

	public List<AllLive> selectListForCache() {
		List<AllLive> list = sqlSession.selectList(namespace + ".selectListForCache", "");
		return list;
	}

}