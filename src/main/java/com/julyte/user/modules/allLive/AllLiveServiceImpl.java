package com.julyte.user.modules.allLive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AllLiveServiceImpl implements AllLiveService {

	@Autowired
	AllLiveDao dao;

	@Override
	public AllLive selectOneLogin(AllLive dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

}