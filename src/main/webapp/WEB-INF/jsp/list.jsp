<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--引入分页查询按钮的CSS格式-->
    <link href="css/page.css" rel="stylesheet" type="text/css"/>
    <title>分页查询</title>
</head>
<body>
<center>
    <h1>分页显示</h1>
    <!-- 设置表格格式-->
    <table border="1" cellpadding="0" cellspacing="0" width="50%" align="center">
        <tr align="center">
            <th>编号</th>
            <th>姓名</th>
            <th>工资</th>
            <th>部门</th>
            <th>工资</th>
            <th>部门</th>
        </tr>
        <!--
        list是PageInfo<T>的结果集
        这必须是list切记不要写成自己的pojo类属性
        -->
        <c:forEach items="${p.list }" var="emp">
            <tr align="center">
                <td>${emp.perid }</td>
                <td>${emp.perpassword }</td>
                <td>${emp.pername }</td>
                <td>${emp.perphon }</td>
                <td>${emp.perphon }</td>
                <td>${emp.pertype }</td>
            </tr>
        </c:forEach>
    </table>


    <!-- 分页查询按钮  不要改（pageNum、pages等）这些都是插件类提供好的属性变量
    				 拿去用就改一下（/fenye）这个映射的路径 
    -->
    <form action="${pageContext.request.contextPath}/fenye" method="post">
        <ul class="pagination">
            <li><a href="${pageContext.request.contextPath}/fenye?pageNum=1">首页</a></li>
            <c:if test="${p.pageNum>1}">
                <li><a href="${pageContext.request.contextPath}/fenye?pageNum=${p.pageNum-1}">上一页</a></li>
            </c:if>
            <c:forEach begin="1" end="${p.pages}" step="1" var="pageNum">
                <li><a href="${pageContext.request.contextPath}/fenye?pageNum=${pageNum}">${pageNum}</a></li>
            </c:forEach>
            <c:if test="${p.pageNum<p.pages}">
                <li><a href="${pageContext.request.contextPath}/fenye?pageNum=${p.pageNum+1}">下一页</a></li>
            </c:if>
            <li><a href="${pageContext.request.contextPath}/fenye?pageNum=${p.pages}">末页</a></li>
            <li><a>共${p.pages }页</a></li>
            <li><a>跳到<input type="text" name="pageNum" style="width: 20px; height: 20px">页</a></li>
            <li><a><input type="submit" value="GO"/></a></li>
        </ul>
    </form>

</center>
</body>
</html>