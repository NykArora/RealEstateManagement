package org.util;

import java.security.SecureRandom;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordHasher extends BCryptPasswordEncoder {
	 private  int strength;
	 private SecureRandom random;

	    public String encode(CharSequence rawPassword) {
	        String salt;
	       // salt = BCrypt.gensalt();
	        salt="$2a$10$z1cupXiguV31eWih8vZY4u";
	        return BCrypt.hashpw(rawPassword.toString(), salt);
	    }
	    
	   

}
