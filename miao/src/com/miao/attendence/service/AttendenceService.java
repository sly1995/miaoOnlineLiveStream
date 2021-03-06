package com.miao.attendence.service;

import java.util.List;

import com.miao.core.service.BaseService;
import com.miao.core.utils.Page;
import com.miao.entity.User;

public interface AttendenceService extends BaseService<User> {
	public List<User> findAllStudentsByClassName(String className);
	public List findAllClassNames();
}
