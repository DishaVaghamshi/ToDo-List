package com.todo.web.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService 
{
	public Boolean validateUser(String userid, String password)
	{
		return userid.equalsIgnoreCase("disha") 
				&& password.equals("disha");
	}

}
