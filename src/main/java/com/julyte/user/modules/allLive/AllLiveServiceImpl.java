package com.julyte.user.modules.allLive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.julyte.user.common.util.UtilDateTime;
import com.julyte.user.common.util.UtilUpload;

@Service
public class AllLiveServiceImpl implements AllLiveService {

	@Autowired
	AllLiveDao dao;

	@Override
	public List<AllLive> selectListPd(AllLiveVo vo) throws Exception {
		return dao.selectListPd(vo);
	}

	@Override
	public List<AllLive> selectListUploaded(AllLiveVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}

	@Override
	public AllLive selectOneLogin(AllLive dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int insert(AllLive dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insertPd(dto);
		dao.insertSalePd(dto);

		int j = 0;
		for (MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceImple", "");
			UtilUpload.upload(multipartFile, pathModule, dto);

			dto.setTableName("oymbUploaded");
			dto.setType(0);
			dto.setSort(j);
			dto.setDefaultNy(1);
			dto.setPseq(dto.getOypdSeq());

			dao.insertUploaded(dto);
			j++;
		}

		j = 0;
		for (MultipartFile multipartFile : dto.getFile1()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceImple", "");
			UtilUpload.upload(multipartFile, pathModule, dto);

			dto.setTableName("oymbUploaded");
			dto.setType(1);
			dto.setSort(j);
			dto.setDefaultNy(0);
			dto.setPseq(dto.getOypdSeq());

			dao.insertUploaded(dto);
			j++;
		}
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

		int j = 0;
		for (MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceImple", "");
			UtilUpload.upload(multipartFile, pathModule, dto);

			dto.setTableName("oymbUploaded");
			dto.setType(0);
			dto.setSort(j);
			dto.setDefaultNy(1);
			dto.setPseq(dto.getOypdSeq());

			dao.updateUploaded(dto);
			j++;
		}
		
		j = 0;
		for (MultipartFile multipartFile : dto.getFile1()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceImple", "");
			UtilUpload.upload(multipartFile, pathModule, dto);

			dto.setTableName("oymbUploaded");
			dto.setType(1);
			dto.setSort(j);
			dto.setDefaultNy(0);
			dto.setPseq(dto.getOypdSeq());

			dao.updateUploaded(dto);
			j++;
		}
		return 2;
	}

}