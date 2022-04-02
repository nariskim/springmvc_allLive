package com.julyte.user.modules.allLive;

public interface AllLiveService {

	public AllLive selectOneLogin(AllLive dto) throws Exception;

	public int insert(AllLive dto) throws Exception;
}