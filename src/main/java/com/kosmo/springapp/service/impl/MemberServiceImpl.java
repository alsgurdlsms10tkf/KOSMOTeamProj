package com.kosmo.springapp.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.springapp.service.AllergyDTO;
import com.kosmo.springapp.service.MemberDTO;
import com.kosmo.springapp.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="memberDAO")
	private MemberDAO dao;
	@Override
	public int insertMember(Map map) {
		return dao.insertMember(map);
	}

	@Override
	public int updateMember(Map map) {
		return dao.updateMember(map);
	}

	@Override
	public int deleteMember(Map map) {
		return dao.deleteMember(map);
	}

	@Override
	public int insertAllergy(Map map) {
		return dao.insertAllergy(map);
	}

	@Override
	public int deleteAllergy(Map map) {
		return dao.deleteAllergy(map);
	}

	@Override
	public MemberDTO selectOneMember(Map map) {
		return dao.selectOneMember(map);
	}

	@Override
	public List<AllergyDTO> selectListAllergy(Map map) {
		return dao.selectListAllergy(map);
	}

	@Override
	public int insertAuth(Map map) {
		return dao.insertAuth(map);
	}

	@Override
	public int deleteAuth(Map map) {
		return dao.deleteAuth(map);
	}

}
