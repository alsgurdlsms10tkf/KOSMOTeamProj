package com.kosmo.springapp.service;

import lombok.Data;

@Data
public class MemberDTO {
	private String email;
	private String username;
	private String password;
	private String address;
}
