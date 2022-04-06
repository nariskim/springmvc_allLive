package com.julyte.user.modules.allLive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AllLiveServiceImpl implements AllLiveService {

	@Autowired
	AllLiveDao dao;

	@Override
	public List<AllLive> selectListPd(AllLiveVo vo) throws Exception {
		return dao.selectListPd(vo);
	}

	@Override
	public AllLive selectOneLogin(AllLive dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int insert(AllLive dto) throws Exception {

		dao.insertPd(dto);
		dao.insertSalePd(dto);
		return 2;
	}

	@Override
	public AllLive selectOne(AllLiveVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(AllLive dto) throws Exception {

		dao.updatePd(dto);
		dao.updateSalePd(dto);
		return 2;
	}

}