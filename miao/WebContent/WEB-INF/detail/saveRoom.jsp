﻿<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <!-- 包含公共的JSP代码片段 -->
<%@include file="/common/header.jsp"%>	
<title>添加直播间</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="modify/style/js/jquery.js"></script>
<script type="text/javascript" src="modify/style/js/page_common.js"></script>
<link href="modify/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="modify/style/css/index_1.css" />
</head>
<body>

<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			
				
				
					<img border="0" width="13" height="13" src="modify/style/images/title_arrow.gif"/> 添加新直播间
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="room/add.do" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="modify/style/images/item_point.gif"> 直播间信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
							<td width="80px">房间名</td>
							<td><input type="text" name="roomName" class="InputStyle" />
                         
                             *</td>
						</tr>
                        <tr>
							<td>url</td>
							<td><input type="text" name="url" class="InputStyle"/> </td>
						</tr>

						<tr>
							<td>联系电话</td>
							<td><input type="text" name="phone" class="InputStyle" value=""/> </td>
						</tr>
						<tr>
							<td>所属人</td>
							<td><input type="text" name="user.userName" class="InputStyle" value=""/> </td>
						</tr>

						<tr>
							<td>简介</td>
							<td><textarea name="memo" class="TextareaStyle"></textarea></td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
				
					 <input type="submit" value="添加" class="FunctionButtonInput">
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>
</div>
</body>
</html>
