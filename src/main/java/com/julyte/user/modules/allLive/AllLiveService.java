package com.julyte.user.modules.allLive;

import java.util.List;

public interface AllLiveService {
  
	public AllLive selectOneLogin(AllLive dto) throws Exception;
 
	public int insert(AllLive dto) throws Exception;
 
	public List<AllLive> selectListPd(AllLiveVo vo) throws Exception;

	public List<AllLive> selectListUploaded(AllLiveVo vo) throws Exception;

	public AllLive selectOne(AllLiveVo vo) throws Exception;

	public int update(AllLive dto) throws Exception;

}