package cn.edu.sjtu.se.reins.contract.admin;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import cn.edu.sjtu.se.reins.contract.mapper.AccountMapper;

public class MyLoginManager implements UserDetailsService {

	@Resource(name = "accountMapper")
	private AccountMapper accountMapper;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		System.out.println("User: " + username + " try to login");

		Map<String, Object> user = accountMapper.getAccount(username);
		if (user == null) {
			throw new UsernameNotFoundException("User not found or password is wrong.");
		}
		List<Map<String, Object>> roles = accountMapper.getRoles(username);
		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
		for (Map<String, Object> role : roles) {
			setAuths.add(new SimpleGrantedAuthority(String.valueOf(role.get("RoleName"))));
		}
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>(setAuths);
		String password = String.valueOf(user.get("Password"));
		return new User(username, password, true, true, true, true, authorities);
	}
}
