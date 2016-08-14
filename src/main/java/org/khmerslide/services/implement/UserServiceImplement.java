package org.khmerslide.services.implement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.khmerslide.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.khmerslide.security.*;
import org.khmerslide.entities.User;
import org.khmerslide.entities.User_Type;
public class UserServiceImplement implements UserService {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	@Override
	public User findUserByEmail(String userEmail) {
		
		System.out.println(userEmail);
		
		UserLogin login = new UserLogin();
		
		login.setEmail(userEmail);
		HttpEntity<Object> request = new HttpEntity<Object>(login,header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/user/find-user-by-email", HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUser_id((Integer)data.get("ID"));
			u.setEmail((String)data.get("EMAIL"));
			u.setUser_name((String)data.get("USERNAME"));
			u.setPassword((String) data.get("PASSWORD"));
			
			ArrayList<Role> roles = new ArrayList<Role>();
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("roles");
			for (Map<String , Object> datas  : dataRole) {
				Role role = new Role();
				role.setId((Integer)datas.get("ID"));
				role.setName((String) datas.get("NAME"));
				roles.add(role);
			}
			System.out.println(dataRole);
			u.setRole(roles);
			
			System.out.println(map);
			return u;
		}
		return null;
	}
}
