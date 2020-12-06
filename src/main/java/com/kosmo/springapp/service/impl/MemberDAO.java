package com.kosmo.springapp.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.springapp.service.AllergyDTO;
import com.kosmo.springapp.service.MemberDTO;
import com.kosmo.springapp.service.MemberService;

@Repository("memberDAO")
public class MemberDAO implements MemberService {
	
	@Resource(name = "template")
	private SqlSessionTemplate sqlMapper;
	
	@Override
	public int insertMember(Map map) {
		return sqlMapper.insert("insertMember",map);
	}

	@Override
	public int updateMember(Map map) {
		return 0;
	}

	@Override
	public int deleteMember(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertAllergy(Map map) {
		return sqlMapper.insert("insertAllergy",map);
	}

	@Override
	public int deleteAllergy(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO selectOneMember(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AllergyDTO> selectListAllergy(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertAuth(Map map) {
		return sqlMapper.insert("insertAuth",map);
	}

	@Override
	public int deleteAuth(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

}
