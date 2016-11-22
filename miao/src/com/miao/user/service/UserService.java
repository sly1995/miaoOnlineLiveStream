package com.miao.user.service;

import java.util.List;

import com.miao.core.service.BaseService;
import com.miao.core.utils.Page;
import com.miao.entity.User;

/**
 * 用户业务逻辑层接口
 * @author songyulong/sunlanyun/chengjufei
 *
 */
public interface UserService extends BaseService<User>{
	
	/**
	 * 用户登录
	 * @param name 用户名
	 * @param password 密码
	 * @return 用户对象
	 * @author sunlanyun
	 * 2016/11/15
	 */
	public User login(String name,String password);
	
	/**
	 * 用户注册
	 * @param user
	 * @author chengjufei
	 * 2016/11/15
	 */
	public void regist(User user);
	
	/**
	 * 用户名查询
	 * @param userName 用户名
	 * @return 查到的重复用户
	 * @author chengjufei
	 * 2016/11/15
	 */
	public List<User> findAllUsersByName(String userName);
	
	/**
	 * email查询
	 * @param email 邮箱
	 * @return 查到的重复用户
	 * @author chengjufei
	 * 2016/11/15
	 */
	public List<User> findAllUsersByEmail(String email);
	
	/**分页数据*/
	public List<User> pageList(Integer currentPage, int i);
		
	/**根据关键字搜索*/
	public List<User> doSearch(String searchName);
		
	/**封装页面*/
	public Page<User> createPage(List<?> list, Integer currentPage, int i);
}










