package org.khmerslide.services;

import org.khmerslide.entities.User;

public interface UserService {

	
	
	User findUserByEmail(String userEmail);
	
	
}
