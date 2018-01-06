<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,org.lanqiao.util.PageControllor" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("tr:odd").css("background-color", "#f2f2f2");
		$("#add").click(function() {
			window.location.href = "showServlet";
		});
		$(".del").click(function() {
			//$.ajax({
			//	url:"DelstuServlet",
			//	data:{"id":$(this).parent().children().eq(0).text()},
			//	success:function(result){
			//		if(result!=0){
			//			$("#msg").remove();
			//		}
			//	}
			//})
			var id = $(this).attr("alt");
			$.get("DelstuServlet", {
				"id" : id
			}, function(result) {
				if (result == "ok") {
					alert("删除成功");
					location.reload();
				}
			}, "text")
		})
	})
</script>
</head>
<body>
	<table style="border-collapse:collapse;" border="1">
		<caption>学员信息列表</caption>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>生日</th>
			<th>电话</th>
			<th>E-mail</th>
			<th>班级</th>
			<th>操作</th>
		</tr>
		<%-- <%
			String p = request.getParameter("p");
			int pageNum = (p == null) ? 1 : Integer.parseInt(p);
			int maxPage = (Integer) request.getAttribute("maxPage");
		%> --%>
		<c:forEach items="${stuList}" var="stu">
			<tr id="msg">
				<td><a href="showServlet?id=${stu.id}">${stu.id}</a></td>
				<td>${stu.sname}</td>
				<td>${stu.gender}</td>
				<td>${stu.birthday}</td>
				<td>${stu.telephone}</td>
				<td>${stu.email}</td>
				<td>${stu.classes.cname}</td>
				<td><input type="button" class="del" value="删除" alt="${stu.id}"></td>
			</tr>
		</c:forEach>
		<%-- <tr>
			<td align="center" colspan="8"><%=PageControllor.createPageCode(pageNum, maxPage, "IndexServlet")%></td>
		</tr> --%>
	</table>
	<input type="button" value="添加" id="add">
</body>
</html>
