package com.julyte.user.modules.allLive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AllLiveServiceImpl implements AllLiveService {

	@Autowired
	AllLiveDao dao;

	@Override
	public List<AllLive> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public int insert(AllLive dto) throws Exception {

		return dao.insert(dto);

	}

	@Override
	public AllLive selectOne(AllLiveVo vo) throws Exception {

		return dao.selectOne(vo);
	}

	@Override
	public int update(AllLive dto) throws Exception {
		return dao.update(dto);

	}

	@Override
	public int delete(AllLiveVo vo) throws Exception {
		return dao.delete(vo);

	}
}