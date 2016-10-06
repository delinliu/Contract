package cn.edu.sjtu.se.reins.contract.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AccountMapper {

	Map<String, Object> getAccount(@Param("Username") String username);

//	List<Map<String, Object>> getRoles(@Param("AccountID") long accountID);
	List<Map<String, Object>> getRoles(@Param("Username") String username);
}
