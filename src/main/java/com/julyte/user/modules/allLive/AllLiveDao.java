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

	private static String namespace = "com.mycompany.myapp.modules.allLive.AllLiveMpp";

	public List<AllLive> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
	}

	public int insert(AllLive dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public AllLive selectOne(AllLiveVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public int update(AllLive dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	public int delete(AllLiveVo vo) {
		return sqlSession.update(namespace + ".delete", vo);
	}

}