<!doctype html>
<%@page import="java.util.ListIterator"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="bean.Subject"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="dao.SubjectOperation"%>
<%@page import="org.hibernate.Session"%>
<%@page import="javax.persistence.Query"%>
<html lang="en">
<head>

<title>Add Classes</title>
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
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Subject");
		%>
		<h1>Classes Registration Form</h1>
		<br />
		<form action="RegisterClasses" method="post">
			<div class="mb-3">
				<label for="BatchId" class="form-label"> Batch ID</label> <input
					name="BatchId" required="required" type="number" class="form-control"
					id="BatchId">
			</div>
			<div class="mb-3">
				<%
				SubjectOperation sub = new SubjectOperation();
				List<Subject> li = sub.selectAllSubject();
				%>
				
				<select name="subjectId1" id="subjectId1" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 1</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId2" id="subjectId2" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 2</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId3" id="subjectId3" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 3</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId4" id="subjectId4" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 4</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId5" id="subjectId5" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 5</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId6" id="subjectId6" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 6</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId7" id="subjectId7" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 7</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				
				<select name="subjectId8" id="subjectId8" class="form-select" aria-label="Default select example">
					<option selected>Select Subject 8</option>
					<%
					if (li != null) {
						ListIterator<Subject> lit = li.listIterator();
					while (lit.hasNext()) {
						Subject subject = (Subject) lit.next();
					%>
					<option value="<%=subject.getSubjectName()%>"><%=subject.getSubjectName()%> + <%=subject.getSubjectId()%></option>
					<%
					}
					}
					%>
				</select><br>
				<%
				s.close();
				%>

			</div>
			<button type="submit" class="btn btn-primary">Add Classes</button>
		</form>
	</div>

</body>
</html>