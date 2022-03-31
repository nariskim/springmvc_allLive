package com.julyte.user.modules.allLive;

import java.util.List;

public interface AllLiveService {

	public List<AllLive> selectList() throws Exception;

	public int insert(AllLive dto) throws Exception;

	public AllLive selectOne(AllLiveVo vo) throws Exception;

	public int update(AllLive dto) throws Exception;

	public int delete(AllLiveVo vo) throws Exception;

}