<!doctype html>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="dao.SubjectOperation"%>
<%@page import="bean.Subject"%>
<%@page import="bean.Student"%>
<html lang="en">
<head>
<title>Update Student</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<%
	if (request.getParameter("id") != null) {
		long id = Long.parseLong(request.getParameter("id"));
		SubjectOperation sub = new SubjectOperation();
		Subject subject = sub.selectSubject(id);
		if (subject != null) {
	%>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<h1>Update Subject Form</h1>
		<form action="UpdateSubject" method="post">
			<input name="id" type="hidden" value="<%=subject.getSubjectId()%>"
				id="id" />
			<div class="mb-3">
				<label for="subject_Name" class="form-label"> Subject Name</label> <input
					name="subject_Name" required="required" type="text"
					class="form-control" id="subject_Name"
					value=" <%=subject.getSubjectName()%>">
			</div>
			<div class="mb-3">
				<label for="teacher_Name" class="form-label"> Teacher Name</label> <input
					name="teacher_Name" required="required" type="text"
					class="form-control" id="teacher_Name"
					value="<%=subject.getTeacherName()%>">
			</div>
			<button type="submit" class="btn btn-primary">Update Student</button>
		</form>
	</div>
	<%
	}
	} else {
		out.print("Select any record cause ID is null");
	}
	%>
</body>
</html>