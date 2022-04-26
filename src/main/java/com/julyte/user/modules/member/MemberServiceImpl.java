package com.julyte.user.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.julyte.user.common.util.UtilDateTime;
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public List<Member> selectListPhone(MemberVo vo) throws Exception {
		return dao.selectListPhone(vo);
	}

	@Override
	public List<Member> selectListEmail(MemberVo vo) throws Exception {
		return dao.selectListEmail(vo);
	}
 
	@Override
	public int insert(Member dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());

		dao.insert(dto);
		dao.insertAddress(dto);
		dao.insertJoinQna(dto);
		dao.insertNation(dto);

//		int j = 0;
//		for (MultipartFile multipartFile : dto.getFile0()) {
//			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceImple", "");
//			UtilUpload.upload(multipartFile, pathModule, dto);
//
//			dto.setTableName("oymbUploaded");
//			dto.setType(0);
//			dto.setSort(j);
//			dto.setDefaultNy(0);
//			dto.setPseq(dto.getOymbSeq());
//
//			dao.insertUploaded(dto);
//			j++;
//
//		}

		for (int i = 0; i < dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.insertPhone(dto);
		}

		for (int i = 0; i < dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dao.insertEmail(dto);
		}

		return 2;
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public int update(Member dto) throws Exception {

		dto.setModDateTime(UtilDateTime.nowDate());

		dao.update(dto);
		dao.updateAddress(dto);
		dao.updateJoinQna(dto);
		dao.updateNation(dto);

		for (int i = 0; i < dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.updatePhone(dto);
		}

		for (int i = 0; i < dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dao.updateEmail(dto);
		}

		return 2;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int uelete(MemberVo vo) throws Exception {
		return dao.uelete(vo);

	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);

	}

}