package com.julyte.user.modules.cate;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
@Service
public class CateServiceImpl implements CateService {

	@Autowired
	CateDao dao;

	@PostConstruct
	public void selectListForCache() {
		List<Cate> codeListFromDb = (ArrayList<Cate>) dao.selectListForCache();

		Cate.cachedCodeArrayList.clear();
		Cate.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList:" + Cate.cachedCodeArrayList.size() + "chached !");
	}

	public static List<Cate> selectListCachedCode(String oyctDepth) throws Exception {
		List<Cate> rt = new ArrayList<Cate>();
		for (Cate codeRow : Cate.cachedCodeArrayList) {
			if (codeRow.getOyctDepth().equals(oyctDepth)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}

}