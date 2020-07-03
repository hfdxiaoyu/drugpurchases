<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>密码</th>
                            <th>名字</th>
                            <th>电话</th>
                            <th>地址</th>
                            
                        </tr>
                        </thead>
                        <tbody>
                        
                            <tr>
                                <td align="center">${person1.perid }</td>
                                <td align="center">${person1.perpassword }</td>
                                <td align="center">${person1.pername }</td>
                                <td align="center">${person1.perphon }</td>
                                <td align="center">${person1.peraddr}</td>
                                
                              <td align="center">
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                     data-target="#editDialog" onclick="edit(${row.id})">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs"
                                       onclick="deleteEmployee(${row.id})">删除</a>
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
</body>
</html>