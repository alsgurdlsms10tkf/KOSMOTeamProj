package com.kosmo.springapp.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	int insertMember(Map map);
	int insertAuth(Map map);
	int updateMember(Map map);
	int deleteMember(Map map);
	int deleteAuth(Map map);
	int insertAllergy(Map map);
	int deleteAllergy(Map map);
	MemberDTO selectOneMember(Map map);
	List<AllergyDTO> selectListAllergy(Map map);
}
