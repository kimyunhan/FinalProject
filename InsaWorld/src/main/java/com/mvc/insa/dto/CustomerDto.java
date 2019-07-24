package com.mvc.insa.dto;

import java.sql.Date;
import oracle.sql.CLOB;

public class CustomerDto {
	
	private String id;
	private String name;
	private String password;
	private String sex;
	private int age;
	private Date birth;
	private String user_connection;
	private CLOB avartar;
	
	public CustomerDto() {
		
	}
	
	public CustomerDto(String id, String name, String password, String sex, int age, Date birth, String user_connection, CLOB avartar) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.birth = birth;
		this.user_connection = user_connection;
		this.avartar = avartar;
	}

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public Date getBirth() {
		return birth;
	}
	
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	public String getUser_connection() {
		return user_connection;
	}
	
	public void setUser_connection(String user_connection) {
		this.user_connection = user_connection;
	}
	
	public CLOB getAvartar() {
		return avartar;
	}
	
	public void setAvartar(CLOB avartar) {
		this.avartar = avartar;
	}
	
}
