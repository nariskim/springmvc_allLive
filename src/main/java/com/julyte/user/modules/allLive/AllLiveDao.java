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

	public AllLive selectOne(AllLiveVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public List<AllLive> selectListPd(AllLiveVo vo) {
		return sqlSession.selectList(namespace + ".selectListPd", vo);
	}

	public int insertPd(AllLive dto) {
		return sqlSession.insert(namespace + ".insertPd", dto);
	}

	public int insertSalePd(AllLive dto) {
		return sqlSession.insert(namespace + ".insertSalePd", dto);
	}

	public int updatePd(AllLive dto) {
		return sqlSession.update(namespace + ".updatePd", dto);
	}

	public int updateSalePd(AllLive dto) {
		return sqlSession.update(namespace + ".updateSalePd", dto);
	}

}