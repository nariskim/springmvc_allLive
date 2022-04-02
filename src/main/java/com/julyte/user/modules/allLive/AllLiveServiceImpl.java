package com.julyte.user.modules.allLive;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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

	@Override
	public int insert(AllLive dto) throws Exception {

		dao.insertPd(dto);
		dao.insertSalePd(dto);
		return 2;
	}

	@PostConstruct
	public void selectListForCache() {
		List<AllLive> codeListFromDb = (ArrayList<AllLive>) dao.selectListForCache();

		AllLive.cachedCodeArrayList.clear();
		AllLive.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList:" + AllLive.cachedCodeArrayList.size() + "chached !");
	}

	public static List<AllLive> selectListCachedCode(String oycgSeq) throws Exception {
		List<AllLive> rt = new ArrayList<AllLive>();
		for (AllLive codeRow : AllLive.cachedCodeArrayList) {
			if (codeRow.getOycgSeq().equals(oycgSeq)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}
	
	@PostConstruct
	public void selectListForCacheCate() {
		List<AllLive> cateListFromDb = (ArrayList<AllLive>) dao.selectListForCache();
		
		AllLive.cachedCodeArrayList.clear();
		AllLive.cachedCodeArrayList.addAll(cateListFromDb);
		System.out.println("cachedCodeArrayList:" + AllLive.cachedCodeArrayList.size() + "chached !");
	}
	
	public static List<AllLive> selectListCachedCate(String oyctSeq) throws Exception {
		List<AllLive> rt = new ArrayList<AllLive>();
		for (AllLive cateRow : AllLive.cachedCodeArrayList) {
			if (cateRow.getOyctSeq().equals(oyctSeq)) {
				rt.add(cateRow);
			} else {
				
			}
		}
		return rt;
	}

}