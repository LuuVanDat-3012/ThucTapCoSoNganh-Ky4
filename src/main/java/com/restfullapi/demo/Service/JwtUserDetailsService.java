package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Role;
import com.restfullapi.demo.Entity.User;
import com.restfullapi.demo.Model.UserDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
@Transactional
public class JwtUserDetailsService implements UserDetailsService {
	@Autowired
	private UserJPA userDao;

	@Autowired
	private PasswordEncoder bcryptEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		List<GrantedAuthority> roles = new ArrayList<>();
		User user = userDao.findByUserName(username);
		if (user == null) {
			throw new UsernameNotFoundException("User not found with username: " + username);
		}
		for (Role role: user.getRoleList()){
			roles.add(new SimpleGrantedAuthority(role.getRoleName()));
		}
//		org.springframework.security.core.userdetails.User
		return 	new
				org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
				true, true, true, true, roles);
//		return userDetail;
	}
	}

