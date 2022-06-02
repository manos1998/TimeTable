<!doctype html>
<html lang="en">
<head>

<title>Add Subject</title>
<%@ include file="/all_js_css.jsp"%>

</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container">
		<%@ include file="/navbar.jsp"%>
		<h1>Add Subject Form</h1>
		<br />
		<form action="RegisterSubject" method="post">
			<div class="mb-3">
				<label for="subject_Name" class="form-label"> Subject Name</label> <input
					name="subject_Name" required="required" type="text"
					class="form-control" id="subject_Name">
			</div>
			<div class="mb-3">
				<label for="teacher_Name" class="form-label"> Teacher Name</label> <input
					name="teacher_Name" required="required" type="text"
					class="form-control" id="teacher_Name">
			</div>
			<button type="submit" class="btn btn-primary">Add Student</button>
		</form>
	</div>
</body>
</html>