<!doctype html>
<%@page import="java.util.ListIterator"%>
<%@page import="bean.Classes"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClassesOperation"%>
<%@page import="org.hibernate.Session"%>
<%@page import="javax.persistence.Query"%>
<%@page import="helper.FactoryProvider"%>
<html lang="en">
<head>

<title>Add Student</title>
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
		<h1>Student Registration Form</h1>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Subject");
		%>
		<br />
		<form action="RegisterStudent" method="post">
			<div class="mb-3">
				<label for="student_FN" class="form-label"> First Name</label> <input
					name="student_FN" required="required" type="text" class="form-control"
					id="student_FN">
			</div>
			<div class="mb-3">			
				<label for="student_Add" class="form-label"> Address</label> <input
					name="student_Add" required="required" type="text" class="form-control"
					id="student_Add">
			</div>
			<div class="mb-3">
				<label for="student_Con" class="form-label"> Contact Number</label> <input
					name="student_Con" required="required" type="text" class="form-control"
					id="student_Con">
			</div>
			<div class="mb-3">
				<label for="student_BId" class="form-label"> Batch ID</label> <br>
				<%
				ClassesOperation cl = new ClassesOperation();
				List<Classes> li = cl.selectAllClasses();
				%>
			<select name="student_BId" id="student_BId" class="form-select" aria-label="Default select example">
					<option selected>Select Batch ID</option>
					<%
					if (li != null) {
						ListIterator<Classes> lit = li.listIterator();
					while (lit.hasNext()) {
						Classes classes = (Classes) lit.next();
					%>
					<option value="<%=classes.getBatchId()%>"><%=classes.getBatchId()%></option>
					<%
					}
					}
					%>
			</select><br>
			</div>
			<button type="submit" class="btn btn-primary">Add Student</button>
		</form>
	</div>

</body>
</html>