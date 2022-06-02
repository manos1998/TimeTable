<!doctype html>
<html lang="en">
<head>

<title>Home</title>
<%@ include file="all_js_css.jsp"%>

</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>Instruction</h1>
		<ul>
			<li><a href="add_subject.jsp"> Please Add Subjects </a></li>
			<li><a href="add_classes.jsp">Please Add Classes</a> </li>
			<li><a href="add_student.jsp">Please Add Student</a> </li>
		</ul>
	</div>

</body>
</html>