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
	public List<AllLive> selectList(AllLiveVo vo) throws Exception {
		return dao.selectList(vo);
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
	public void selectListForCate() {
		List<AllLive> codeListFromDb = (ArrayList<AllLive>) dao.selectListForCate();

		AllLive.cachedCateArrayList.clear();
		AllLive.cachedCateArrayList.addAll(codeListFromDb);
		System.out.println("cachedCateArrayList:" + AllLive.cachedCateArrayList.size() + "chached !");
	}

	public static List<AllLive> selectListCachedCate(String oyctDepth) throws Exception {
		List<AllLive> rt = new ArrayList<AllLive>();
		for (AllLive codeRow : AllLive.cachedCateArrayList) {
			if (codeRow.getOyctDepth().equals(oyctDepth)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}

	

}