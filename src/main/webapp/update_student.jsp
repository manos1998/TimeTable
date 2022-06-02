<!doctype html>
<%@page import="dao.StudentOperation"%>
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
		StudentOperation st = new StudentOperation();
		Student student = st.selectStudent(id);
		if (student != null) {
	%>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<h1>Update Student Form</h1>
		<form action="UpdateStudent" method="post">
			<input name="id" type="hidden" value="<%=student.getStudentId()%>"
				id="id" />

			<div class="mb-3">
				<label for="student_FN" class="form-label"> First Name</label> <input
					name="student_FN" required="required" type="text"
					class="form-control" id="student_FN" value="<%= student.getName() %>">
			</div>
			<div class="mb-3">
				<label for="student_Add" class="form-label"> Address</label> <input
					name="student_Add" required="required" type="text"
					class="form-control" id="student_Add" value="<%= student.getAddress() %>">
			</div>
			<div class="mb-3">
				<label for="student_Con" class="form-label"> Contact Number</label>
				<input name="student_Con" required="required" type="text"
					class="form-control" id="student_Con" value="<%= student.getContact() %>">
			</div>
			<div class="mb-3">
				<label for="student_BId" class="form-label"> Batch ID</label> <input
					name="student_BId" required="required" type="text"
					class="form-control" id="student_BId" value="<%= student.getBatchId() %>">
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