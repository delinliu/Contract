package cn.edu.sjtu.se.reins.contract.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public class Util {
	private Util() {
	}

	public static Map<String, Object> createMap(Object value) {
		Map<String, Object> map = new HashMap<>();
		map.put("success", true);
		map.put("value", value);
		return map;
	}

	public static Map<String, Object> createErrorMap(String errorMessage) {
		Map<String, Object> map = new HashMap<>();
		map.put("success", false);
		map.put("message", errorMessage);
		return map;
	}

	public static Date string2date(String s) throws ParseException {
		return DateFormat.getDateInstance().parse(s);
	}

	@SuppressWarnings("deprecation")
	public static String date2string(Date date) {
		int year = date.getYear() + 1900;
		int month = date.getMonth() + 1;
		int day = date.getDate();
		return year + "-" + (month < 10 ? "0" + month : month) + "-" + (day < 10 ? "0" + day : day);
	}

	public static String loginUsername() throws Exception {
		try {
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
			return userDetails.getUsername();
		} catch (Exception e) {
			throw new Exception("你的登录已过期，请重新登录。", e);
		}
	}

	public static Set<String> loginAuthorities() throws Exception {
		
		Set<String> set = new HashSet<>();
		try {
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
			for(GrantedAuthority authority : userDetails.getAuthorities()){
				set.add(authority.toString());
			}
			return set;
		} catch (Exception e) {
			throw new Exception("你的登录已过期，请重新登录。", e);
		}
	}
}
