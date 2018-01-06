<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UpdateServlet" method="post">
		<h2>学生信息修改</h2>
		姓名：
		<input type = "hidden" value="${stu.id}" name = "id">
		<input type="text" value="${stu.sname}" name="sname">
		<br> 生日：
		<input type="text" value="${stu.birthday}" name="birthday">
		<br> 性别：
		男<input type="radio" name="gender" <c:if test="${stu.gender== '男'}">checked="checked"</c:if>>
		女<input type="radio" name="gender" <c:if test="${stu.gender== '女'}">checked="checked"</c:if>>
		<br> 电话：
		<input type="text" value="${stu.telephone}" name="telephone">
		<br> 邮箱：
		<input type="text" value="${stu.email}" name="email">
		<br> 班级：
		<select name="classid">
			<c:forEach items="${classList}" var="classes">
				<c:if test="${stu.classid == classes.id}">
					<option selected="selected" value="${classes.id}">${classes.cname}</option>
				</c:if>
				<c:if test="${stu.classid != classes.id}">
					<option value="${classes.id}">${classes.cname}</option>
				</c:if>
			</c:forEach>
		</select>
		<br><input type = "submit">
	</form>
</body>
</html>